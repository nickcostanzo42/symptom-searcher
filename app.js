//Opening port 4269
const PORT = process.env.PORT || 4269;

//require express
const express = require('express');
const app = express();
// app.use: { post_max_size: [bytes] }

//require mustache
const mustache = require('mustache-express');
//configure mustache
app.engine('html',mustache());
app.set('view engine','html');
app.set('views',__dirname+'/public/views');
app.use(express.static(__dirname+"/public"));

//bodyparser
const bodyParser = require("body-parser");
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

//session
const session = require('express-session');
app.use(session({
  secret: 'theTruthIsOutThere51',
  resave: false,
  saveUninitialized: true,
  cookie: { secure: false }
}))

//bcrypt
const bcrypt = require('bcrypt');

//Fetch
var fetch = require("node-fetch");

//Request
const request = require('request-promise');


//require pg-promise and set up database
const pgp = require("pg-promise")();
var db = pgp(process.env.DATABASE_URL || 'postgres://nicholascostanzo@localhost:5432/p2db');

//Port test
app.listen(PORT, function(){
  console.log('App listening on: ' + PORT);
})

//Test for OES database
app.get('/user', function(req,res){
  res.render('index')
})

//Login is home page
app.get('/', function(req,res){
  var logged_in;
  var email;

  if(req.session.user){
    logged_in = true;
    email = req.session.user.email;
  }

  var data = {
    "logged_in": logged_in,
    "email": email
  }

  res.render('login', data);
})

//Signup page load
app.get('/signup', function(req,res){
  res.render('./signup/index')
})

//save to user profile
app.post('/save', function(req, res){
   var user_id = req.session.user.id;
   var name = req.body.name;
   var phone = req.body.phone;
   var text = 'Insert note here';
   console.log(req.body.name);
   db.none("INSERT INTO savedDoctors(name, userId, phone, note) values($1, $2, $3, $4)", [name, user_id,phone,text])
  .then(function(data){
    console.log('saved');
  })
});

//delete from user profile
app.delete('/remove', function(req,res){
  var user_id = req.session.user.id;
  var name = req.body.name;
  db.none("DELETE FROM savedDoctors WHERE (name = $1 AND userId = $2)",[name, user_id])
  .then(function(){
    console.log('deleted')
  })
})

//Signup functionality
app.post('/signup', function(req, res){
  var data = req.body;

  bcrypt.hash(data.password, 10, function(err, hash){
    db.none(
      "INSERT INTO users (email, password_digest) VALUES ($1, $2)",
      [data.email, hash]
    ).catch(function(){
      res.send('nope')
    })
    .then(function(){
      res.redirect('/');
    })
  });
})

//login functionality
app.post('/login', function(req, res){
  var data = req.body;

  db.one(
    "SELECT * FROM users WHERE email = $1",
    [data.email]
  ).catch(function(){
    res.send('Email/Password not found.')
  }).then(function(user){
    bcrypt.compare(data.password, user.password_digest, function(err, cmp){
      if(cmp){
        req.session.user = user;
        res.redirect('/user');
      } else {
        res.send('Email/Password not found.')
      }
    });
  });
});

//logout
app.get('/logout', function(req, res){
  req.session.user = null;
  res.redirect('/')
})



//for symptom search
app.get('/search/:symptom', function(req, res){
  console.log(req.params);
  var symptoms = req.params.symptom; // connecting to the :symptom
  //options variable
  var options = {
    url: 'https://api.infermedica.com/v2/search?phrase=' + symptoms,
    headers: {
      'app_id': '9bdcf6ee',
      'app_key': 'f82069ef0330332b15fe9a53b25d6495'
    }
  }

  request(options, function(err, resp, body){
    console.log(body);
    body = JSON.parse(body);
    res.send(body);
  });
});

//for id search for diagnosis
app.get('/search/:symptom/:symptom2/:long/:lat', function(req, res){
  console.log(req.params);

  //Creating variables for all of the passed values
  var symptom = req.params.symptom; //Connecting to the :symptom
  var symptom2 = req.params.symptom2; //Connecting to the :symptom2
  long = req.params.long; //Connecting to the :long
  lat = req.params.lat; //Connecting to the :lat
  lat = parseInt(lat);
  long = parseInt(long);


  //db.many call
  db.many('SELECT name FROM specialties WHERE id IN (SELECT related_specialty FROM symptoms WHERE symptom LIKE $1)',[symptom])
  .then(function(data){
    specialties = [];
    data.forEach(function(i){
      i.name = i.name.toLowerCase();
      specialties.push(i.name);
    })
    console.log(specialties);
    specialties = specialties.join('%2C')
    console.log(specialties);
    console.log(lat);
    console.log(long);

  //request
  var options = {
    uri: "https://api.betterdoctor.com/2016-03-01/doctors?query=" + symptom + "&specialty_uid=" + specialties + "&user_location=" + parseInt(lat) + "%2C" + parseInt(long) + "&skip=0&limit=10&user_key=1f7e5b226abd0298768a2026784a0ffb",

    method: "GET"
    }

  request(options.uri, function(err, response, data){
    data = JSON.parse(data);
    console.log(data);
    res.send(data);
  })


  });
});

app.get('/userProfile', function(req, res){

  var user_id = req.session.user.id;

  db.many('SELECT * FROM savedDoctors where userID = $1',[user_id])
  .then(function(data){
    console.log(data);
    res.render('profile',{app:data});
  })
})


//update note
app.put('/updateNote', function(req,res){
  var user_id = req.session.user.id;
  var note = req.body.note;
  var name = req.body.name;
  console.log(user_id);
  console.log(name);
  console.log(note);
  db.none('UPDATE savedDoctors SET note = $1 WHERE userId = $2 AND name = $3',[note,user_id,name])
  .then(function(data){
    console.log(data)
  })
})
// app.post('/sendDiag',function(req,res){
//   // get diag string from req body/params
//   // look in db for that diag strig's symptoms
// })


// select name from symptoms where diag == 13

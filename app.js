//Opening port 4269
const PORT = process.env.PORT || 4269;

//require express
const express = require('express');
const app = express();

//require mustache
const mustache = require('mustache-express');
//configure mustache
app.engine('html',mustache());
app.set('view engine','html');
app.set('views',__dirname+'/public/views');
app.use(express.static(__dirname+"/public"));

//require pg-promise and set up database
const pgp = require("pg-promise")();
var db = pgp(process.env.DATABASE_URL || 'postgres://nicholascostanzo@localhost:5432/p2db');

//Port test
app.listen(PORT, function(){
  console.log('App listening on: ' + PORT);
})

//Test for OES database
app.get('/', function(req,res){
  res.render('index')
})



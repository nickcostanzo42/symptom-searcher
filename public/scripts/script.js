// Informedica API call example
// $.ajax({
//   method: "GET",
//   url: "https://api.infermedica.com/v2/search?phrase=",

//   success: function (data){
//     console.log(data)
//   },
//   error: function (data) {
//     'not a valid connection'
//   }
// })


//Better Doctor
// $.ajax({
//   method: "GET",
//   url: "https://api.betterdoctor.com/2016-03-01/doctors?query='Toothache'&user_location=40.740058999999995%2C-73.9897579&skip=0&limit=10&user_key=",
//   success: function(data){
//     console.log(data);
//   },
//   error: function(data){
//     console.log('Try again bro');
//   }
// })

console.log("Javascript loaded");

// References for calls
// Geolocation
var do_something = function(lat, long){
  userLat = lat;
  userLong = long;
};

navigator.geolocation.getCurrentPosition(function(position) {
  do_something(position.coords.latitude, position.coords.longitude);
});



//add first event listeners
var addEventListeners = function(){

    $('#form1').submit(function(){
      event.preventDefault();
      $firstSearch = $('#search1').val();
      infermedicaCall($firstSearch);
    })

    $('#form2').submit(function(){
      event.preventDefault();
      $secondSearch = $("input[name=symptom2]:checked").val();
      //call next function
      betterDoctorCall($firstSearch,$secondSearch,userLong,userLat);
    })



}

addEventListeners();


//function for first call
var infermedicaCall = function(thing){
    return $.ajax({
      method: "GET",
      //creates a local search route
      url: "/search/" + thing,

      success: function (data){
        console.log(data);
        radioButtons(data);

        $('#form1').submit(function(event){
          event.preventDefault();
          //remove the function of the button
        });

      },
      error: function (data) {
        console.log('Not a valid connection')
      }
    })
}

//second search
var betterDoctorCall = function(symptom1, symptom2, long, lat){
   $.ajax({
    method: "GET",

    url: "/search/" + symptom1 + "/" + symptom2 + "/" + long + "/" + lat + "/",

    datatype: 'json',

    success: function (data){

    console.log(data);
    populateDoctorData(data);
    $('#incorrect').hide();
    },

    error: function (data){
      console.log('Try again')
    }
  })
}


//function for populating page with stuff from first query
var radioButtons = function(data){
  if (data.length <= 0) {
    $('#incorrect').html('<p>Please type a more recognizable term, I\'m only a robot :)</p>');
  } else {
    $('#incorrect').html('<h6>A little more specific please: </h6>');
  data.forEach(function(i){
    // console.log(i);
    if (i.label !== $('#search1').val()){
      $('#form2').append('<input type="radio" name="symptom2" value="' +
        i.label + '"><label for="' + i.label + '">' + i.label + '</label><br>');
    }
  });

    $('#form2').append('<button type="submit" id="submit2">Submit</button>');
    $('#form1').submit(function(event){
      event.preventDefault();
      //remove the function of the button
    });
  }
}


var populateDoctorData = function(info){
  $('#form1').hide();
  $('#form2').hide();
  var arr = info.data
  console.log(arr)


  arr.forEach(function(doctor, i){
     var $saveButton = $("<button>Save</button>");
    $saveButton = $saveButton.addClass("saveButton")

    $('body').append('<div class="doctorInfo" id="div' + i + '">');

      //doctors name
      $('#div'+i).append('<h2>Dr. ' + doctor.profile.last_name + '</h2>')

      //doctors location
      doctor.practices.forEach(function(practices, i3){
        $('#div'+i).append('<h3 class="userData">' + (i3 + 1) + '. ' + practices.name + '</h3>')
        $('#div'+i).append('<h4>Address:</h4>')
        $('#div'+i).append('<p>' + practices.visit_address.street + '</p>')
        if (practices.visit_address.street2){
          $('#div'+i).append('<p>' + practices.visit_address.street2 + '</p>')
        }
        $('#div'+i).append('<p>' + practices.visit_address.city + ', ' +  practices.visit_address.state + ' '+ practices.visit_address.zip + '</p>')

        //phone numbers
        $('#div'+i).append('<h4>Contact:</h4>')
          practices.phones.forEach(function(phone, i4){
          if (phone.type = 'landline')
            $('#div' + i).append('<p class="phone">Phone ' + (i4 + 1) + ': ' + phone.number + '</p>')
        })
      })
    $('#div' + i).append($saveButton)

    $('#div' + i).append('<br>')

    })
  saveButton()
}

//save buttons for results page
var saveButton = function(){
   var buttons = $('.saveButton')
   $.each(buttons, function(index, value){
     $(value).click(function(event){
       event.preventDefault();
     var drData = $('.userData')[index];
     var phoneData = $('.phone')[index];
     var text = $(drData).text();
     var text2 = $(phoneData).text();
     console.log(text);
     console.log(text2);
     saveData(text, text2);
   });
   });
 };


var saveData = function(data1, data2){
   $.ajax({
     url:"/save",
     method:"post",
     data: {name:data1,phone:data2}
   });
};

//remove buttons for profile page
var removeButton = function(){
   var rmButtons = $('.remove')
   $.each(rmButtons, function(index, value){
     $(value).click(function(event){
      event.preventDefault();
      data = $('#deleteName').text();
      removeItem(data);
      $('.remove').parent().hide();
   });
   });
 };

 removeButton();

var removeItem = function(data) {
  $.ajax({
    url:"/remove",
    method:"DELETE",
    data: {name:data},
    success: function(){
      console.log('deleted')
    }
  })
}

//update the note on the profile page
var updateButton = function(){
  var updateButton = $('.updateNote')
  $.each(updateButton, function(index, value){
    $(value).click(function(even){
    event.preventDefault();
    dataName = $('#deleteName').text();
    data = $('#noteUpdate').val();
    console.log(data);
    updateNote(data, dataName);
  });
  });
};

updateButton();

var updateNote = function(data1, data2) {
  $.ajax({
    url:"/updateNote",
    method:"PUT",
    data: {note:data1,name:data2},
    success: function(){
      console.log('note updated')
    }
  })
}


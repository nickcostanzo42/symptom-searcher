console.log("Javascript loaded");

//References for calls
//Geolocation
// var do_something = function(lat, long){
//   console.log(lat + ', ' + long);
// };

// navigator.geolocation.getCurrentPosition(function(position) {
//   do_something(position.coords.latitude, position.coords.longitude);
// });

// Informedica API call
// $.ajax({
//   method: "GET",
//   url: "https://api.infermedica.com/v2/search?phrase=",
//   headers: {
//     'app_id': '9bdcf6ee',
//     'app_key': 'f82069ef0330332b15fe9a53b25d6495'
//   },
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
//   url: "https://api.betterdoctor.com/2016-03-01/doctors?query='Toothache'&user_location=40.740058999999995%2C-73.9897579&skip=0&limit=10&user_key=1f7e5b226abd0298768a2026784a0ffb",
//   success: function(data){
//     console.log(data);
//   },
//   error: function(data){
//     console.log('Try again bro');
//   }
// })


//add event listeners
var addEventListeners = function(){
    $('#form1').submit(function(){
      console.log('clicked');
      event.preventDefault();
      var $firstSearch = $('#search1').val();
      firstCall($firstSearch);
  })
}

addEventListeners();

//function for first call
var firstCall = function(thing){
    return $.ajax({
      method: "GET",
      url: "https://api.infermedica.com/v2/search?phrase=" + thing,
      headers: {
        'app_id': '9bdcf6ee',
        'app_key': 'f82069ef0330332b15fe9a53b25d6495'
      },
      success: function (data){
        console.log(data);
      },
      error: function (data) {
        console.log('Not a valid connection')
      }
    })
}






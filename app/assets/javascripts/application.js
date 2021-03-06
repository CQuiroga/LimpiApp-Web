// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
//= require jquery3
//= require jquery_ujs
//= require gmaps/google


/*- - - - - animación para el logo - - - -*/
$(document).ready(function(event) {
$('.logo').mouseenter(function () {
  $(this).animate({marginLeft:"+=10px"}, 200);
});
$('.logo').mouseleave(function () {
  $(this).animate({marginLeft:"-=10px"}, 200);
});

/*- - - - - animación para fila de imagenes del home - - - -*/

$('.imgs-center').mouseenter(function () {
  $(this).animate({marginTop: "-=50px"}, 200).css({'color':'#095A51'});
  $('.graycolor a').css({'color':'#666'})
});

$('.imgs-center').mouseleave(function () {
  $(this).animate({marginTop: "+=50px"}, 200).css({'color':'#666'});
  $('.graycolor a').css({'color':'#666'})
});

/*- - - - animar tabs sección "Ecoaliados" - - */

console.log('animando ecoaliados');
 $('.tab-ecoaliados').slideUp(100).delay( 3000 ).fadeIn( 1000 );

 /*- - - - - - - - Eventos de Google Calendar - - - - - */

 console.log('Eventos de Google Calendar');
 $('#calendar').fullCalendar({

   header: {
     left: 'prev,next today',
     center: 'title',
     right: 'month,listYear'
   },

   displayEventTime: false, // don't show the time column in list view

   // THIS KEY WON'T WORK IN PRODUCTION!!!
   // To make your own Google API key, follow the directions here:
   // http://fullcalendar.io/docs/google_calendar/
   googleCalendarApiKey: 'AIzaSyDcnW6WejpTOCffshGDDb4neIrXVUA1EAE',

   // US Holidays
   events: 'en.usa#holiday@group.v.calendar.google.com',

   eventClick: function(event) {
     // opens events in a popup window
     window.open(event.url, 'gcalevent', 'width=700,height=600');
     return false;
   },

   loading: function(bool) {
     $('#loading').toggle(bool);
   }
 });
 /* - - - - código adicional aqui - - - */
 /*- - - - - - - - - - - - - - - - - - -*/
/*- - - -  end código adicional- - - - -*/
event.preventDefault();
})

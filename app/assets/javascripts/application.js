// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require ckeditor-jquery
//= require bootstrap-sprockets
//= require dataTables/jquery.dataTables
//= require dataTables/bootstrap/3/jquery.dataTables.bootstrap
//= require bootstrap-datepicker
//= require moment

// require fullcalendar
// require fullcalendar/gcal
// require gcal


// require jquery.ui.draggable
// require jquery.ui.droppable
// require jquery.ui.resizable
// require jquery.ui.selectable

//= require jquery.rest
//= require fullcalendar
//= require bootstrap-sprockets
//= require moment
// after the bootstrap and moment dependencies
//= require fullcalendar

//= require_tree .
//


$( document ).ready(function() {
	$('.links_shower').mouseover(function(){


    $(this).children('.links').css("visibility", "inherit");
    $(this).children('.plus').text("-");
  })
  .mouseout(function(){
    $(this).children('.links').css("visibility", "hidden");
    $(this).children('.plus').text("+");

  });


	// $('#calendar').fullCalendar({
	// 	// put your options and callbacks here
	// 	header: {
	// 		left: 'prev,next today',
	// 		center: 'title',
	// 		right: 'month,agendaWeek,agendaDay'
	// 	},
	// 	defaultDate: '2016-04-12',
	// 	editable: true,
	// 	eventLimit: true, // allow "more" link when too many events
	// 	events: [
	// 		{
	// 			title: 'All Day Event',
	// 			start: '2016-04-01'
	// 		},
	// 		{
	// 			title: 'Long Event',
	// 			start: '2016-04-07',
	// 			end: '2016-04-10'
	// 		},
	// 		{
	// 			id: 999,
	// 			title: 'Repeating Event',
	// 			start: '2016-04-09T16:00:00'
	// 		},
	// 		{
	// 			id: 999,
	// 			title: 'Repeating Event',
	// 			start: '2016-04-16T16:00:00'
	// 		},
	// 		{
	// 			title: 'Conference',
	// 			start: '2016-04-11',
	// 			end: '2016-04-13'
	// 		},
	// 		{
	// 			title: 'Meeting',
	// 			start: '2016-04-12T10:30:00',
	// 			end: '2016-04-12T12:30:00'
	// 		},
	// 		{
	// 			title: 'Lunch',
	// 			start: '2016-04-12T12:00:00'
	// 		},
	// 		{
	// 			title: 'Meeting',
	// 			start: '2016-04-12T14:30:00'
	// 		},
	// 		{
	// 			title: 'Happy Hour',
	// 			start: '2016-04-12T17:30:00'
	// 		},
	// 		{
	// 			title: 'Dinner',
	// 			start: '2016-04-12T20:00:00'
	// 		},
	// 		{
	// 			title: 'Birthday Party',
	// 			start: '2016-04-13T07:00:00'
	// 		},
	// 		{
	// 			title: 'Click for Google',
	// 			url: 'http://google.com/',
	// 			start: '2016-04-28'
	// 		}
	// 	]
	// });
});


// $( document ).ready(function() {
// $('.links_shower').click(function(){
//   $( this.children ).toggle(
//   function() {
//     $( this.children ).children('.links').css("display", "block");
//     $( this ).html("aaaaaaaaaaaaaaaaaaaaaaa");
//   }, function() {
//     $( this.children ).children('.links').css("display", "none");
//   }
// );
// });
//   });

$(document).on('ready page:load', function () {
});

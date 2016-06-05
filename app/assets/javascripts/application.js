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
//= require bootstrap-sprockets
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
});

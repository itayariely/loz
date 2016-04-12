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

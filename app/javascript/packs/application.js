// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require('jquery')
require("@rails/activestorage").start()
require("channels")




// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)



$(document).ready(function(e){

      var current_page_URL = location.href;
    $( "a.nav-link" ).each(function() {
     if ($(this).attr("href") !== "#") {
       var target_URL = $(this).prop("href");
       if (target_URL == current_page_URL) {
          $('nav-link').removeClass('active');
          $(this).addClass('active');
          return false;
       }
      }
    });
  





  $("#rsvp_yes").click(function(){
    $(".diet").show("fast");
  });

  $("#rsvp_no").click(function(){
    $(".diet").hide("fast");
  });

  $("#dietary_requirements_no").click(function(){
    $("#diet_details").hide("fast");
  });

  $("#dietary_requirements_yes").click(function(){
    $("#diet_details").show("fast");
  });

  $("#add_plus1").click(function(){
    $(".plus1").show("fast");
    $("#remove_plus1").css( "display", "inline-block" )
    $("#add_plus1").hide();


  });

  $("#remove_plus1").click(function(){
    $(".plus1").hide("fast");
    $("#remove_plus1").hide();
    $("#add_plus1").show();
  });

  $("#plus1_rsvp_yes").click(function(){
    $(".plus1_diet").show("fast");
  });

  $("#plus1_rsvp_no").click(function(){
    $(".plus1_diet").hide("fast");
  });

  $("#plus1_dietary_requirements_no").click(function(){
    $("#plus1_diet_details").hide("fast");
  });

  $("#plus1_dietary_requirements_yes").click(function(){
    $("#plus1_diet_details").show("fast");
  });

  $("#hamburger").click(function() {
    if ($("#myLinks").is(":visible"))
    $("#myLinks").hide("fast");
  else
    $("#myLinks").show("fast");
  })




});


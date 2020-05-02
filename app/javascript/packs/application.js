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

  $("#rsvp_yes").click(function(){
    $(".diet").show();
  });

  $("#rsvp_no").click(function(){
    $(".diet").hide();
  });

  $("#dietary_requirements_no").click(function(){
    $("#diet_details").hide();
  });

  $("#dietary_requirements_yes").click(function(){
    $("#diet_details").show();
  });


});
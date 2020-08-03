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
      var current_page_pathname = location.pathname;
      var current_page_path_cut = current_page_pathname.split('/')[1];

    $( "a.nav-link" ).each(function() {
     if ($(this).attr("href") !== "#") {
       var target_URL = $(this).prop("href");
       if (target_URL == current_page_URL) {
          $('nav-link').removeClass('active');
          $(this).addClass('active');
        if (current_page_pathname == "/home/index") {
          $('#active-page-home').show();
          $('#inactive-page-home').hide();
        }
        if (current_page_pathname == "/home/index") {
          $('#active-page-home').show();
          $('#inactive-page-home').hide();
        }
        if (current_page_pathname == "/details/index") {
          $('#active-page-details').show();
          $('#inactive-page-details').hide();
        }
        if (current_page_pathname == "/travel/index") {
          $('#active-page-travel').show();
          $('#inactive-page-travel').hide();
        }
        if (current_page_pathname == "/fa_qs/index") {
          $('#active-page-faqs').show();
          $('#inactive-page-faqs').hide();
        }
        if (current_page_path_cut == "responses") {
          $('#active-page-rsvp').show();
          $('#inactive-page-rsvp').hide();
        }

          return false;
       }
      }
    });


    $("select").change(function(){
      $(this).find("option:selected").each(function(){
          var optionValue = $(this).attr("value");
        if(optionValue === "0"){
            $(".1").hide();
            $(".2").hide();
            $(".3").hide();
            $(".4").hide();
        }
          if(optionValue === "1"){
            $(".1").show();
            $(".2").hide();
            $(".3").hide();
            $(".4").hide();
          }
          if(optionValue === "2"){
            $(".1").show();
            $(".2").show();
            $(".3").hide();
            $(".4").hide();
          }
          if(optionValue === "3"){
            $(".1").show();
            $(".2").show();
            $(".3").show();
            $(".4").hide();
          }
          if(optionValue === "4"){
            $(".1").show();
            $(".2").show();
            $(".3").show();
            $(".4").show();
          }

      });
  }).change();

  if($('#response_guest1_rsvp_yes').is(':checked') && $('#response_guest1_rsvp_yes').val() === "yes"){ 
    $("#guest1_diet").show();
  }

  if($('#response_guest1_dietary_requirements_yes').is(':checked') && $('#response_guest1_dietary_requirements_yes').val() === "yes"){ 
    $("#response_guest1_diet_details").show();
  }

  if($('#response_guest2_rsvp_yes').is(':checked') && $('#response_guest2_rsvp_yes').val() === "yes"){ 
    $("#guest2_diet").show();
  }

  if($('#response_guest2_dietary_requirements_yes').is(':checked') && $('#response_guest2_dietary_requirements_yes').val() === "yes"){ 
    $("#response_guest2_diet_details").show();
  }
  
  if($('#response_guest3_rsvp_yes').is(':checked') && $('#response_guest3_rsvp_yes').val() === "yes"){ 
    $("#guest3_diet").show();
  }

  if($('#response_guest3_dietary_requirements_yes').is(':checked') && $('#response_guest3_dietary_requirements_yes').val() === "yes"){ 
    $("#response_guest3_diet_details").show();
  }

  if($('#response_guest1_rsvp_yes').is(':checked') && $('#response_guest4_rsvp_yes').val() === "yes"){ 
    $("#guest4_diet").show();
  }
  
  if($('#response_guest4_dietary_requirements_yes').is(':checked') && $('#response_guest4_dietary_requirements_yes').val() === "yes"){ 
    $("#response_guest4_diet_details").show();
  }


  $("#response_guest1_rsvp_yes").click(function(){
    $("#guest1_diet").show("fast");
  });

  $("#response_guest1_rsvp_no").click(function(){
    $("#guest1_diet").hide("fast");
  });

  $("#response_guest1_dietary_requirements_no").click(function(){
    $("#response_guest1_diet_details").hide("fast");
  });

  $("#response_guest1_dietary_requirements_yes").click(function(){
    $("#response_guest1_diet_details").show("fast");
  });

  $("#response_guest2_rsvp_yes").click(function(){
    $("#guest2_diet").show("fast");
  });

  $("#response_guest2_rsvp_yes").click(function(){
    $(".guest2_diet").hide("fast");
  });

  $("#response_guest2_dietary_requirements_no").click(function(){
    $("#response_guest2_diet_details").hide("fast");
  });

  $("#response_guest2_dietary_requirements_yes").click(function(){
    $("#response_guest2_diet_details").show("fast");
  });

  $("#response_guest3_rsvp_yes").click(function(){
    $("#guest3_diet").show("fast");
  });

  $("#response_guest3_rsvp_yes").click(function(){
    $(".guest3_diet").hide("fast");
  });

  $("#response_guest3_dietary_requirements_no").click(function(){
    $("#response_guest3_diet_details").hide("fast");
  });

  $("#response_guest3_dietary_requirements_yes").click(function(){
    $("#response_guest3_diet_details").show("fast");
  });

  $("#response_guest4_rsvp_yes").click(function(){
    $("#guest4_diet").show("fast");
  });

  $("#response_guest4_rsvp_yes").click(function(){
    $(".guest4_diet").hide("fast");
  });

  $("#response_guest4_dietary_requirements_no").click(function(){
    $("#response_guest4_diet_details").hide("fast");
  });

  $("#response_guest4_dietary_requirements_yes").click(function(){
    $("#response_guest4_diet_details").show("fast");
  });


  $("#hamburger").click(function() {
    if ($("#myLinks").is(":visible"))
    $("#myLinks").hide("fast");
  else
    $("#myLinks").show("fast");
  })


});


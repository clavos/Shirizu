// app/assets/javascripts/application.js
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs

  $(function(){
$("#addClass").click(function () {
          $('#qnimate').addClass('popup-box-on');
            });
          
            $("#removeClass").click(function () {
          $('#qnimate').removeClass('popup-box-on');
            });
  })
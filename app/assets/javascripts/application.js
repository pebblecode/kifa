// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .



$(function() {
  $('#search input').keyup(function(e, d) {
    if ($(this).val().length > 0) {
      $('#faux-results').show();
    } else {
      $('#faux-results').hide();
    }
  });

  $('#cantDrag').click(function(){
     $('#dragPicture').fadeOut();
     $('#dragTitle').fadeOut();
     $('#cantDrag').fadeOut(function(){
         $('#dragBox1').animate({width:'35%'},500,function(){
                   $('#dragBox1').css({
                           border:"1px solid #ccffcc",
                           float:"left"
                           });
                   $('#dragBox1').css("background-color","#ccffcc");
                   $('#uploadConfirm').fadeIn(2000);
                   $('#dragBox2').fadeIn();
               });

     });
  });

});

// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require ratchet
//= require_tree .


$(function(){

    $('body').on('click','#agree-button',function(event){
      event.preventDefault();
      alert("hi");

      var $candidate_answer = $('#candidate_answer').val();
      var $party_answer = $('#party_answer').val();
      var $question_id = $ ('#question_id').val();

      var answer = {
        answer:
        {
          question_id: $question_id,
          candidate_answer: $candidate_answer,
          party_answer:$party_answer
        }
      };

      // $.ajax({
      //   type: "POST",
      //   dataType: "script",
      //   url: '/question_test/'+$question_id,
      //   contentType: 'application/json',
      //   data: answer}).done(function( msg )
      //   {
      //       alert( "Data Saved: " + msg );
      //   });

      $.post("/question_test", answer).done(function(data) {


      });

    });

});

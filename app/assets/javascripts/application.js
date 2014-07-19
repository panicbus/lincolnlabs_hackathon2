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


$(document).ready(function(){

  var main_box = $('#main_box');

  var div = 0;
  var x=0;

  $('#agree-button').click(function(){
    alert("hi");
    // event.preventDefault();
    var parent = $(this).parent().siblings();

    $(parent[div]).addClass('hidden');
    $(parent[div+1]).removeClass('hidden');
    div += 1;




    var $candidate_answer = $('#candidate_answer_'+x).val();
    var $party_answer = $('#party_answer_'+x).val();
    var $question_id = $ ('#question_id_'+x).val();

    x+=1;
      var answer = {
        answer:
        {
          question_id: $question_id,
          candidate_answer: $candidate_answer,
          party_answer:$party_answer
        }
      };
      $.post("/question_tests/"+$question_id, answer).done(function(data) {
        //
      });


  });



  $('#disagree-button').click(function(){
    var parent = $(this).parent().siblings();
    $(parent[div]).addClass('hidden');
    $(parent[div+1]).removeClass('hidden');
    div+=1;
  });

});




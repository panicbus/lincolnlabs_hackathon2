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

}

	// pie results javascript
	
  var w = 300,                        //width
    h = 300,                            //height
    r = 100,                            //radius
    color = d3.scale.category20c();     //builtin range of colors
    //var demVal = Math.floor((Math.random() * 100) + 1);
    data = [{"label":"DEM", "value":75}, 
            {"label":"REP", "value":25}];

 var vis = d3.select("#graph")
        .append("svg:svg")              //create the SVG element inside the <body>
        .data([data])                   //associate our data with the document
            .attr("width", w)           //set the width and height of our visualization (these will be attributes of the <svg> tag
            .attr("height", h)
        .append("svg:g")
            .attr("id", "grp")                //make a group to hold our pie chart
            .attr("transform", "translate(" + r + "," + r + ")");    //move the center of the pie chart from 0, 0 to radius, radius
 
    var arc = d3.svg.arc()              //this will create <path> elements for us using arc data
        .outerRadius(r);
 



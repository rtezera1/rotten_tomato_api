$(document).ready(function(){
  $('#image').mouseover(function(){
    $('#image').animate({height:300,width:300}, "fast");
  });
  $('#image').mouseout(function() {
    $('#image').animate({height:96, width:128}, 'fast')
  });
});

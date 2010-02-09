$(document).ready(function() {

  var target = "?height=500&amp;width=450&amp;inlineId=popup";
  var dudes = ['damon', 'david', 'andre', 'greg'] ;
  for (var i=0, il=dudes.length; i<il; i++) {
    $(".portrait a#" + dudes[i]).addClass("thickbox").attr("href", "info/" + dudes[i] + target);
  }
  
  var target_signup = "?height=100&amp;width=300&amp;inlineId=popup";
  $("a#signup").addClass("thickbox").attr("href", "info/signup" + target_signup);
  
  tb_init('a.thickbox');

  // popup preparation
  $('#submit_button').livequery(function() {
    $(this).attr('disabled', true);
  });

  $('#address').livequery(function() {
    $(this).focus();
    $(this).bind('keypress',function(event) {
      if (/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/.test($(this).attr('value'))) {
        $('#submit_button').attr('disabled', false);
      } else {
        $('#submit_button').attr('disabled', true);
      }
    });
  });
  
});

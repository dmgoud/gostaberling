$(document).ready(function() {

  var target = "?height=600&amp;width=450&amp;inlineId=popup"

  $('a#photo1').addClass("thickbox").attr("href", "/images/pics-photo1-large.jpg" + target);

  $.each($("#bandshots a.photo"), function(index, photo) {
    $(photo).addClass("thickbox").attr("href", "/images/pics-" + $(photo).attr('id')+ "-large.jpg" + target);
  });
  
  $.each($("#bandshots a.flyer"), function(index, flyer) {
    $(photo).addClass("thickbox").attr("href", "/images/pics-" + $(flyer).attr('id')+ "-large.jpg" + target);
  });
  
  tb_init('a.thickbox');
	
});

$(document).ready(function() {
  
  var target = "?height=700&amp;width=400&amp;inlineId=popup"

  $.each($("ul.eptracks a"), function(index, tune) {
    $(tune).addClass("thickbox").attr("href", "music/" + $(tune).attr('id') + target);
  });
  
  tb_init('a.thickbox');
  
  oneBit = new OneBit('/javascripts/1bit.swf');
	oneBit.ready(function() {
    oneBit.specify('color', '#FFFFFF');
    oneBit.specify('background', '#2C0E0E');
    oneBit.specify('playerSize', '10');
    oneBit.apply('a');
	});
	
});

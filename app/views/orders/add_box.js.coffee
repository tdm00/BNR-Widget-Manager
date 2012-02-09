$('<%= escape_javascript(render(:partial => 'box', :locals => {:box => @box})) %>')
	.appendTo('#box_listing')
	.hide()
	.fadeIn()
$('#total').html '<%= escape_javascript(render(:partial => 'total')) %>'
$('<%= escape_javascript(render(:partial => 'box', :locals => {:box => @box})) %>')
	.appendTo('#box_listing')
	.hide()
	.fadeIn('slow')
$('#total').html '<%= escape_javascript(render(:partial => 'total')) %>'
$('#total')
	.html('Added box to order')
	.hide()
	.fadeIn('slow')

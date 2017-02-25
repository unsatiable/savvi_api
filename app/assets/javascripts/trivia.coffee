$(document).on 'click', '#show-answers', ->
	if $('#answer-block').is(':visible')
		$('#answer-block').hide()
	else
		$('#answer-block').show()
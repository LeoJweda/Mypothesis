jQuery ->
  $(".delete").live 'ajax:success', ->
    $(this).closest('.item').prev().fadeOut()
    $(this).closest('.item').fadeOut()
      
  $(".upvote").live 'ajax:success', (event, data, status, xhr) ->
    response = JSON.parse(xhr.responseText)
    if response.result == "ok"
      $(this).addClass('btn-success')
      $(this).children('i').addClass('icon-white')
      $(this).siblings('.downvote').removeClass('btn-danger')
      $(this).siblings('.downvote').children('i').removeClass('icon-white')
      $(this).siblings('.score').html('<b>' + response.score + '</b>')
    else
      errors = $('<div id="error_explanation"/>')
      errors.append('<h2>Pending invitation action error</h2><ul><li>' + response.error + '</li></ul>')
      $('#new_invitation_error').append(errors)
	   
  $(".downvote").live 'ajax:success', (event, data, status, xhr) ->
    response = JSON.parse(xhr.responseText)
    if response.result == "ok"
      $(this).addClass('btn-danger')
      $(this).children('i').addClass('icon-white')
      $(this).siblings('.upvote').removeClass('btn-success')
      $(this).siblings('.upvote').children('i').removeClass('icon-white')
      $(this).siblings('.score').html('<b>' + response.score + '</b>')
    else
      errors = $('<div id="error_explanation"/>')
      errors.append('<h2>Pending invitation action error</h2><ul><li>' + response.error + '</li></ul>')
      $('#new_invitation_error').append(errors)

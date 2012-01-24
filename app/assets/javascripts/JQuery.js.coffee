jQuery ->
  $("button, input.button").button()
  $("input[type='submit']").button()
  
  $(".navButton").button()
  
  $("#profile").button()
  .next().button
    text: false,
    icons:
      primary: "ui-icon-triangle-1-s"
  .click ->
    $("#dropDown").toggle()
  .parent().buttonset()
  
  $("#dropDown").menu().hide()
  
  $("#order").buttonset()
  
  $(".edit").button
    text: false,
    icons:
      primary: "ui-icon-pencil"
      
  $(".delete").button
    text: false,
    icons:
      primary: "ui-icon-close"
  .bind 'ajax:success', ->
    $(this).closest('.panel-container').fadeOut()
      
  $(".upvote").button
    text: false,
    icons:
      primary: "ui-icon-plus"
  .live 'ajax:success', (event, data, status, xhr) ->
    response = JSON.parse(xhr.responseText)
    if response.result == "ok"
      $(this).siblings('.downvote').removeClass('ui-helper-hidden-accessible').hide().fadeIn('fast')
      $(this).siblings('.score').html('<b>' + response.score + '</b>')
      $(this).fadeOut('fast')
    else
      errors = $('<div id="error_explanation"/>')
      errors.append('<h2>Pending invitation action error</h2><ul><li>' + response.error + '</li></ul>')
      $('#new_invitation_error').append(errors)
	   
  $(".downvote").button
    text: false,
    icons:
      primary: "ui-icon-minus"
  .live 'ajax:success', (event, data, status, xhr) ->
    response = JSON.parse(xhr.responseText)
    if response.result == "ok"
      $(this).siblings('.upvote').removeClass('ui-helper-hidden-accessible').hide().fadeIn('fast')
      $(this).siblings('.score').html('<b>' + response.score + '</b>')
      $(this).fadeOut('fast')
    else
      errors = $('<div id="error_explanation"/>')
      errors.append('<h2>Pending invitation action error</h2><ul><li>' + response.error + '</li></ul>')
      $('#new_invitation_error').append(errors)
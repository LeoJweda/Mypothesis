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
  $(".panel-buttonpane a").button()
  
  $(".edit").button
    text: false,
    icons:
      primary: "ui-icon-pencil"
      
  $(".delete").button
    text: false,
    icons:
      primary: "ui-icon-close"
      
  $(".upvote").button
    text: false,
    icons:
      primary: "ui-icon-plus"
      
  $(".downvote").button
    text: false,
    icons:
      primary: "ui-icon-minus"
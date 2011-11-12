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
  
  $("#radio").buttonset()
  $(".panel-buttonpane a").button()
  
  $('#switcher').themeswitcher()
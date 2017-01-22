$(document).ready ->
  $("#milks-link").click (event) ->
    event.preventDefault()
    $("#milks-section").fadeToggle()
    $("#milk_milk_type").focus()

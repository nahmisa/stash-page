$(document).ready ->
  $("#milks-link").click (event) ->
    event.preventDefault()
    $(".stash-info").toggle()
    $(".milk-info").toggle()
    $("#milks-section").fadeToggle()
    $("#milk_milk_type").focus()

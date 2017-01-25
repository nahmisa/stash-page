$(document).ready ->
  $("#milks-link").click (event) ->
    event.preventDefault()
    $("#stash-info").toggle()
    $("#milk-info").toggle()
    $("#milks-section").fadeToggle()
    $("#milk_milk_type").focus()

# for the inline link to add stash on instructions
  $("#milks-link2").click (event) ->
    event.preventDefault()
    $("#stash-info").toggle()
    $("#milk-info").toggle()
    $("#milks-section").fadeToggle()
    $("#milk_milk_type").focus()

  $("#learn-more").click (event) ->
    event.preventDefault()
    $("#learn-more").toggle()
    $("#close-learn").toggle()
    $("#stash-more-info").toggle()

  $("#close-learn").click (event) ->
    event.preventDefault()
    $("#learn-more").toggle()
    $("#close-learn").toggle()
    $("#stash-more-info").toggle()

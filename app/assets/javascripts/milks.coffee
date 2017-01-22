$(document).on "turbolinks:load", ->
  $("#milks-link").on 'click', ->
    $("#milks-section").toggle()


$(document).on "turbolinks:load", ->
  $('#myButton').click ->
    $("#text").fadeToggle()

# $(document).on "turbolinks:load", ->
#   $("#accordion").accordion();

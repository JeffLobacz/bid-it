
$(document).on "turbolinks:load", ->
  $("#myButton").click ->
    $("#accordion").accordion();
    # $("#text").fadeToggle();

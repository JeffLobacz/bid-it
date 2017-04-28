
$(document).on "turbolinks:load", ->
  $("#myButton").click ->
    $("#text").html("Hello Jeff");
  $("#accordion").accordion();
  $("#sortable").sortable();
  # $("#weeklyShifts").disableSelection();

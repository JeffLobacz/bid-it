
$(document).on "turbolinks:load", ->
  $( "#accordion" ).accordion({
    collapsible: true
  });
  $( "#sortable" ).sortable();

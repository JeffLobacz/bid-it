
$(document).on "turbolinks:load", ->

  # $("#accordion").accordion( {collapsible: true} ).sortable( {axis: "y"} );
  $("#accordion").accordion( {collapsible: true} );
  # $("#accordion").accordion().sortable();

  # sorted = $( "#sortable" ).sortable( "toArray" );
  # $("#sortlist").sortable({
  #   update: ->
  #   result = $("#sortlist").sortable( "toArray" );
  #     alert(result.length);
  # });

  $( "#sortlist" ).sortable();
  # $( "#sortlist" ).on( "sortupdate" ) ->

  # $( "#sortlist" ).sortable({
  # update: ->
  # });
  result = $('#sortlist').sortable().sortable("serialize");

  $("#myButton").click ->
    alert (result)


  $("#weeklyShifts").sortable();

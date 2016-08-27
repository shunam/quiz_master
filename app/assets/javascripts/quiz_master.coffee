# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  $(".form-quiz-master").on("ajax:complete", (status, xhr) ->
    $(this).find(".notification").text xhr.responseText
    if xhr.responseText == "CORRECT!"
      $(this).find(".notification").addClass "text-success"
      $(this).find(".notification").removeClass "text-warning"
    else
      $(this).find(".notification").addClass "text-warning"
      $(this).find(".notification").removeClass "text-success"
  )
# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


# example of how to call jquery using coffeescript 
$ ->
  $("#favourite").on "ajax:success", (e, data, status, xhr) ->
    jQuery(this).children("button").css('background-color', 'red');


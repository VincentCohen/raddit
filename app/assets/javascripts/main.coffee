# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'click', '.-js-ajax-post', (e)->
  e.preventDefault();

  endpoint = $(this).attr('href');

  $.post endpoint, (data)->
    console.log(data);


  alert('vote me up');
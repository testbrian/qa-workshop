# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  onBookRemoval = ->
    $('.js-remove-book').closest('.js-book-row').hide()

  $('.js-remove-book').on 'click', (e)->
    e.preventDefault()
    $link = $(this)
    url = $link.attr('href')
    $.ajax
      method: 'POST'
      url: url
      complete: ->
        onBookRemoval()
    false

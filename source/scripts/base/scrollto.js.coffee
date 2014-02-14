$('a.scrollTo').click (e) ->
    e.preventDefault()
    href = $(@).attr('href')
    if href isnt '#'
      $('body').animate({ scrollTop: $(href).offset().top - 50 }, 400)

$('a.scrollTo').click (e) ->
    e.preventDefault()
    href = $(@).attr('href')
    if href isnt '#'
      $('body').animate({ scrollTop: $(tref).offset().top - 50 }, 400)

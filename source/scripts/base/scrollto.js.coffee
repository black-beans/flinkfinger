$('a.scrollTo').click (e) ->
    e.preventDefault()
    href = $(this).attr('href')
    if href isnt '#'
      $('html,body').animate({ scrollTop: $(href).offset().top - window.navHeight }, 400)

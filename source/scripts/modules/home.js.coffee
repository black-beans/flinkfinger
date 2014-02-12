window.isOnTop    = true
window.navHeight  = $("#header").height()
window.homeHeight = $('section#home').height() - window.navHeight

$(window).scroll ->
  if $(document).scrollTop() > window.homeHeight
    if window.isOnTop is true
      $('#header').addClass('fixed')
      window.isOnTop = false
  else
    if window.isOnTop is false
      $('#header').removeClass('fixed')
      window.isOnTop = true

$(window).resize ->
  window.homeHeight = $('section#home').height() - window.navHeight

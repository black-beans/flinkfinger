$(window).scroll ->
  if $(document).scrollTop() > 500
    $('body').addClass('menu-fixed')
  else
    $('body').removeClass('menu-fixed')

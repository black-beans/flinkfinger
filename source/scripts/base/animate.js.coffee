$(->

  $(document.body).on 'appear', '.animate-top', ->
    $(@).delay(150).animate({ opacity: 1, top: '0px' }, 1000)

  $(document.body).on 'appear', '.animate-bottom', ->
    $(@).delay(150).animate({ opacity: 1, bottom: '0px' }, 1000)

  $(document.body).on 'appear', '.animate-left', ->
    $(@).delay(150).animate({ opacity: 1, left: '0px' }, 1000)

  $(document.body).on 'appear', '.animate-right', ->
    $(@).delay(150).animate({ opacity: 1, right: '0px' }, 1000)

  $(document.body).on 'appear', '.animate-fade', ->
    $(@).delay(150).animate({ opacity: 1, right: '0px' }, 1000)

  $('.animate-top').appear().each ->
    $(@).animate({ opacity: 1, top: '0px' }, 500) if $(@).is(':appeared')

  $('.animate-bottom').appear().each ->
    $(@).animate({ opacity: 1, bottom: '0px' }, 500) if $(@).is(':appeared')

  $('.animate-left').appear().each ->
    $(@).animate({ opacity: 1, left: '0px' }, 500) if $(@).is(':appeared')

  $('.animate-right').appear().each ->
    $(@).animate({ opacity: 1, right: '0px' }, 500) if $(@).is(':appeared')

  $('.animate-fade').appear().each ->
    $(@).animate({ opacity: 1, right: '0px' }, 500) if $(@).is(':appeared')

)

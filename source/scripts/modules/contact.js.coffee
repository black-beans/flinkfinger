window.initializeMap = ->
  location = new google.maps.LatLng(47.352498, 8.342019)

  options =
    zoom: 17
    center: location
    disableDefaultUI: false
    navigationControl: false
    mapTypeControl: false
    scrollwheel: false
    mapTypeId: google.maps.MapTypeId.ROADMAP

  map = new google.maps.Map(document.getElementById('gmap'), options)
  google.maps.event.trigger(map, 'resize')
  map.setZoom(map.getZoom())

  marker = new google.maps.Marker(
    position: location
    map: map
    title: 'FlinkFinger GmbH'
  )

  marker.setMap(map)

  google.maps.event.addDomListener(window, 'resize', -> map.setCenter(location))

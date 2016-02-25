$ ->
  mapElement = $('.map')
  map = new google.maps.Map(mapElement[0],
    zoom: 15
    center:
      lat: 32.0569813
      lng: 34.7695235
  )

  map.addListener 'click', (e) =>
    window.location.href = mapElement.data('new-answer-path') + "&answer[latitude]=#{e.latLng.lat()}&answer[longitude]=#{e.latLng.lng()}"

  mapElement.data('answers').forEach (answer) =>
    marker = new google.maps.Marker(
      map: map
      position:
        lat: answer.latitude
        lng: answer.longitude
    )
    if answer.content
      infoWindow = new google.maps.InfoWindow(content: answer.content)

      marker.addListener 'mouseover', =>
        infoWindow.open(map, marker)
        $(".gm-style-iw").next("div").hide()
      marker.addListener 'mouseout', =>
        infoWindow.close()

function iniciarMap() {
  var coord = { lat: 10.858500910998263, lng: -74.77435608030717 };
  var map = new google.maps.Map(document.getElementById('map'), {
      zoom: 10,
      center: coord
  });
}



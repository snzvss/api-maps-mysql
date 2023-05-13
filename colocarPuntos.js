function colocarPuntos(datos) {

    datos.forEach(function (dato) {
        var marker = new google.maps.Marker({
            position: { lat: parseFloat(dato.lat), lng: parseFloat(dato.lon) },
            map: map,
            title: dato.sitio
        });

        var infowindow = new google.maps.InfoWindow({
            content: "Sitio: " + dato.sitio + "<br>" +
                "Factor: " + dato.descr + "<br>" +
                "Dato: " + dato.dato
        });

        marker.addListener('click', function () {
            infowindow.open(map, marker);
        });
    });
}

function obtenerDatos() {
    fetch('obtener_datos.php')
        .then(function (response) {
            return response.json();
        })
        .then(function (data) {
            colocarPuntos(data);
        })
        .catch(function (error) {
            console.log('Error al obtener los datos:', error);
        });
}

window.addEventListener('load', function () {
    iniciarMap();
    obtenerDatos();
});

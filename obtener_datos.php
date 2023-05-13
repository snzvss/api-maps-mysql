<?php
require_once 'conexion.php';

$sql = "SELECT medicion.dato, factor.descr, sector.sitio, sector.lat, sector.lon
        FROM medicion
        INNER JOIN sector ON medicion.sector = sector.id
        INNER JOIN factor ON medicion.factor = factor.id";
$resultado = $conn->query($sql);

if ($resultado->num_rows > 0) {
    $datos = array();
    while ($row = $resultado->fetch_assoc()) {
        $datos[] = array(
            "dato" => $row["dato"],
            "descr" => $row["descr"],
            "sitio" => $row["sitio"],
            "lat" => $row["lat"],
            "lon" => $row["lon"]
        );
    }
    echo json_encode($datos);
} else {
    echo json_encode(array("message" => "No se encontraron datos"));
}

$conn->close();
?>
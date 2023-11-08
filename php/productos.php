<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "tiendaup";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

$sql = "SELECT ID_Pro, NombrePro, Img, Precio FROM productos";
$result = $conn->query($sql);
 
$productos = array();

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $productos[] = $row;
    }
    echo json_encode($productos);
} else {
    echo "0 resultados";
}

$conn->close();
?>
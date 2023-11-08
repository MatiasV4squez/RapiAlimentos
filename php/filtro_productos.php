<?php
// Conecta a la base de datos (ya debes tener una conexión a la base de datos en tu archivo)
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "tiendaup";
$conn = new mysqli($servername, $username, $password, $dbname);

// Obtiene el ID de la categoría desde la solicitud GET
$categoriaID = $_GET['categoriaID'];

// Realiza una consulta SQL para obtener productos de la categoría
$query = "SELECT * FROM productos WHERE ID_cat = $categoriaID";
$result = mysqli_query($conn, $query); 
$productos = array();

while ($row = mysqli_fetch_assoc($result)) {
    $productos[] = $row;
}

header('Content-Type: application/json');
echo json_encode($productos);
?>

<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "tiendaup";
$conn = new mysqli($servername, $username, $password, $dbname);

$categoriaID = $_GET['categoriaID'];


$query = "SELECT * FROM productos WHERE ID_cat = $categoriaID";
$result = mysqli_query($conn, $query); 
$productos = array();

while ($row = mysqli_fetch_assoc($result)) {
    $productos[] = $row;
}

header('Content-Type: application/json');
echo json_encode($productos);
?>

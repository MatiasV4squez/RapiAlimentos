<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "tiendaup";

$conn = new mysqli($servername, $username, $password, $dbname);

$query = "SELECT * FROM categorias";
$result = mysqli_query($conn, $query); 
$categories = array();

while ($row = mysqli_fetch_assoc($result)) {
    $categories[] = $row;
}

header('Content-Type: application/json');
echo json_encode($categories);
?>

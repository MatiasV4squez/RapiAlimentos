<?php
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    
    $servername = "localhost"; 
    $username = "root"; 
    $password = ""; 
    $dbname = "tiendaup";

    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_error) {
        die("Error de conexión: " . $conn->connect_error);
    }

    
    $nombre = $_POST['nombre'];
    $apellido = $_POST['apellido'];
    $usuario = $_POST['usuario'];
    $correo = $_POST['correo'];
    $contrasena = $_POST['contrasena'];
    $id_ciu = $_POST['id_ciu'];


    $sql = "INSERT INTO cliente (Nombre, Apellido, Usuario, correo, contrasena, ID_ciu) VALUES ('$nombre', '$apellido', '$usuario', '$correo', '$contrasena', '$id_ciu')";

    if ($conn->query($sql) === TRUE) {
        echo "Registro exitoso";
    } else {
        echo "Error al registrar el usuario: " . $conn->error;
    }

    $conn->close();
}
?>

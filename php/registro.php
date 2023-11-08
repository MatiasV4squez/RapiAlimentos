<?php
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    // Conexión a la base de datos (asegúrate de configurarla correctamente)
    $servername = "localhost"; // Cambia localhost a la dirección de tu servidor de base de datos.
    $username = "root"; // Reemplaza "tu_usuario" por el nombre de usuario de tu base de datos.
    $password = ""; // Reemplaza "tu_contraseña" por la contraseña de tu base de datos.
    $dbname = "tiendaup";

    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_error) {
        die("Error de conexión: " . $conn->connect_error);
    }

    // Capturar los datos del formulario de registro
    $nombre = $_POST['nombre'];
    $apellido = $_POST['apellido'];
    $usuario = $_POST['usuario'];
    $correo = $_POST['correo'];
    $contrasena = $_POST['contrasena'];
    $id_ciu = $_POST['id_ciu'];

    // Insertar los datos en la tabla cliente
    $sql = "INSERT INTO cliente (Nombre, Apellido, Usuario, Direccion, ID_ciu, contrasena)
    VALUES ('$nombre', '$apellido', '$usuario', '$correo', '$contrasena', '$id_ciu')";

    if ($conn->query($sql) === TRUE) {
        echo "Registro exitoso";
    } else {
        echo "Error al registrar el usuario: " . $conn->error;
    }

    $conn->close();
}
?>

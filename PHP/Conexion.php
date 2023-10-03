<?php

$sqli =  mysqli_connect("localhost", "root", "", "usuarios");

if(isset($_POST["Nombre"]) && isset($_POST["Usuario"]) && isset($_POST["Apellido"]) && isset($_POST["Con"])) {

    $Nombre = $_POST["Nombre"];
    $Usuario = $_POST["Usuario"];
    $Apellido = $_POST["Apellido"];
    $Contra = $_POST["Con"];

    

    $resul = mysqli_query($sqli, "SELECT * FROM ingresos WHERE usuario='$Usuario'");

    if (mysqli_num_rows($resul) > 0) {
        
        $usuario = mysqli_fetch_assoc($resul);
        echo json_encode($Usuario);
    } else {
        $respon2 = mysqli_query($sqli,"INSERT INTO ingresos(usuario, nombre, apellido, passwd) VALUES('$Usuario', '$Nombre', '$Apellido', '$Contra');");

        if ($respon2){
            echo " Bienvenido $Usuario ";
        } else {
            echo "Ocurrio un Error";
        }
    }

}



if(isset($_POST["UsuarioLog"]) && isset($_POST["ConLog"])) {
    $UsuarioLog = $_POST["UsuarioLog"];
    $ConLog = $_POST["ConLog"];

    $resul3 = mysqli_query($sqli, "SELECT * FROM ingresos WHERE usuario='$UsuarioLog' AND passwd='$ConLog'");

    if (mysqli_num_rows($resul3) > 0) {
        
        echo "sesion iniciada"; 
    } else {
        echo "Error de inicio de sesión"; 
    }
}



mysqli_close($sqli);


?>
    





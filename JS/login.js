document.getElementById('registro-form').addEventListener('submit', function(event) {
    event.preventDefault();

    // Obtener los datos del formulario
    const nombre = document.querySelector('input[name="nombre"]').value;
    const apellido = document.querySelector('input[name="apellido"]').value;
    const usuario = document.querySelector('input[name="usuario"]').value;
    const contrasena = document.querySelector('input[name="contrasena"]').value;
    const correo = document.querySelector('input[name="correo"]').value;
    const id_ciu = document.querySelector('input[name="id_ciu"]').value;

    // Enviar los datos al servidor utilizando Fetch API
    fetch('registro.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded'
        },
        body: `nombre=${nombre}&apellido=${apellido}&usuario=${usuario}&contrasena=${contrasena}&correo=${correo}&id_ciu=${id_ciu}`
    })
    .then(response => response.text())
    .then(data => {
        // Manejar la respuesta del servidor
        if (data === "Registro exitoso") {
            // Registro exitoso, redirigir al usuario o mostrar un mensaje de éxito
            alert("Registro exitoso. Ahora puedes iniciar sesión.");
            window.location.href = "login.html";
        } else {
            // Error en el registro, mostrar un mensaje de error
            alert("Error al registrar el usuario. Por favor, inténtalo de nuevo.");
        }
    })
    .catch(error => console.error('Error:', error));

});

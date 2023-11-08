document.addEventListener('DOMContentLoaded', function() {
    fetchCategorias();
});

function fetchCategorias() {
    fetch('../php/categorias.php') // Reemplaza 'archivo.php' con la ruta correcta a tu script PHP
        .then(response => response.json())
        .then(data => {
            const listaCategorias = document.getElementById('listaCategorias');
            
            if (listaCategorias) {
                data.forEach(categoria => {
                    const li = document.createElement('li');
                    li.textContent = categoria.nombre;
                    listaCategorias.appendChild(li);
                });
            } else {
                console.error('Elemento "listaCategorias" no encontrado');
            }
        })
        .catch(error => {
            console.error('Error:', error);
        });
}
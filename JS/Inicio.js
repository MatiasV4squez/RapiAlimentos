// Obtener elementos del DOM
const menuButton = document.getElementById("menu-button");
const menu = document.getElementById("menu");

// Función para alternar la clase 'active' del menú
function toggleMenu() {
    menu.classList.toggle("active");
}

// Agregar un evento de clic al botón para mostrar/ocultar el menú
menuButton.addEventListener("click", toggleMenu);

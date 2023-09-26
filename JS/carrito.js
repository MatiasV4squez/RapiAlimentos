function agregarAlCarrito(nombreDelProducto, precio, imagenSrc) {
    const elementosDelCarrito = document.getElementById('elementos-del-carrito');
    const elementoDelCarrito = document.createElement('div');
    elementoDelCarrito.classList.add('elemento-del-carrito');
    elementoDelCarrito.innerHTML = `
        <img src="${imagenSrc}" alt="${nombreDelProducto}">
        <p>${nombreDelProducto}</p>
        <p class="precio">$${precio}</p>
    `;
    elementosDelCarrito.appendChild(elementoDelCarrito);
}

const productos = document.querySelectorAll('.producto');
productos.forEach(producto => {
    const nombreDelProducto = producto.querySelector('h2');
    const detallesDelProducto = producto.querySelector('.detalles-del-producto');
    const botonAgregarAlCarrito = producto.querySelector('.boton-agregar-al-carrito');
    
    nombreDelProducto.addEventListener('click', () => {
        detallesDelProducto.style.display = 'block';
    });

    botonAgregarAlCarrito.addEventListener('click', () => {
        botonAgregarAlCarrito.disabled = true;
        setTimeout(() => {
            botonAgregarAlCarrito.disabled = false;
        }, 1000);
    });
});

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
    actualizarTotal(precio);
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
const carritoTitulo = document.getElementById('carrito-titulo');
    const elementosDelCarrito = document.getElementById('elementos-del-carrito');
    
    carritoTitulo.addEventListener('click', () => {
        if (carritoTitulo.classList.contains('carrito-visible')) {

            elementosDelCarrito.style.display = 'none';
            carritoTitulo.classList.remove('carrito-visible');
        } else {

            elementosDelCarrito.style.display = 'block';
            carritoTitulo.classList.add('carrito-visible');
        }
    });

    function actualizarTotal(precio) {
        const totalPrecio = parseFloat(document.getElementById('total-precio').textContent);
        const nuevoTotal = totalPrecio + parseFloat(precio);
        document.getElementById('total-precio').textContent = nuevoTotal.toFixed(2);
    
        const totalCarrito = document.getElementById('total-carrito');
        totalCarrito.style.display = 'block';
    }
    
    

    window.addEventListener('DOMContentLoaded', () => {
        actualizarTotal(0.00);
    });
    
// Declarar la variable productos globalmente
let productos = [];

fetch('../php/productos.php')
  .then(response => {
    if (!response.ok) {
      throw new Error('Error al obtener los productos');
    }
    return response.json();
  })
  .then(data => {
    productos = data; // Asignar los datos a la variable productos
    mostrarProductos(data);
  })
  .catch(error => console.error('Error al obtener los productos:', error));

const mainContent = document.querySelector("#main-content");
let productosCarrito = localStorage.getItem("productos-en-carrito");
productosCarrito = productosCarrito ? JSON.parse(productosCarrito) : [];

function mostrarProductos(productos) {
    productos.forEach(producto => {
        const div = document.createElement("div");
        div.classList.add("producto");
        div.innerHTML = `
            <img class="producto-imagen" src="${producto.Img}" alt="${producto.NombrePro}">
            <div class="producto-detalles">
                <h3 class="producto-titulo">${producto.NombrePro}</h3>
                <p class="producto-precio">${producto.Precio}</p>
                <button class="producto-agregar" id="${producto.ID_Pro}">Agregar</button>
            </div>
        `;
        mainContent.append(div);
    });

    actualizaBotonesAgregar();
}

function actualizaBotonesAgregar() {
    const botonesAgregar = document.querySelectorAll(".producto-agregar");
    botonesAgregar.forEach(boton => {
        boton.addEventListener("click", agregarAlCarrito);
    });
}

function agregarAlCarrito(e) {
    const idBoton = e.currentTarget.id;
    const productoAgregado = productos.find(producto => producto.ID_Pro === idBoton);

    if (productosCarrito.some(producto => producto.ID_Pro === idBoton)) {
        const index = productosCarrito.findIndex(producto => producto.ID_Pro === idBoton);
        productosCarrito[index].cantidad++;
    } else {
        productoAgregado.cantidad = 1;
        productosCarrito.push(productoAgregado);
    }

    localStorage.setItem("productos-en-carrito", JSON.stringify(productosCarrito));
}

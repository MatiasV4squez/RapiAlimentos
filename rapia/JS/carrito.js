let productosCarrito = localStorage.getItem("productos-en-carrito");
productosCarrito = JSON.parse(productosCarrito);

const carritoVacio = document.querySelector("#carrito-vacio");
const carritoProductos = document.querySelector("#carrito-productos");
const carritoAciones = document.querySelector("#carrito-acciones");
let botonEliminar;
const botonVaciar = document.querySelector("#carrito-acciones-vaciar");
const total = document.querySelector("#total");
const botonComprar = document.querySelector("#carrito-acciones-comprar");

function cargarProductosCarrito() {
    if (productosCarrito && productosCarrito.length > 0) {
        carritoVacio.classList.add("disabled");
        carritoProductos.classList.remove("disabled");
        carritoAciones.classList.remove("disabled");

        carritoProductos.innerHTML = "";

        productosCarrito.forEach(producto => {
            const div = document.createElement("div");
            div.classList.add("carrito-producto");
            div.innerHTML = `
                <img class="carrito-producto-imagen" src="${producto.Img}" alt="${producto.NombrePro}">
                <div class="carrito-producto-titulo">
                    <small>Producto</small>
                    <h3>${producto.NombrePro}</h3>
                </div>
                <div class="carrito-producto-cantidad">
                    <small>Cantidad</small>
                    <p>${producto.cantidad}</p>
                </div>
                <div class="carrito-producto-precio">
                    <small>Precio</small>
                    <p>${producto.Precio}</p>
                </div>
                <div class="carrito-producto-subtotal">
                    <small>Subtotal</small>
                    <p>${producto.Precio * producto.cantidad}</p>
                </div>
                <button class="carrito-producto-eliminar" id="${producto.ID_Pro}"><i class="bi bi-trash-fill"></i></button>
            `;

            carritoProductos.append(div);
        })
    } else {
        carritoVacio.classList.remove("disabled");
        carritoProductos.classList.add("disabled");
        carritoAciones.classList.add("disabled");
    }

    actualizaBotonesEliminar();
    actualizaTotal();
}

function actualizaBotonesEliminar() {
    botonEliminar = document.querySelectorAll(".carrito-producto-eliminar");

    botonEliminar.forEach(boton => {
        boton.addEventListener("click", eliminarDelCarrito);
    });
}

function eliminarDelCarrito(e) {
    const idBoton = e.currentTarget.id;
    const index = productosCarrito.findIndex(producto => producto.ID_Pro === idBoton);

    productosCarrito.splice(index, 1);
    cargarProductosCarrito();

    localStorage.setItem("productos-en-carrito", JSON.stringify(productosCarrito));
}

botonVaciar.addEventListener("click", vaciarCarrito);

function vaciarCarrito() {
    productosCarrito = [];
    localStorage.setItem("productos-en-carrito", JSON.stringify(productosCarrito));
    cargarProductosCarrito();
}

function actualizaTotal() {
    const totalFinal = productosCarrito.reduce((acc, producto) => acc + (producto.Precio * producto.cantidad), 0);
    total.innerText = `$${totalFinal}`;
}

botonComprar.addEventListener("click", comprarCarrito);

function comprarCarrito() {
    productosCarrito = [];
    localStorage.setItem("productos-en-carrito", JSON.stringify(productosCarrito));

    carritoVacio.classList.remove("disabled");
    carritoProductos.classList.add("disabled");
    carritoAciones.classList.add("disabled");

    alert("¡Gracias por su compra!");
}

cargarProductosCarrito();
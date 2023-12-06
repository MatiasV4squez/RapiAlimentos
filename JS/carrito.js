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
                    <button class="carrito-producto-cantidad-modificar" data-operacion="disminuir">-</button>
                    <small>Cantidad</small>
                    <p>${producto.cantidad}</p>
                    <button class="carrito-producto-cantidad-modificar" data-operacion="aumentar">+</button>
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

    alert("¡Aguarde será redireccionado a la pagina de pagos!");
}

function actualizaCantidadEnInterfaz() {
    const cantidades = document.querySelectorAll(".carrito-producto-cantidad p");
    cantidades.forEach((element, index) => {
        element.textContent = productosCarrito[index].cantidad;
    });
}
function modificarCantidad(e) {
    const idBoton = e.currentTarget.parentElement.parentElement.querySelector(".carrito-producto-eliminar").id;
    const operacion = e.currentTarget.dataset.operacion;

    const index = productosCarrito.findIndex(producto => producto.ID_Pro === idBoton);

    if (index !== -1) {
        if (operacion === "aumentar") {
            productosCarrito[index].cantidad++;
        } else if (operacion === "disminuir" && productosCarrito[index].cantidad > 1) {
            productosCarrito[index].cantidad--;
        }

        cargarProductosCarrito();
        localStorage.setItem("productos-en-carrito", JSON.stringify(productosCarrito));
    }
}
function actualizaBotonesEliminar() {
    botonEliminar = document.querySelectorAll(".carrito-producto-eliminar");
    const botonesModificar = document.querySelectorAll(".carrito-producto-cantidad-modificar");

    botonEliminar.forEach(boton => {
        boton.addEventListener("click", eliminarDelCarrito);
    });

    botonesModificar.forEach(boton => {
        boton.addEventListener("click", modificarCantidad);
    });
}


cargarProductosCarrito();

function Comprar() {
    window.location.href = '../Vista/pago.html';
}

localStorage.setItem("totalCarrito", total.innerText);

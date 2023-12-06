const mainContent = document.querySelector("#main-content");
const categoriasContainer = document.querySelector(".filtro-producto");
let productosCarrito = localStorage.getItem("productos-en-carrito");
productosCarrito = productosCarrito ? JSON.parse(productosCarrito) : [];

let productos = []; 

document.addEventListener("DOMContentLoaded", function () {
    cargarCategorias();
    cargarTodosLosProductos();
});

function cargarCategorias() {
    fetch('../php/categorias.php')
        .then(response => {
            if (!response.ok) {
                throw new Error('Error al obtener las categorías');
            }
            return response.json();
        })
        .then(data => {
            mostrarCategorias(data);
        })
        .catch(error => console.error('Error al obtener las categorías:', error));
}

function mostrarCategorias(categorias) {
    const todosDiv = document.createElement("div");
    todosDiv.classList.add("categoria");
    todosDiv.dataset.categoriaId = "todos";
    todosDiv.textContent = "Todos";
    categoriasContainer.appendChild(todosDiv);

    todosDiv.addEventListener("click", () => {
        cargarTodosLosProductos();

        const categorias = document.querySelectorAll(".categoria");
        categorias.forEach(c => c.classList.remove("categoria-seleccionada"));

        todosDiv.classList.add("categoria-seleccionada");
    });

    categorias.forEach(categoria => {
        const div = document.createElement("div");
        div.classList.add("categoria");
        div.dataset.categoriaId = categoria.ID_cat;
        div.textContent = categoria.NombreCat;
        categoriasContainer.appendChild(div);

        div.addEventListener("click", (event) => {
            const target = event.target;
            if (target.classList.contains("categoria")) {
                const categoriaId = target.dataset.categoriaId;
                filtrarProductos(categoriaId);

                const categorias = document.querySelectorAll(".categoria");
                categorias.forEach(c => c.classList.remove("categoria-seleccionada"));

                target.classList.add("categoria-seleccionada");
            }
        });
    });

    cargarTodosLosProductos();
}

function cargarTodosLosProductos() {
    fetch('../php/productos.php')
        .then(response => {
            if (!response.ok) {
                throw new Error('Error al obtener los productos');
            }
            return response.json();
        })
        .then(data => {
            productos = data; 
            mostrarProductos(data);
        })
        .catch(error => console.error('Error al obtener los productos:', error));
}

function filtrarProductos(categoriaID) {
    fetch(`../php/filtro_productos.php?categoriaID=${categoriaID}`)
        .then(response => {
            if (!response.ok) {

            }
            return response.json();
        })
        .then(data => {
            mostrarProductos(data);
        })
        .catch(error => console.error('Error al obtener los productos:', error));
}

function mostrarProductos(productos) {
    mainContent.innerHTML = "";

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
        mainContent.appendChild(div);
    });

    actualizaBotonesAgregar();
}

function actualizaBotonesAgregar() {
    const botonesAgregar = document.querySelectorAll(".producto-agregar");
    botonesAgregar.forEach(boton => {
        boton.addEventListener("click", (event) => agregarAlCarrito(event.target));
    });
}

function agregarAlCarrito(boton) {
    const idBoton = boton.id;
    const productoAgregado = productos.find(producto => producto.ID_Pro === idBoton);

    if (productoAgregado) {
        if (productosCarrito.some(producto => producto.ID_Pro === idBoton)) {
            const index = productosCarrito.findIndex(producto => producto.ID_Pro === idBoton);
            productosCarrito[index].cantidad++;
        } else {
            productoAgregado.cantidad = 1;
            productosCarrito.push(productoAgregado);
        }

        localStorage.setItem("productos-en-carrito", JSON.stringify(productosCarrito));
    } else {
        console.error('Producto no encontrado');
    }
}

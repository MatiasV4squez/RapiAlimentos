function realizarCompra() {
    var tipoPago = document.getElementById('tipo-tarjeta').value;
    alert('Compra realizada con éxito. Tipo de pago: ' + tipoPago);
    window.location.replace('../index.html'); 
}

document.addEventListener("DOMContentLoaded", function () {
    var totalCarrito = localStorage.getItem("totalCarrito");
    document.getElementById("total").innerText = totalCarrito || "$0";
});

document.getElementById("contactForm").addEventListener("submit", function (event) {
    event.preventDefault();
    document.getElementById("exitoMensaje").style.display = "block";
    setTimeout(function () {
        document.getElementById("exitoMensaje").style.display = "none";
    }, 3000); 
});

document.getElementById("facebookLink").addEventListener("click", function () {
    window.location.href = "www.facebook.com";
});

document.getElementById("twitterLink").addEventListener("click", function () {
    window.location.href = "www.twitter.com";
});

document.getElementById("instagramLink").addEventListener("click", function () {
    window.location.href = "www.instagram.com";
});
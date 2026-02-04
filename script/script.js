// Esperar a que cargue la página
window.onscroll = function () {
    let miBoton = document.getElementById("botonSubir");
    if (miBoton) { // Verificamos que el botón exista
        if (document.body.scrollTop > 300 || document.documentElement.scrollTop > 300) {
            miBoton.style.display = "block";
        } else {
            miBoton.style.display = "none";
        }
    }
};

function subirArriba() {
    window.scrollTo({
        top: 0,
        behavior: 'smooth'
    });
}
// ---------- CERRAR SESIÓN ----------
document.addEventListener("DOMContentLoaded", () => {
    const btnLogout = document.querySelector(".btn-outline");

    if (btnLogout) {
        btnLogout.addEventListener("click", () => {
            alert("Sesión cerrada.");
            window.location.href = "login.html";
        });
    }
});

// ---------- BOTONES DE VER DETALLES ----------
const verDetallesBtns = document.querySelectorAll(".btn-primary");

verDetallesBtns.forEach(btn => {
    btn.addEventListener("click", () => {
        window.location.href = "trip-details.html";
    });
});

// ---------- BLOQUEO DE BOTONES DESHABILITADOS ----------
const disabledButtons = document.querySelectorAll(".btn-disabled");

disabledButtons.forEach(btn => {
    btn.addEventListener("click", e => {
        e.preventDefault();
        alert("Lo sentimos, esta gira no tiene cupos.");
    });
});
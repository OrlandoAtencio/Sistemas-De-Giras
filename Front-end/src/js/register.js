// =============================
// VALIDACIÓN DE REGISTRO UTP
// =============================

document.addEventListener("DOMContentLoaded", () => {
    const form = document.querySelector("#register-form");

    form.addEventListener("submit", (e) => {
        e.preventDefault(); // evita recargar la página

        // Obtener campos
        const nombre = document.querySelector("#nombre");
        const apellido = document.querySelector("#apellido");
        const email = document.querySelector("#email");
        const password = document.querySelector("#password");
        const nivel = document.querySelector("#nivelAcademico");
        const facultad = document.querySelector("#facultad");
        const file = document.querySelector("#file");

        // Validación básica
        if (nombre.value.trim() === "") {
            alert("El nombre es obligatorio");
            return;
        }

        if (apellido.value.trim() === "") {
            alert("El apellido es obligatorio");
            return;
        }

        if (!email.value.endsWith("@utp.ac.pa")) {
            alert("El correo debe ser institucional @utp.ac.pa");
            return;
        }

        if (password.value.length < 6) {
            alert("La contraseña debe tener mínimo 6 caracteres");
            return;
        }

        if (file.files.length === 0) {
            alert("Debe subir el recibo de matrícula");
            return;
        }

        // Si todo está bien → simula registro
        alert("Registro exitoso");

        // Redirigir al login
        window.location.href = "login.html";
    });
});
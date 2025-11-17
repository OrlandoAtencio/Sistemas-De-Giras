document.addEventListener("DOMContentLoaded", () => {
    const form = document.getElementById("login-form");
    const emailInput = document.getElementById("email");
    const passwordInput = document.getElementById("password");

    form.addEventListener("submit", (e) => {
        e.preventDefault(); // Evitar que recargue la página

        clearErrors();
        let isValid = true;

        // Validar email
        if (emailInput.value.trim() === "") {
            showError(emailInput, "El correo es obligatorio");
            isValid = false;
        }

        // Validar contraseña
        if (passwordInput.value.trim() === "") {
            showError(passwordInput, "La contraseña es obligatoria");
            isValid = false;
        }

        if (!isValid) return;

        // --- Simulación de login por tipo de usuario ---
        const email = emailInput.value.trim().toLowerCase();

        if (email === "estudiante@utp.ac.pa") {
            window.location.href = "estudiante.html";
        }
        else if (email === "coordinador@utp.ac.pa") {
            window.location.href = "coordinador.html";
        }
        else {
            alert("Usuario no reconocido. Usa los correos de prueba.");
        }
    });
});

// ---- Funciones auxiliares ----

function showError(input, message) {
    const container = input.parentElement;
    const errorText = container.querySelector("small");
    errorText.textContent = message;
    errorText.style.display = "block";
}

function clearErrors() {
    const errors = document.querySelectorAll(".form-control small");
    errors.forEach(error => {
        error.textContent = "";
        error.style.display = "none";
    });
}
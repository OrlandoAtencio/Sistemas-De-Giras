// =============================
// VALIDACIÓN DE REGISTRO UTP (MODIFICADO PARA 2 PASOS)
// =============================

document.addEventListener("DOMContentLoaded", () => {

    const paso1 = document.getElementById("paso1");
    const paso2 = document.getElementById("paso2");

    const btnSiguiente = document.getElementById("btn-siguiente");
    const btnRegistrar = document.getElementById("btn-registrar");
    const btnVolver = document.getElementById("btn-volver"); // ← AGREGADO

    // CAMPOS
    const nombre = document.getElementById("nombre");
    const apellido = document.getElementById("apellido");
    const email = document.getElementById("email");

    const cedula = document.getElementById("cedula");
    const facultad = document.getElementById("facultad");

    const password = document.getElementById("password");
    const confirmPassword = document.getElementById("confirmPassword");


    // =============================
    // PASO 1 → VALIDAR Y AVANZAR
    // =============================
    btnSiguiente.addEventListener("click", () => {

        if (nombre.value.trim() === "") return alert("El nombre es obligatorio");
        if (apellido.value.trim() === "") return alert("El apellido es obligatorio");
        if (!email.value.includes("@")) return alert("El correo electrónico no es válido");

        paso1.style.display = "none";
        paso2.style.display = "block";

        const progressBar = document.getElementById("progress-bar");
        if (progressBar) progressBar.style.width = "55%";
    });


    // =============================
    // BOTÓN VOLVER
    // =============================
    btnVolver.addEventListener("click", () => {
        paso2.style.display = "none";
        paso1.style.display = "block";

        const progressBar = document.getElementById("progress-bar");
        if (progressBar) progressBar.style.width = "0%";
    });


    // =============================
    // PASO 2 → REGISTRAR EN BACKEND
    // =============================
    btnRegistrar.addEventListener("click", async () => {

        if (cedula.value.trim() === "") return alert("La cédula es obligatoria");
        if (facultad.value === "") return alert("Debe seleccionar una facultad");
        if (password.value.length < 6) return alert("La contraseña debe tener mínimo 6 caracteres");
        if (password.value !== confirmPassword.value) return alert("Las contraseñas no coinciden");

        btnRegistrar.disabled = true;
        const btnText = btnRegistrar.textContent;
        btnRegistrar.textContent = "Registrando...";

        try {
            const response = await fetch('../api/register.php', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({
                    nombre: nombre.value.trim(),
                    apellido: apellido.value.trim(),
                    email: email.value.trim(),
                    cedula: cedula.value.trim(),
                    facultad: facultad.value,
                    password: password.value,
                    confirmPassword: confirmPassword.value
                })
            });

            const result = await response.json();

            if (result.success) {
                alert("¡Registro exitoso! Bienvenido/a");
                window.location.href = "user-dashboard.html";
            } else {
                alert(result.message || 'Error al registrar');
                btnRegistrar.disabled = false;
                btnRegistrar.textContent = btnText;
            }

        } catch (error) {
            console.error('Error:', error);
            alert('Error de conexión. Por favor intente nuevamente.');
            btnRegistrar.disabled = false;
            btnRegistrar.textContent = btnText;
        }

        const progressBar = document.getElementById("progress-bar");
        if (progressBar) progressBar.style.width = "100%";
    });

});
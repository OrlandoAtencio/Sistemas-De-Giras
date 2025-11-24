// MODALES
const modalPago = document.querySelectorAll("dialog")[0];
const modalConfirm = document.querySelectorAll("dialog")[1];

// BOTÓN PRINCIPAL
const btnRegistrar = document.querySelector("main section button");

// ABRIR PRIMER MODAL
btnRegistrar.addEventListener("click", () => {
    modalPago.showModal();
});

// CANCELAR PRIMER MODAL
modalPago.querySelector("button[type='button']").addEventListener("click", () => {
    modalPago.close();
});

// CONTINUAR → ABRE MODAL CONFIRMACIÓN
modalPago.addEventListener("submit", (e) => {
    e.preventDefault();
    modalPago.close();
    modalConfirm.showModal();
});

// CANCELAR CONFIRMACIÓN
modalConfirm.querySelector("button:first-of-type").addEventListener("click", () => {
    modalConfirm.close();
});

// CONFIRMAR REGISTRO
modalConfirm.querySelector("button:last-of-type").addEventListener("click", () => {
    modalConfirm.close();
    alert("Registro enviado al coordinador ✔");
});
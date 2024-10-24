document.addEventListener("turbolinks:load", () => {
    const toggleButton = document.getElementById('toggleFormButton');
    const formContainer = document.getElementById('formContainer');

    formContainer.classList.add('d-none');

    toggleButton.addEventListener('click', () => {
        formContainer.classList.toggle('d-none');
        toggleButton.textContent = formContainer.classList.contains('d-none') ? 'Показать форму' : 'Скрыть форму';
    });
});

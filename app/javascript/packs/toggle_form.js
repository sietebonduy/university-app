document.addEventListener("turbolinks:load", () => {
    const toggleButton = document.getElementById('toggleFormButton');
    const formContainer = document.getElementById('formContainer');

    if (!toggleButton || !formContainer) {
        console.error("Кнопка или контейнер формы не найдены");
        return;
    }

    formContainer.classList.add('d-none'); // Скрыть форму по умолчанию

    toggleButton.addEventListener('click', () => {
        formContainer.classList.toggle('d-none'); // Переключаем класс
        toggleButton.textContent = formContainer.classList.contains('d-none') ? 'Показать форму' : 'Скрыть форму'; // Меняем текст кнопки
    });
});

document.addEventListener('DOMContentLoaded', () => {
    const loginForm = document.getElementById('loginForm');
    const registerForm = document.getElementById('registerForm');

    if (loginForm) {
        loginForm.addEventListener('submit', async (e) => {
            e.preventDefault();
            const formData = new FormData(loginForm);
            const res = await fetch('../ajax/login.php', {
                method: 'POST',
                body: formData
            });
            const text = await res.text();
            alert(text);
        });
    }

    if (registerForm) {
        registerForm.addEventListener('submit', async (e) => {
            e.preventDefault();
            const formData = new FormData(registerForm);
            const res = await fetch('../ajax/register.php', {
                method: 'POST',
                body: formData
            });
            const text = await res.text();
            alert(text);
        });
    }
});

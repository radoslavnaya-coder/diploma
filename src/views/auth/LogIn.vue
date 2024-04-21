<template>
    <div class="content">
        <div class="images">
            <img src="@/assets/images/auth/auth-image.jpg" alt="">
        </div>
        <div class="auth-form">
            <form>
                <div @click="$router.back()"><img src="@/assets/images/auth/auth-arrow.svg" alt="Назад"></div>
                <input type="text" placeholder="Логин">
                <input type="text" placeholder="Пароль">
                <button>Войти</button>
                <router-link to="/register">Ещё не зарегистрированы? Регистрация</router-link>
            </form>
        </div>
    </div>
</template>
<script>
</script>
<style scoped>
.images {
    display: flex;
    flex-direction: column;
    height: 100%;
}
.images img {
    max-width: 100%;
    max-height: 100vh;
}
.content {
    display: flex;
    flex-direction: row;
}
.auth-form {
    margin: auto;
}
.auth-form form {
    display: flex;
    flex-direction: column;
    gap: 0.5rem;
    font-size: 18px;
    width: 26rem;
}
.auth-form img {
    border: 1px solid #7E2513;
    padding: 1rem;
    filter: grayscale(40%);
}
.auth-form img:hover {
    filter: grayscale(0);
}
.auth-form input, button {
    padding: 0.5rem 1.5rem 0.5rem 1.5rem;
}
.auth-form input {
    border: 1px solid #E36238;
    color: #7E2513;
}
.auth-form input::placeholder {
    color: #7E2513;
}
.auth-form input:focus {
    border: 1px solid #7E2513;
    outline: none;
}
.auth-form button {
    background: #E36238;
    color: white;
    margin-top: 0.5rem;
}
.auth-form button:hover {
    animation: fade 2s ease;
    background: #7E2513;
}
.auth-form a {
    text-align: center;
}
@keyframes fade {
    0% {
        background: #E36238;
    }
    50% {
        background: #7E2513;
    }
}
</style>
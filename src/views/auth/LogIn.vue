<template>
    <div class="content">
        <div class="images">
            <img src="@/assets/images/auth/auth-image.jpg" alt="">
        </div>
        <div class="auth-form">
            <form>
                <div><img @click="$router.back()" src="@/assets/images/auth/auth-arrow.svg" alt="Назад">Вход</div>
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

<style lang="scss" scoped>
.images {
    display: flex;
    flex-direction: column;
    height: 100%;

    img {
        max-width: 100%;
        max-height: 100vh;
    }
}

.content {
    display: flex;
    flex-direction: row;
}

.auth-form {
    margin: auto;

    form {
        display: flex;
        flex-direction: column;
        gap: 0.5rem;
        font-size: 18px;
        width: 26rem;
    }

    img {
        filter: grayscale(40%);
    }

    img:hover {
        filter: grayscale(0);
    }

    input,
    button {
        padding: 0.5rem 1.5rem 0.5rem 1.5rem;
    }

    input {
        border: 1px solid #E36238;
        color: #7E2513;
    }

    input::placeholder {
        color: #7E2513;
    }

    input:focus {
        border: 1px solid #7E2513;
        outline: none;
    }

    button {
        background: #E36238;
        color: white;
        margin-top: 0.5rem;
    }

    button:hover {
        animation: fade 2s ease;
        background: #7E2513;
    }

    a {
        text-align: center;
    }
}

form div {
    display: flex;
    align-items: center;
    color: #7E2513;
    gap: 6rem;
    font-size: 20px;
    padding: 1rem 0;
    img {
        cursor: pointer;
    }
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

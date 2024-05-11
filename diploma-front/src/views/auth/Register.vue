<template>
  <div class="content">
    <div class="images">
      <img src="@/assets/images/auth/auth-image.jpg" alt="" />
    </div>
    <div class="auth-form">
      <form>
        <div @click="$router.back()">
          <img
            src="@/assets/images/auth/auth-arrow.svg"
            alt="Назад"
          />Регистрация
        </div>
        <input v-model="form.name" type="text" placeholder="Логин" />
        <input v-model="form.mail" type="email" placeholder="E-mail" />
        <input v-model="form.phone" type="tel" placeholder="+7(999)999-99-99" />
        <input v-model="form.password" type="password" placeholder="Пароль" />
        <input
          v-model="form.repeatPassword"
          type="password"
          placeholder="Повторение пароля"
        />
        <button @click.prevent="sendData">Зарегистрироваться</button>
        <router-link to="/login">Уже зарегистрированы? Войти</router-link>
      </form>
    </div>
  </div>
</template>

<script>
import { reactive } from "vue";
import { instance } from "@/components/axios/instance";

export default {
  setup() {
    const form = reactive({
      name: "",
      mail: "",
      phone: "",
      password: "",
      repeatPassword: "",
    });

    const sendData = async () => {
      if (form.password === form.repeatPassword) {
        try {
          const response = await instance.post(
            "/register",
            {
              name: form.name,
              email: form.mail,
              phone: form.phone,
              password: form.password,
            },
            {
              headers: {
                "Content-type": "application/json",
              },
            }
          );
          form.value = response.data;
        } catch (err) {
          throw new Error(err);
        }
      }
      else {
        throw new Error(err)
      }
    };
    return {
      form,
      sendData,
    };
  },
};
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

  img {
    filter: grayscale(40%);
  }

  img:hover {
    filter: grayscale(0);
  }

  form {
    display: flex;
    flex-direction: column;
    gap: 0.5rem;
    font-size: 18px;
    width: 26rem;
  }

  input,
  button {
    padding: 0.5rem 1.5rem 0.5rem 1.5rem;
  }

  input {
    border: 1px solid #e36238;
    color: #7e2513;
  }

  input::placeholder {
    color: #7e251380;
  }

  input:focus {
    border: 1px solid #7e2513;
    outline: none;
  }

  button {
    background: #e36238;
    color: white;
    margin-top: 0.5rem;
  }

  button:hover {
    animation: fade 2s ease;
    background: #7e2513;
  }

  a {
    text-align: center;
  }
}

form div {
  display: flex;
  align-items: center;
  color: #7e2513;
  padding: 1rem 0;
  gap: 4.5rem;
  font-size: 20px;

  img {
    cursor: pointer;
  }
}

@keyframes fade {
  0% {
    background: #e36238;
  }

  50% {
    background: #7e2513;
  }
}
</style>

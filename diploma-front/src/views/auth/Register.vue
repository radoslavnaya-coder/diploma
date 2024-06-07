<template>
  <div class="content">
    <div class="images">
      <img src="@/assets/images/auth/auth-image.jpg" alt="" />
    </div>
    <div class="auth-form">
      <form>
        <div class="arrow" @click="$router.back()">
          <img
            src="@/assets/images/auth/auth-arrow.svg"
            alt="Назад"
          />Регистрация
        </div>
        <input  v-model="form.name" type="text" placeholder="Логин" :class="[{ error: v$.name.$error },{ notError: !v$.name.$error}]" />
        <small v-if="v$.name.$error">Логин должен быть не меньше 3 букв</small>
        <input v-model="form.mail" type="email" placeholder="E-mail" :class="[{ error: v$.mail.$error },{ notError: !v$.mail.$error}]" />
        <small v-if="v$.mail.$error">Ошибка в написании почты</small>
        <input v-model="form.phone" type="tel" placeholder="+7(999)999-99-99" :class="[{ error: v$.phone.$error },{ notError: !v$.phone.$error}]" />
        <small v-if="v$.phone.$error">Неправильный формат номера</small>
        <input v-model="form.password" type="password" placeholder="Пароль" :class="[{ error: v$.password.$error },{ notError: !v$.password.$error}]" />
        <small v-if="v$.password.$error">Пароль должен содержать не менее 6 знаков, используйте цифры и буквы</small>
        <input
          v-model="form.repeatPassword"
          type="password"
          placeholder="Повторение пароля"
          :class="[{ error: v$.repeatPassword.$error },{ notError: !v$.repeatPassword.$error}]"
        />
        <small v-if="v$.repeatPassword.$error">Пароли не совпадают</small>
        <div class="checkbox-wrapper-21">
          <label class="control control--checkbox">
            Согласен с политикой конфиденциальности
            <input
              v-model="form.isAgree"
              :true-value="1"
              :false-value="0"
              type="checkbox"
            />
            <div class="control__indicator"></div>
          </label>
          <small v-if="v$.isAgree.$error" :class="{ agreeError: v$.isAgree.$error }">Подтвердите согласие с политикой конфиденциальности</small>
        </div>
        <button @click.prevent="sendData">Зарегистрироваться</button>
        <router-link to="/login">Уже зарегистрированы? Войти</router-link>
      </form>
    </div>
  </div>
</template>

<script>
import { reactive, ref } from "vue";
import { instance } from "@/components/axios/instance";
import router from "@/router";
import { useVuelidate } from "@vuelidate/core";
import { required, minLength, email, numeric, alphaNum, sameAs } from "@vuelidate/validators";

export default {
  setup() {
    const error = ref(false);
    const form = reactive({
      name: "",
      mail: "",
      phone: "",
      password: "",
      repeatPassword: "",
      isAgree: "",
    });
    const rules = {
      name: { required, minLength: minLength(3) },
      password: { required, alphaNum, minLength: minLength(6) },
      mail: { required, email },
      phone: { required, numeric },
      repeatPassword: { required },
      isAgree: { sameAs: sameAs(1)}
    };
    const v$ = useVuelidate(rules, form);

    const sendData = async () => {
      v$.value.$touch();
      if (v$.value.$error) {
        error.value = true;
        return;
      }
      if (form.password === form.repeatPassword && form.isAgree === 1) {
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
          router.push("/login");
        } catch (err) {
          throw new Error(err);
        }
      } else {
        throw new Error(err);
      }
    };
    return {
      form,
      sendData,
      v$,
      error
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
  }

  input,
  button {
    padding: 0.5rem 1.5rem 0.5rem 1.5rem;
  }

  small {
    color: #7e2513;
  }

  input {
    border: 1px solid #e36238;
    color: #7e2513;
  }
/* validate */
  .error {
    outline: 1px solid red;
  }
  .notError:focus{
    border: 1px solid #A9DC4F;
  }
  .agreeError {
    color: red;
  }
/* end validate */
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

.arrow {
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

/* checkbox */
.checkbox-wrapper-21 .control {
  color: #7e2513;
  display: block;
  position: relative;
  padding-left: 30px;
  cursor: pointer;
  font-size: 16px;
}
.checkbox-wrapper-21 .control input {
  position: absolute;
  z-index: -1;
  opacity: 0;
}
.checkbox-wrapper-21 .control__indicator {
  position: absolute;
  top: 2px;
  left: 0;
  height: 20px;
  width: 20px;
  border: 1px solid #e36238;
  background: none;
}
.checkbox-wrapper-21 .control input:disabled ~ .control__indicator {
  background: #e6e6e6;
  opacity: 0.6;
  pointer-events: none;
}
.checkbox-wrapper-21 .control__indicator:after {
  content: "";
  position: absolute;
  display: none;
}
.checkbox-wrapper-21 .control input:checked ~ .control__indicator:after {
  display: block;
}
.checkbox-wrapper-21 .control--checkbox .control__indicator:after {
  left: 6.5px;
  top: 1px;
  width: 6px;
  height: 12px;
  border: solid #7e2513;
  border-width: 0 2px 2px 0;
  transform: rotate(45deg);
}
.checkbox-wrapper-21
  .control--checkbox
  input:disabled
  ~ .control__indicator:after {
  border-color: #7b7b7b;
}
/* end checkbox */
@media (max-width: 576px) {
  * {
    font-size: 14px;
  }
  .arrow {
    font-size: 14px;
  }
}
@media (max-width: 1046px) {
  .images{
    img {
      max-height: 60vh;
    }
  }
  .content {
    flex-direction: column;
    align-items: center;
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

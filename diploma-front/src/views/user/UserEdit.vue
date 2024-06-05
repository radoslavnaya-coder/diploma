<script setup>
import Header from "../../components/Header.vue";
import userProfileImage from "../../components/userProfileImage.vue";
import router from "@/router";

const token = localStorage.getItem("token");
if (token == null) {
  router.push("/");
}
</script>

<template>
  <div>
  <Header />
  <div class="back-arrow">
    <img
      @click="$router.back()"
      src="@/assets/images/auth/auth-arrow.svg"
      alt="Назад"
    />
  </div>
  <userProfileImage />
  <div class="change">
    <div class="photo-add">
      <label for="photo">Выбрать фото<input type="file" name="photo" /></label>
      <p>Загрузить</p>
    </div>
  </div>
  <div class="change">
    <div class="nick-add">
      <input type="text" name="photo" placeholder="vilaskas" />
      <p>Изменить ник</p>
    </div>
  </div>
</div>
</template>

<script>
import { ref } from 'vue'

export default {
  setup() {
    const userName = ref()

    return { userName }
  }
}
</script>

<style lang="scss" scoped>
.back-arrow {
    max-width: 1170px;
    margin: 4rem auto;
}
.change {
  max-width: 500px;
  margin: 0.5rem auto;
  text-align: center;
}
.photo-add {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 1rem;
  p {
    background: #e36238;
    padding: 0.5rem 2rem;
    color: white;
    text-align: center;
    cursor: pointer;
  }
  input {
    border: #e36238;
    position: absolute;
    opacity: 0;
    width: 100%;
    height: 100%;
    z-index: 2;
    left: 0;
    cursor: pointer;
  }
  label {
    border: 1px solid #e36238;
    padding: 0.5rem 1.5rem;
    position: relative;
    z-index: 1;
    cursor: pointer;
    color: #7e2513;
  }
}
.nick-add {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 1rem;
  p {
    background: #e36238;
    padding: 0.5rem 2rem;
    color: white;
    text-align: center;
    cursor: pointer;
  }
  input {
    border: #e36238;
    border: 1px solid #e36238;
    padding: 0.5rem 1rem;
    color: #7e2513;
    text-align: center;
  }
  input::placeholder {
    color: #7e2513;
  }
  input:focus {
    outline: none;
  }
}
</style>

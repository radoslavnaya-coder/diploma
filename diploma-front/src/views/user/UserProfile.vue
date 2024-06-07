<script setup>
import Header from "../../components/Header.vue";
import userProfileImage from "../../components/userProfileImage.vue";
import ImagesGridForUser from "../../components/imagesGridForUser.vue";
import router from "@/router";

function logout() {
  localStorage.clear();
  router.push("/");
}
const token = localStorage.getItem("token");
if (token == null) {
  router.push("/");
}
</script>

<template>
  <div>
    <Header />
    <div class="user-profile">
      <userProfileImage />
    </div>
    <div class="buttons">
      <router-link to="/user/edit">Настройки профиля</router-link>
      <router-link to="" @click.prevent="logout()">Выйти</router-link>
    </div>
    <div class="content">
      <h2>Ваши публикации</h2>
      <ImagesGridForUser />
    </div>
  </div>
</template>

<style lang="scss" scoped>
.user-profile {
  margin: 9.5rem 0 0 0;
}
.content {
  max-width: 1500px;
  h2 {
    text-align: center;
    margin: 1rem 0;
    color: #7e2513;
    font-weight: 500;
  }
}
.buttons {
  max-width: 500px;
  margin: 2rem auto 6rem auto;
  text-align: center;
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 0.5rem;
  @media (max-width: 576px) {
    grid-template-columns: 1fr;
    margin: 2rem 1rem 6rem 1rem;
  }
  a {
    padding: 0.5rem 0;
    font-size: 18px;
  }
  a:nth-child(1) {
    border: 1px solid #e36238;
  }
  a:nth-child(2) {
    background: #e36238;
    color: white;
    border: 1px solid #e36238;
  }
}
</style>

<template>
  <div>
    <welcomeHeader v-if="userId == null" />
    <Header v-if="userId != null" />
    <div class="content" style="padding-top: 12rem">
      <img src="@/assets/images/start-page/start-page__first.jpg" alt="" />
    </div>
    <img
      style="max-width: 90%"
      src="@/assets/images/start-page/start-page__second.jpg"
      alt=""
    />
    <div class="content">
      <img src="@/assets/images/start-page/start-page__third.jpg" alt="" />
    </div>
    <div class="inline">
      <img src="@/assets/images/start-page/start-page__four.jpg" alt="" />
      <img src="@/assets/images/start-page/start-page__five.jpg" alt="" />
    </div>
    <footer>
      <div class="content">
        <a href="#top"><b>Crespire</b></a>
        <router-link to="/about">О сайте</router-link>
        <router-link to="/">Политика конфиденциальности</router-link>
        <router-link to="/">Карта сайта</router-link>
        <router-link to="/">Обратная связь</router-link>
      </div>
    </footer>
  </div>
</template>

<script>
import welcomeHeader from "../components/welcomeHeader.vue";
import Header from "../components/Header.vue";

export default {
  components: {
    welcomeHeader,
    Header
  },
  setup() {
    const userId = localStorage.getItem('userId')

    return { userId }
  }
};
</script>

<style lang="scss" scoped>
.content img {
  width: 100%;
}
footer {
  background: #7e2513;
  .content {
    padding: 0.3rem 0;
    a {
      color: #fffef4;
      margin: 0 0.5rem;
    }
  }
}
.inline {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  width: 100%;
  gap: 2rem;
  margin-bottom: 2rem;
  img:nth-child(1) {
    max-width: 100%;
  }
  img:nth-child(2) {
    max-width: 30%;
  }
}
@media (max-width: 576px) {
  .inline {
    flex-direction: column;
  }
}
</style>
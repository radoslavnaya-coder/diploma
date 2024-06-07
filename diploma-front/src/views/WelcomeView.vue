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
    <Footer />
  </div>
</template>

<script>
import welcomeHeader from "../components/welcomeHeader.vue";
import Header from "../components/Header.vue";
import Footer from "../components/Footer.vue";

export default {
  components: {
    welcomeHeader,
    Header,
    Footer,
  },
  setup() {
    const userId = localStorage.getItem("userId");

    return { userId };
  },
};
</script>

<style lang="scss" scoped>
.content img {
  max-width: 100%;
}
.inline {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  width: 100%;
  gap: 2rem;
  margin-bottom: 2rem;
  img:nth-child(1) {
    max-width: 50%;
  }
  img:nth-child(2) {
    max-width: 30%;
  }
}
</style>

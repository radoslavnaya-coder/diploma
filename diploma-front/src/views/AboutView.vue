<template>
  <div>
    <welcomeHeader v-if="userId == null" />
    <Header v-if="userId != null" />
    <div class="content">
      <div>
        <h1>О сайте</h1>
        <p class="about-text">
          Этот сайт предназначен для изучения и анализа изображений. На нём
          можно добавлять изображения, сохранять изображения пользователей в
          коллекции, искать изображения с помощью поиска и сортировать их по
          категориям. К добавленным изображениям можно присвоить категорию и
          теги для поиска.
        </p>
        <p>
          Для того чтобы зарегистрироваться или авторизоваться, необходимо нажать на кнопку «Войти» в правом верхнем углу экрана.
        </p>
        <p>
          При появлении ошибок и возникновении пожеланий просьба использовать ссылку обратной связи внизу экрана.
        </p>
        <p>
          Доброго вам времени суток!
        </p>
      </div>
      <div class="about-text__logo">
        <img src="@/assets/images/logo-lg.png" alt="logo" />
      </div>
    </div>
    <Footer />
  </div>
</template>

<script>
import welcomeHeader from "../components/welcomeHeader.vue";
import Header from "../components/Header.vue";
import Footer from "@/components/Footer.vue";

export default {
  components: {
    welcomeHeader,
    Header,
    Footer
  },
  setup() {
    const userId = localStorage.getItem('userId')

    return { userId }
  }
};
</script>

<style lang="scss" scoped>
.content {
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin: 4rem auto;
  color: #7e2513;
  h1 {
    font-weight: 400;
    margin: 1rem 0;
  }
  p {
    margin: 0.5rem 0;
    max-width: 55rem;
    padding: 1rem 4rem;
  }
  img {
    max-width: 50%;
  }
  .about-text {
    background: #ffbe98;
    padding: 2rem 4rem;
  }
  .about-text__logo img {
    min-width: 100%;
  }
  @media (max-width: 768px) {
    p{
      padding: 1rem;
    }
    .about-text {
      padding: 1.5rem;
    }
  }
}
footer {
  position: absolute;
  bottom: 0;
  width: 100%;
  @media (max-width: 865px) {
    position: initial;
  }
}
</style>

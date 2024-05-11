<script setup>
import Header from "../components/Header.vue";
</script>
<template>
  <Header />
  <div class="content">
    <div>
    <h1>О сайте</h1>
    <p class="about-text">
      Этот сайт предназначен для изучения и анализа изображений. На нём можно
      добавлять изображения, сохранять изображения пользователей в коллекции,
      искать изображения с помощью поиска и сортировать их по категориям. К
      добавленным изображениям можно присвоить категорию и теги для поиска.
    </p>
    <p>
      Lorem ipsum dolor sit amet consectetur adipisicing elit. Maiores obcaecati
      at perferendis possimus doloremque reprehenderit saepe mollitia ipsum.
      Quisquam provident, impedit voluptas perferendis iste consectetur
      reprehenderit dignissimos repellendus perspiciatis necessitatibus?
    </p>
    <p>
      Lorem ipsum dolor sit amet consectetur adipisicing elit. Maiores obcaecati
      at perferendis possimus doloremque reprehenderit saepe mollitia ipsum.
      Quisquam provident, impedit voluptas perferendis iste consectetur
      reprehenderit dignissimos repellendus perspiciatis necessitatibus?
    </p>
    </div>
    <div class="about-text__logo">
    <img src="@/assets/images/logo-lg.png" alt="logo">
    </div>
  </div>
  <footer>
  <div class="content">
    <a href="#top"><b>Crespire</b></a>
    <router-link to="/about">О сайте</router-link>
    <router-link to="/">Политика конфиденциальности</router-link>
  </div>
  </footer>
</template>
<style lang="scss" scoped>
.content {
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin: 2rem auto;
  color: #7E2513;
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
    background: #FFBE98;
    padding: 2rem 4rem;
  }
  .about-text__logo img {
    min-width: 100%;
  }
}
footer {
  background: #7e2513;
  position: absolute;
  bottom: 0;
  width: 100%;
  .content {
    display: block;
    margin: 0 auto;
    padding: 0.3rem 0;
    a {
    color: #FFFEF4;
    margin: 0 0.5rem;
  }
  } 
}
</style>

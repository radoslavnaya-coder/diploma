<template>
  <footer>
    <div class="content">
      <a href="#top"><b>Crespire</b></a>
      <router-link to="/about">О сайте</router-link>
      <router-link to="/">Политика конфиденциальности</router-link>
      <router-link to="/">Карта сайта</router-link>
      <a href="mailto:killaarte13@gmail.com">Обратная связь</a>
    </div>
  </footer>
</template>

<style lang="scss" scoped>
footer {
  background: #7e2513;
  .content {
    padding: 0.1rem 0;
    display: flex;
    gap: 0.5rem;
    @media (max-width: 768px) {
      flex-direction: column;
      text-align: center;
    }
    @media (max-width: 576px) {
        gap: 0.1rem;
    }
    a {
      color: #fffef4;
      @media (max-width: 576px) {
        font-size: 14px;
      }
    }
  }
}
</style>

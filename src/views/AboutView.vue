<script setup>
import Header from '../components/Header.vue';
</script>
<template>
    <Header />
    <div class="content">
        <h1>О сайте</h1>
        <p>Этот сайт предназначен для изучения и анализа изображений. На нём можно добавлять изображения, сохранять изображения пользователей в коллекции, искать изображения с помощью поиска и сортировать их по категориям. К добавленным изображениям можно присвоить категорию и теги для поиска.</p>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maiores obcaecati at perferendis possimus doloremque reprehenderit saepe mollitia ipsum. Quisquam provident, impedit voluptas perferendis iste consectetur reprehenderit dignissimos repellendus perspiciatis necessitatibus?</p>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maiores obcaecati at perferendis possimus doloremque reprehenderit saepe mollitia ipsum. Quisquam provident, impedit voluptas perferendis iste consectetur reprehenderit dignissimos repellendus perspiciatis necessitatibus?</p>
    </div>
</template>
<style scoped>
.content {
    margin: 2rem auto;
}
.content h1 {
    font-weight: 400;
    margin: 1rem 0;
}
.content p {
    margin: 0.5rem 0;
    max-width: 55rem;
}
.content img {
    max-width: 50%;
}
</style>
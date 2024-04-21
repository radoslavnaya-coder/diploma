<script setup>
import Header from '../../components/Header.vue'
import userProfileImage from '../../components/userProfileImage.vue'
import ImagesGrid from '../../components/imagesGrid.vue'
</script>

<template>
    <Header />
    <userProfileImage />
    <div class="buttons">
        <router-link to="/user/edit">Настройки профиля</router-link>
        <router-link to="/">Выйти</router-link>
    </div>
    <div class="content">
        <h2>Ваши публикации</h2>
        <ImagesGrid />
    </div>
</template>
<style scoped>
.content {
    max-width: 1500px;
}
.content h2 {
    text-align: center;
    margin: 1rem 0;
    color: #7E2513;
    font-weight: 500;
}
.buttons {
    max-width: 500px;
    margin: 2rem auto 6rem auto;
    text-align: center;
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 0.5rem;
}
.buttons a {
    padding: 0.5rem 0;
    font-size: 18px;
}
.buttons a:nth-child(1) {
    border: 1px solid #E36238;
}
.buttons a:nth-child(2) {
    background: #E36238;
    color: white;
    border: 1px solid #E36238;
}
</style>
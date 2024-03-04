<script setup>
import { RouterLink, RouterView } from 'vue-router'
import Header from './components/Header.vue'
</script>

<template>
  <Header />
  <main>
    <router-view />
  </main>
</template>
<style scoped>
@import "./assets/main.css";
</style>
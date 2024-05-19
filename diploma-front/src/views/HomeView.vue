<template>
  <div>
  <Header />
  <main>
    <Chip />
    <ImagesGrid />
  </main>
</div>
</template>

<script setup>
import Header from "../components/Header.vue"
import ImagesGrid from "../components/imagesGrid.vue"
import Chip from "../components/ChipGroup.vue"
</script>

<style lang="scss" scoped>
main {
  width: 100vw;
  padding: 1rem 12rem 2rem 14rem;
}
</style>

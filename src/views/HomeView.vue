<script setup>
import ImagesGrid from '../components/imagesGrid.vue'
</script>
<script>
export default {
  data: () => ({
    tags: [
      "Еда",
      "Своими руками",
      "Vacation",
      "Food",
      "Drawers",
      "Shopping",
      "Art",
      "Tech",
      "Creative Writing",
      "Еда",
      "Своими руками",
      "Vacation",
      "Food",
      "Drawers",
      "Shopping",
      "Art",
      "Tech",
      "Creative Writing",
    ],
  }),
}
</script>

<template>
  <main>
  <v-chip-group
  selected-class="orange"
  next-icon=""
  prev-icon=""
  show-arrows
  multiple
  >
    <v-chip 
    v-for="tag in tags"
    :key="tag"
    class="outlined-orange"
    variant="outlined"
    >
      {{ tag }}
    </v-chip>
  </v-chip-group>
    <ImagesGrid />
</main>
</template>
<style scoped>
main{
  width: 100vw;
  padding: 1.7rem 12rem 0 14rem;
}
.v-chip {
  border-radius: 0 !important;
  padding: 1.3rem 1.5rem !important;
  font-size: 18px !important;
  margin: 0 5px !important;
}
.orange{
  background: #E36238 !important;
  border: 1px solid #E36238;
  color: white !important;
}
.outlined-orange{
  background: none;
  border: 1px solid #E36238;
  color: #7E2513;
}
</style>

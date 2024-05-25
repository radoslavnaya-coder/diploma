<template>
  <v-chip-group selected-class="orange" show-arrows multiple>
    <v-chip
      v-for="category in categories"
      :key="category.id"
      class="outlined-orange"
      variant="outlined"
    >
      {{ category.name }}
    </v-chip>
  </v-chip-group>
</template>

<script>
import { ref, onMounted } from 'vue'
import { instance } from "@/components/axios/instance"

export default {
  setup() {
    const categories = ref()
    onMounted(() => {
    instance.get('/allCategory').then((res) => {
    categories.value = res.data
    })
    })
    return { categories }
  }
}
</script>

<style lang="scss" scoped>
.v-chip {
    border-radius: 0 !important;
    padding: 1.3rem 1.5rem !important;
    font-size: 18px !important;
    margin: 1rem 5px !important;
  }
  .orange {
    background: #e36238 !important;
    border: 1px solid #e36238;
    color: white !important;
  }
  .outlined-orange {
    background: none;
    border: 1px solid #e36238;
    color: #7e2513;
  }
</style>

<style lang="scss">
.mdi-chevron-left {
    background: url(@/assets/images/LeftArrow.svg);
}
.mdi-chevron-right {
    background: url(@/assets/images/LeftArrow.svg);
    rotate: 180deg;
}
</style>
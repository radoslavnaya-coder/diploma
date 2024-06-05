<template>
  <div>
    <Header />
    <main>
      <Chip />
      <ImagesGrid />
    </main>
  </div>
</template>

<script>
import Header from "../components/Header.vue";
import ImagesGrid from "../components/imagesGrid.vue";
import Chip from "../components/ChipGroup.vue";
import router from "@/router";

export default {
  components: {
    Header,
    ImagesGrid,
    Chip,
  },
  setup() {
    const token = localStorage.getItem("token");
    if (token == null) {
      router.push("/");
    }
  },
};
</script>

<style lang="scss" scoped>
main {
  width: 100vw;
  padding: 1rem 12rem 2rem 14rem;
}
</style>

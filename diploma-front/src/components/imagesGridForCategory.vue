<template>
  <div>
    <Masonry-wall
    v-if="postData[0] != null"
      :items="postData"
      :ssr-columns="1"
      :column-width="240"
      :gap="10"
    >
      <template #default="{ item }">
        <div style="max-height: 59rem">
          <img width="240" :src="`${item.img}`" alt="image" />
        </div>
      </template>
    </Masonry-wall>
    <div class="categoryText" v-else>
      <h3>Упс, записей нет.</h3>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    postData: Array,
  },
};
</script>

<style lang="scss" scoped>
.categoryText {
  text-align: center;
  h3 {
    color: #7e2513;
    font-weight: 400;
  }
}
</style>

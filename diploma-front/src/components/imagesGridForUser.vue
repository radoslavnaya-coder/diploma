<template>
  <div v-if="posts[0] != null">
    <Masonry-wall :items="posts" :ssr-columns="1" :column-width="240" :gap="10">
      <template #default="{ item }">
        <div style="max-height: 59rem">
          <img width="240" :src="`${item.img}`" alt="image" />
        </div>
      </template>
    </Masonry-wall>
  </div>
  <div class="not-empty" v-else>
    <h3>Публикаций нет. Сделайте свой первый пост!</h3>
  </div>
</template>

<script>
import { ref, onMounted } from "vue";
import { instance } from "@/components/axios/instance";

export default {
  setup() {
    const posts = ref([]);
    const token = localStorage.getItem("token");
    onMounted(() => {
      instance
        .get("/allPostsUser", {
          headers: {
            Authorization: "Bearer " + token,
          },
        })
        .then((res) => {
          posts.value = res.data;
        });
    });
    return { posts };
  },
};
</script>

<style lang="scss" scoped>
.not-empty {
  text-align: center;
  h3 {
  font-weight: 400;  
  color: #7E2513;
  }
}
</style>

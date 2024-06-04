<template>
  <Masonry-wall :items="posts" :ssr-columns="1" :column-width="240" :gap="10">
    <template #default="{ item }">
      <div style="max-height: 59rem">
        <img width="240" :src="`${item.img}`" alt="image" />
      </div>
    </template>
  </Masonry-wall>
</template>

<script>
import { ref, onMounted } from "vue";
import { instance } from "@/components/axios/instance";

export default {
  setup() {
    const posts = ref([]);
    const token = localStorage.getItem("token");
    onMounted(() => {
      instance.get("/allPostsUser", {
          headers: {
            "Authorization": "Bearer " + token,
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

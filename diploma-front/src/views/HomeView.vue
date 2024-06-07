<template>
  <div>
    <Header />
    <main>
      <v-chip-group
        v-model="form.categoryId"
        selected-class="orange"
        show-arrows
      >
        <v-chip
          v-for="category in categories"
          :key="category"
          :value="category.id"
          @click.prevent="selectCategory()"
          class="outlined-orange"
          variant="outlined"
        >
          {{ category.name }}
        </v-chip>
      </v-chip-group>
      <ImagesGrid v-if="postData == null || form.categoryId == null" />
      <ImagesGridForCategory v-else :postData="postData" />
    </main>
  </div>
</template>

<script>
import Header from "../components/Header.vue";
import ImagesGrid from "../components/imagesGrid.vue";
import ImagesGridForCategory from "../components/imagesGridForCategory.vue";
import { ref, reactive, onMounted } from "vue";
import { instance } from "@/components/axios/instance";
import router from "@/router";

export default {
  components: {
    Header,
    ImagesGrid,
    ImagesGridForCategory,
  },
  setup() {
    const token = localStorage.getItem("token");
    if (token == null) {
      router.push("/");
    }
    const postData = ref();
    const form = reactive({
      categoryId: "",
    });
    const categories = ref();
    onMounted(() => {
      instance.get("/allCategory").then((res) => {
        categories.value = res.data;
      });
    });
    const selectCategory = async () => {
      try {
        const response = await instance
          .post("/allPostsWhereCategory", {
            category_id: form.categoryId,
          })
          .then((res) => {
            postData.value = res.data;

            return postData;
          });
        form.value = response.data;
      } catch (err) {
        throw new Error(err);
      }
    };
    return { categories, form, selectCategory, postData };
  },
};
</script>

<style lang="scss" scoped>
main {
  width: 100vw;
  padding: 1rem 12rem 2rem 12rem;
  @media (max-width:1500px) {
    padding: 1rem 5rem 2rem 5rem;
  }
  @media (max-width: 576px) {
    padding: 1rem;
  }
}
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
.outlined-orange * {
  @media (max-width: 576px) {
    font-size: 14px;
  }
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

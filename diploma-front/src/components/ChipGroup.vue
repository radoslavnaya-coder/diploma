<template>
  <v-chip-group v-model="form.categoryId" selected-class="orange" show-arrows>
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
</template>

<script>
import { ref, reactive, onMounted } from "vue";
import { instance } from "@/components/axios/instance";

export default {
  setup() {
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
        const response = await instance.post("/allPostsWhereCategory", {
            category_id: form.categoryId,
          })
          .then(function (res) {
            postData.value = res.data;

            return postData
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

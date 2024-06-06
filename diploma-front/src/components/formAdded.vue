<template>
  <form class="content">
    <div class="photo">
      <!-- src="@/assets/images/photo-place.jpg" -->
      <img id="preview" :src="image" />
      <button @click.prevent="sendData()">Опубликовать</button>
    </div>
    <div>
      <div class="photo-add">
        <label for="photo"
          >Выбрать фото...<input
            ref="file"
            @change="imagePreview"
            type="file"
            name="photo"
            accept="image/*"
        /></label>
        <!-- <p>Загрузить</p> -->
      </div>
      <div class="parameters">
        <input v-model="form.name" type="text" placeholder="Название" />
        <select v-model="form.category">
          <option value="">Категория</option>
          <option
            v-for="category in categories"
            :key="category"
            :value="category.id"
          >
            {{ category.name }}
          </option>
        </select>
        <!-- <select v-model="form.keywords">
          <option value="">Теги для поиска</option>
          <option
            v-for="keyword in keywords"
            :key="keyword"
            :value="keyword.id"
          >
            {{ keyword.name }}
          </option>
        </select> -->
        <!-- <div class="tags" v-for="word in form.keywords" :key="word">
          <p>{{ word }}</p>
        </div> -->
      </div>
    </div>
  </form>
</template>

<script>
import { ref, reactive, onMounted } from "vue";
import { instance } from "@/components/axios/instance";
import router from "@/router";

export default {
  setup() {
    const image = ref("/src/assets/images/photo-place.jpg");
    const token = localStorage.getItem("token");
    const keywords = ref();
    const categories = ref();
    onMounted(() => {
      instance.get("/allCategory").then((res) => {
        categories.value = res.data;
      });
      instance.get("/allKeyWords").then((res) => {
        keywords.value = res.data;
      });
    });
    const form = reactive({
      name: "",
      category: "",
      keywords: "",
    });
    const file = ref();

    const imagePreview = (e) => {
      const reader = new FileReader();
      reader.onload = (event) => {
        image.value = event.target.result;
      };
      reader.readAsDataURL(e.target.files[0]);
    };

    const sendData = async () => {
      try {
        const formData = new FormData();
        formData.append("file", file.value.files[0]);
        formData.append("name", form.name);
        formData.append("category", form.category);
        formData.append("key_words", form.keywords);
        instance.post("/addPost", formData, {
          headers: {
            "Content-type": "multipart/form-data",
            Authorization: "Bearer " + token,
          },
        });
        router.push("/home");
      } catch (err) {
        throw new Error(err);
      }
    };
    return { form, image, file, keywords, categories, imagePreview, sendData };
  },
};
</script>

<style lang="scss" scoped>
input,
select {
  outline: none;
}

.content {
  display: flex;
  justify-content: center;
  margin: 2rem auto;
  gap: 2rem;
}

.photo {
  display: flex;
  flex-direction: column;

  img {
    max-height: 550px;
    max-width: 270px;
  }

  button {
    margin: 0.5rem 0;
    padding: 0.5rem;
    background: #e36238;
    color: white;
  }
}

.photo-add {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 1rem;

  p {
    background: #e36238;
    padding: 0.5rem 2rem;
    color: white;
    text-align: center;
    cursor: pointer;
  }

  input {
    border: #e36238;
    position: absolute;
    opacity: 0;
    width: 100%;
    height: 100%;
    z-index: 2;
    left: 0;
    cursor: pointer;
  }

  label {
    border: 1px solid #e36238;
    padding: 0.5rem 1.5rem;
    position: relative;
    z-index: 1;
    cursor: pointer;
  }
}

.parameters {
  display: flex;
  flex-direction: column;
  margin: 1rem 0;
  gap: 1rem;

  input,
  select {
    border: 1px solid #e36238;
    padding: 0.5rem 1.5rem;
    color: #7e2513;
  }

  select option {
    background: none;
    color: #7e2513;
  }
}

.parameters .parameters input::placeholder {
  color: #7e2513;
}

.tags {
  display: flex;
  flex-wrap: wrap;
  color: #7e2513;
  gap: 1rem;
  max-width: 23rem;

  p {
    border: 1px solid #e36238;
    padding: 0.5rem;
  }

  p::after {
    content: "x";
    padding-left: 1rem;
    cursor: pointer;
  }
}
</style>

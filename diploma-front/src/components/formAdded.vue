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
        <p>Загрузить</p>
      </div>
      <div class="parameters">
        <input v-model="form.name" type="text" placeholder="Название" />
        <select>
          <option value="1">Категория</option>
        </select>
        <input type="text" placeholder="Теги для поиска" />
        <div class="tags">
          <p>Многогранность</p>
          <p>Дизайн</p>
          <p>Радость</p>
          <p>Многогранность</p>
          <p>Дизайн</p>
          <p>Радость</p>
        </div>
      </div>
    </div>
  </form>
</template>

<script>
import { ref, reactive } from "vue";
import { instance } from "@/components/axios/instance";

export default {
  setup() {
    const image = ref('/src/assets/images/photo-place.jpg')
    const token = localStorage.getItem('token')
    const form = reactive({
      name: "",
    });
    const file = ref()

    const imagePreview = (e) => {
      const reader = new FileReader();
      reader.onload = (event) => {
        image.value = event.target.result;
      };
      reader.readAsDataURL(e.target.files[0]);
    }
    
    const sendData = async () => {
      
      try {
          const response = await instance.post(
            "/addPost",
            {
              name: form.name,
              img: file.value.files[0]
            },
            console.log(file.value.files[0]),
            {
              headers: {
                "Content-type": "application/json",
                "Authorization": 'Bearer '+ token
              },
            }
          );
          form.value = response.data;
        } catch (err) {
          throw new Error(err);
        }
    }
    return { form, image, file, sendData, imagePreview };
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
  margin: 2rem 0;
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

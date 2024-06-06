<template>
  <div>
    <Header />
    <div class="back-arrow">
      <img
        @click="$router.back()"
        src="@/assets/images/auth/auth-arrow.svg"
        alt="Назад"
      />
    </div>
    <userProfileImage />
    <div class="change">
      <div class="photo-add">
        <label for="photo">
          Выбрать фото
          <input ref="file" @change="selectFile" type="file" name="photo" accept="image/*"
        /></label>
        <p @click.prevent="updateImage()">Изменить фото</p>
      </div>
    </div>
    <div class="change">
      <div class="nick-add">
        <input
          v-model="form.name"
          type="text"
          name="photo"
          placeholder="Новый логин"
        />
        <p @click.prevent="updateName()">Изменить логин</p>
      </div>
    </div>
  </div>
</template>

<script>
import Header from "../../components/Header.vue";
import userProfileImage from "../../components/userProfileImage.vue";
import router from "@/router";
import { ref, reactive } from "vue";
import { instance } from "@/components/axios/instance";

export default {
  components: {
    Header,
    userProfileImage,
  },
  setup() {
    const token = localStorage.getItem("token");
    const file = ref();
    
    const form = reactive({
      name: "",
    });
    const selectFile = () => {
      console.log(file.value.files[0]);
    }
    const updateName = async () => {
      try {
        const response = await instance.put(
          "/updateUserName",
          {
            name: form.name,
          },
          {
            headers: {
              "Content-type": "application/json",
              Authorization: "Bearer " + token,
            },
          }
        );
        form.value = response.data;
        router.go(0);
      } catch (err) {
        throw new Error(err);
      }
    };
    const updateImage = async () => {
      try {
        const formData = new FormData();
        formData.append("file", file.value.files[0]);
        instance.post("/UpdatedataUser", formData, {
          headers: {
            "Content-type": "multipart/form-data",
            Authorization: "Bearer " + token,
          },
        });
        // router.go(0);
      } catch (err) {
        throw new Error(err);
      }
    };

    return { file, form, updateName, updateImage, selectFile };
  },
};
</script>

<style lang="scss" scoped>
.back-arrow {
  max-width: 1170px;
  margin: 4rem auto;
}
.change {
  max-width: 500px;
  margin: 0.5rem auto;
  text-align: center;
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
    color: #7e2513;
  }
}
.nick-add {
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
    border: 1px solid #e36238;
    padding: 0.5rem 1rem;
    color: #7e2513;
    text-align: center;
  }
  input::placeholder {
    color: #7e2513;
  }
  input:focus {
    outline: none;
  }
}
</style>

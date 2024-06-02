<template>
  <div class="content">
    <h3 class="foradmin-title">Добро пожаловать, Администратор!</h3>
    <div class="admin-panel">
      <div class="menu">
        <ul>
          <li>Категории</li>
          <li>Список пользователей</li>
          <li>Ключ-слова</li>
        </ul>
      </div>
      <div class="category-options">
        <div>
          <input v-model="form.name" type="text" placeholder="Название" />
          <button @click.prevent="sendData()">Добавить категорию</button>
        </div>
        <ul
          v-for="category in categories"
          :key="category.id"
          class="outlined-orange"
          variant="outlined"
        >
          <li>{{ category.name }}</li>
        </ul>
      </div>
    </div>
  </div>
</template>

<script>
import { ref, reactive, onMounted } from "vue";
import { instance } from "@/components/axios/instance";
import router from "@/router";

export default {
  setup() {
    const token = localStorage.getItem("token");
    const categories = ref();
    onMounted(() => {
      instance.get("/allCategory").then((res) => {
        categories.value = res.data;
      });
    });
    const form = reactive({
      name: "",
    });

    const sendData = async () => {
      try {
        const response = await instance.post(
          "/addCategory",
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
        router.go(0)
      } catch (err) {
        throw new Error(err);
      }
    };
    return { categories, form, sendData };
  },
};
</script>

<style lang="scss" scoped>
ul {
  list-style-type: none;
}
.admin-panel {
  display: flex;
  justify-content: space-around;
  margin: 6rem 0;
}
.foradmin-title {
  font-size: 24px;
  color: #7e2513;
  text-align: center;
  font-weight: 400;
  margin: 1.5rem 0;
}
.menu {
  ul li {
    width: 12rem;
  }
}
.category-options {
  width: 100%;
  max-width: 500px;
  margin: 0 auto;
  div {
    margin-bottom: 4rem;
    display: flex;
    gap: 1rem;
    align-items: center;
    justify-content: space-between;
    input,
    button {
      width: 100%;
      text-align: center;
      outline: none;
      padding: 0.5rem;
    }
    input {
      border: 1px solid #e36238;
      color: #7e2513;
    }
    input::placeholder {
      color: #7e251380;
    }
    button {
      background: #e36238;
      color: white;
      border: 1px solid #e36238;
    }

    button:hover {
      animation: fade 2s ease;
      background: #7e2513;
    }
  }
  li {
    color: #7e2513;
    padding: 0.5rem;
    margin: 1rem 0;
    border: 1px solid #e36238;
    text-align: center;
  }
}
@keyframes fade {
  0% {
    background: #e36238;
  }

  50% {
    background: #7e2513;
  }
}
</style>

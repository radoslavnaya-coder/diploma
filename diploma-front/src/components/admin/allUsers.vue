<template>
    <div class="user-options">
      <div>
        <input v-model="form.name" type="text" placeholder="Логин" />
        <button @click.prevent="sendData()">Искать пользователя</button>
      </div>
      <ul
        v-for="user in users"
        :key="user.id"
        class="outlined-orange"
        variant="outlined"
      >
        <li>{{ user.name }}</li>
      </ul>
    </div>
  </template>
  
  <script>
  import { ref, reactive, onMounted } from "vue";
  import { instance } from "@/components/axios/instance";
  
  export default {
    setup() {
      const users = ref();
      onMounted(() => {
        instance.get("/allUsers").then((res) => {
          users.value = res.data;
        });
      });
      const form = reactive({
        name: "",
      });
  
      return { users, form };
    },
  };
  </script>
  
  <style lang="scss" scoped>
  ul {
    list-style-type: none;
  }
  .user-options {
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
  
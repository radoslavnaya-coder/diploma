<template>
  <header>
    <div class="container">
      <router-link to="/home">
        <img src="@/assets/images/logo.png" width="118" height="86" />
      </router-link>
      <div class="search">
        <input type="search" name="main-search" />
        <label for="main-search"><MaterialSymbols_searchVue /></label>
      </div>
      <router-link to="/home/add">
        <div class="button" title="Создать пост">
          <phPlusLight />
        </div>
      </router-link>
      <router-link to="/user/profile">
        <div class="user-img" title="Личный кабинет">
          <div v-for="user in users" :key="user">
            <div v-if="user.id == userId">
              <div>
                <img v-if="user.img == null" :src="userImage" alt="userPhoto" />
                <img v-else :src="user.img" alt="userPhoto" />
              </div>
            </div>
          </div>
        </div>
      </router-link>
    </div>
  </header>
</template>

<script>
import MaterialSymbols_searchVue from "./icons/IconSearch.vue";
import phPlusLight from "./icons/Ph_plus-light.vue";
import { ref, onMounted } from "vue";
import { instance } from "@/components/axios/instance";

export default {
  components: {
    MaterialSymbols_searchVue,
    phPlusLight,
  },
  setup() {
    const userImage = ref("/src/assets/images/user-img.jpg");
    const userId = localStorage.getItem("userId");

    const users = ref();
    onMounted(() => {
      instance.get("/allUsers").then((res) => {
        users.value = res.data;
      });
    });

    const userImg = ref("/src/assets/images/user-img.jpg");
    return { userImage, userImg, users, userId };
  },
};
</script>

<style lang="scss" scoped>
header {
  width: 100%;
  font-size: 16px;
  border-bottom: 1px solid #7e2513;
}
.container {
  max-width: 1640px;
  margin: 0.5rem auto;
  display: grid;
  grid-template-columns: 2fr 8fr 1fr 1fr;
  align-items: center;
  a {
    text-align: center;
  }
  input,
  button {
    outline: none;
  }
}
input {
  padding: 0.7em;
  width: 85%;
  border: 1px solid #7e2513;
  border-right: none;
  margin: 0.5rem 0 0.4rem 2rem;
}
label {
  cursor: pointer;
  padding: 0.9rem 0.95rem 1.1rem 0.95rem;
  background: url(@/assets/images/plus-background.png) no-repeat center 0/100%;
  svg {
    position: relative;
    top: 0.3rem;
  }
}

input::-webkit-search-cancel-button {
  display: none !important;
}
.button {
  margin-top: 0.2rem;
  padding: 1rem;
  background: url(@/assets/images/plus-background.png) no-repeat center;
  background-size: 40%;
  svg {
    margin: 0.1rem 0.2rem 0 0;
  }
}
.user-img {
  border: 1px solid #7e2513;
  max-width: 65px;
  max-height: 65px;
  line-height: 0;
  img {
    max-width: 63px;
    max-height: 63px;
  }
}
@media (max-width: 992px) {
  .search {
    display: none;
  }
  .button {
    background: url(@/assets/images/plus-background.png) no-repeat center ;
  }
  .container {
    margin: 0.5rem 2rem;
  }
}
</style>

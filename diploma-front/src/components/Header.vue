<template>
  <header>
    <div class="container">
      <router-link to="/home">
        <img src="@/assets/images/logo.png" width="118" height="86" />
      </router-link>
      <div>
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
          <img :src="userImage" />
        </div>
      </router-link>
    </div>
  </header>
</template>

<script>
import { ref } from "vue";
import MaterialSymbols_searchVue from "./icons/IconSearch.vue";
import phPlusLight from "./icons/Ph_plus-light.vue";

export default {
  components: {
    MaterialSymbols_searchVue,
    phPlusLight
  },
  setup() {
    const userImage = ref("/src/assets/images/user-img.jpg");

    return { userImage };
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
</style>

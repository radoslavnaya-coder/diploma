<script setup>
import MaterialSymbols_searchVue from "./icons/IconSearch.vue";
import phPlusLight from "./icons/Ph_plus-light.vue";
</script>
<template>
  <header>
        <v-row class="text-center">
          <v-col cols="3">
            <router-link to="/">
              <img src="@/assets/images/logo.png" width="118" height="86" />
            </router-link>
          </v-col>
          <v-col class="search-label" cols="6">
            <input type="search" name="main-search" />
            <label for="main-search"><MaterialSymbols_searchVue /></label>
          </v-col>
          <v-col cols="2" class="button">
            <router-link to="/add"><p><phPlusLight /></p></router-link>
          </v-col>
          <v-col class="user-img" cols="1">
            <img src="@/assets/images/user-img.png" />
          </v-col>
        </v-row>
  </header>
</template>
<style scoped>
header {
  width: 100vw;
  padding: 1rem 12rem 0 6rem;
  font-size: 16px;
  border-bottom: 1px solid #7e2513;
}

header input,
header button {
  outline: none;
}
input {
  padding: 0.7em;
  width: 85%;
  border: 1px solid #7e2513;
  border-right: none;
  margin: 0.5rem 0 0.5rem 2rem;
}
label {
  cursor: pointer;
  padding: 0.9rem 0.95rem 1.5rem 0.95rem;
  background: url(@/assets/images/plus-background.png) no-repeat center 0/100%;
}
label svg{
  position: relative;
  top: 0.3rem;
}

input::-webkit-search-cancel-button {
  display: none !important;
}
.button {
  padding: 1rem;
  background: url(@/assets/images/plus-background.png) no-repeat center top 50%/100%;
  background-size: 19%;
  margin-bottom: 0.5rem;
}
.button svg{
  position: relative;
  top: 0.1rem;
}
.search-label{
  margin-top: 0.5rem;
}
.user-img{
  margin-top: 0.5rem;
}
</style>

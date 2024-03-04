<script setup>
import MaterialSymbols_searchVue from "./icons/IconSearch.vue";
import phPlusLight from "./icons/Ph_plus-light.vue";
</script>
<template>
  <header>
    <div>
      <nav>
        <v-row>
          <v-col cols="3">
            <router-link to="/">
              <img src="@/assets/logo.png" width="118" height="86" />
            </router-link>
            
          </v-col>
          <v-col class="search-label" cols="6">
            <input type="search" name="main-search" />
            <label for="main-search"><MaterialSymbols_searchVue /></label>
          </v-col>
          <v-col cols="2">
            <button><phPlusLight /></button>
          </v-col>
          <v-col class="user-img" cols="1">
            <img src="@/assets/user-img.png" />
          </v-col>
        </v-row>
      </nav>
    </div>
  </header>
</template>
<style scoped>
header {
  font-size: 16px;
}

header input,
header button {
  outline: none;
}
input {
  padding: 0.7em;
  width: 80%;
  border: 1px solid #7e2513;
  border-right: none;
  margin: 0.5rem 0 0.5rem 2rem;
}
label {
  cursor: pointer;
  padding: 0.9rem 0.95rem 1.5rem 0.95rem;
  background: url(@/assets/plus-background.png) no-repeat center 0/100%;
}
label svg{
  position: relative;
  top: 0.3rem;
}

input::-webkit-search-cancel-button {
  display: none !important;
}
button {
  padding: 1rem;
  margin: 1.3rem 0 0.5rem 9rem;
  background: url(@/assets/plus-background.png) no-repeat center left 80%/100%;
}
button svg{
  position: relative;
  top: 0.1rem;
}
.search-label{
  margin-top: 1rem;
}
.user-img{
  margin-top: 1rem;
}
</style>

<script setup>
import MaterialSymbols_searchVue from "./icons/IconSearch.vue";
import phPlusLight from "./icons/Ph_plus-light.vue";
</script>
<template>
  <header>
    <div>
      <nav>
        <v-row>
          <v-col cols="2">
            <img src="@/assets/logo.png" width="118" height="86" />
          </v-col>
          <v-col cols="5">
            <input type="search" name="main-search" />
            <label for="main-search"><MaterialSymbols_searchVue /></label>
          </v-col>
          <v-col cols="3">
            <button><phPlusLight /></button>
          </v-col>
          <v-col cols="2">
            <img src="@/assets/user-img.png" />
          </v-col>
        </v-row>
      </nav>
    </div>
  </header>
</template>
<style scoped>
header {
  padding: 0.5rem;
  font-size: 18px;
}

header input,
header button {
  padding: 1em;
  border: 1px solid #7e2513;
  background: none;
  outline: none;
}
input {
  width: 50%;
}
label {
  cursor: pointer;
  border: 1px solid #7e2513;
  border-left: none;
  padding: 1em;
}

input::-webkit-search-cancel-button {
  display: none !important;
}
button {
  margin: 0 4rem;
  position: relative;
  z-index: 20;
}
button::after {
  content: url(@/assets/rectangle.png);
  left: 8px;
  top: 8px;
  position: absolute;
  z-index: -1;
}
</style>

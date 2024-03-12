<template>
  <v-container style="max-width:100vw; padding: 1rem 0; width:100vw">
    <v-row class="text-center">
      <v-col cols="1" style="margin-right: -1.4rem">
        <div class="main-top__line"></div>
      </v-col>
      <v-col cols="2" style="margin-right: 1.4rem">
        <router-link to="/">
          <img src="@/assets/logo.png" width="118" height="86" />
        </router-link>
      </v-col>
      <v-col cols="6" style="margin-right:2rem;margin-left:-2rem">
        <div class="main-top__line"></div>
      </v-col>
      <v-col cols="1" style="margin-left:-3.2rem">
        <router-link to="/">
          <p class="about-circle">О сайте</p>
        </router-link>
      </v-col>
      <v-col cols="1">
        <v-btn
          class="text-none"
          variant="text"
          color="#7E2513"
          rounded="0"
          height="3rem"
        >
          <p>Войти</p>
        </v-btn>
      </v-col>
      <v-col cols="1" style="margin-left:3.2rem">
        <div class="main-top__line"></div>
      </v-col>
    </v-row>
  </v-container>
  <v-container>
    <h1>This is an about page</h1>
  </v-container>
</template>

<style>
header {
  display: none;
}
</style>
<style scoped>
button {
  padding: 2rem 2.3rem;
  margin: 0.5rem 0;
  background: url(@/assets/main-button-auth.png) no-repeat center left 80%/100%;
}
button p {
  position: relative;
  top: -0.8rem;
  font-size: 19px;
}
.about-circle {
  margin: 0;
  background: url(@/assets/main-about-circle.png) no-repeat center;
  font-size: 19px;
}
.main-top__line {
  background: #7e2513;
  height: 1px;
  width: 100%;
  margin: 2.3rem 0 0 0;
}
</style>

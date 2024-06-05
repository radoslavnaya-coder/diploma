<template>
  <v-container class="navigation">
    <v-row class="navigation-box text-center">
      <v-col cols="1" style="margin-right: -1.4rem">
        <div class="main-top__line"></div>
      </v-col>
      <v-col cols="2" style="margin-right: 1.4rem">
        <router-link to="/">
          <img src="@/assets/images/logo.png" width="118" height="86" />
        </router-link>
      </v-col>
      <v-col cols="6" style="margin-right: 2rem; margin-left: -2rem">
        <div class="main-top__line"></div>
      </v-col>
      <v-col cols="1" style="margin-left: -3.2rem">
        <router-link to="/about">
          <p class="about-circle">О сайте</p>
        </router-link>
      </v-col>
      <v-col cols="1" class="button">
        <router-link to="/login"><p>Войти</p></router-link>
      </v-col>
      <v-col cols="1" style="margin-left: 3.2rem">
        <div class="main-top__line"></div>
      </v-col>
    </v-row>
  </v-container>
</template>

<style lang="scss" scoped>
.button {
  padding: 2rem 2.3rem;
  margin: 0.5rem 0;
  background: url(@/assets/images/main-button-auth.png) no-repeat top left 100%/97%;
  p {
    position: relative;
    top: -4px;
    font-size: 19px;
  }
}
.navigation {
  max-width: 100vw;
  top: 0;
  padding: 0;
  width: 100vw;
  position: fixed;
  box-shadow: rgba(17, 12, 46, 0.15) 0px 20px 100px 0px;
}
.navigation-box {
  background: #fffef4;
  padding: 2rem 0 0.5rem 0;
  .v-col {
    padding: 0;
  }
}
.about-circle {
  margin: 0;
  background: url(@/assets/images/main-about-circle.png) no-repeat center;
  font-size: 19px;
}
.main-top__line {
  background: #7e2513;
  height: 1px;
  width: 100%;
  margin: 2.3rem 0 0 0;
}
</style>
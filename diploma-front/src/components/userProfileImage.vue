<template>
  <div>
    <div class="user-img content" v-for="user in users" :key="user">
      <div class="photo-with-line" v-if="user.id == userId">
        <div class="user-photo">
          <img v-if="user.img == null" :src="userImage" alt="userPhoto" />
          <img v-else :src="user.img" alt="userPhoto" />
        </div>
      </div>
      <p v-if="user.id == userId">@{{ user.name }}</p>
    </div>
  </div>
</template>

<script>
import { ref, onMounted } from "vue";
import { instance } from "@/components/axios/instance";

export default {
  setup() {
    const userImage = ref("/src/assets/images/user-img.jpg");
    const userId = localStorage.getItem("userId");

    const users = ref();
    onMounted(() => {
      instance.get("/allUsers").then((res) => {
        users.value = res.data;
      });
    });

    return { userImage, users, userId };
  },
};
</script>

<style lang="scss" scoped>
.user-img {
  margin: 0 auto 1rem auto;
  background: url(@/assets/images/left-line.png) no-repeat top -200% left 30%,
    url(@/assets/images/right-line.png) no-repeat bottom right 32%;
  img {
    max-width: 100%;
    max-height: 190px;
    max-width: 190px;
  }
  p {
    text-align: center;
    color: #7e2513;
    font-size: 18px;
  }
}
.photo-with-line {
  display: flex;
  align-items: center;
  justify-content: center;
}
.user-photo {
  border: 1px solid #7e2513;
  position: relative;
  z-index: 2;
  line-height: 0;
  img {
    max-width: 100%;
    max-height: 100%;
    width: 190px;
    min-width: 190px;
    min-height: 190px;
  }
}
</style>

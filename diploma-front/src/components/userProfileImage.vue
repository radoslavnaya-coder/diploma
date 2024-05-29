<template>
  <div class="user-img content">
    <div class="photo-with-line">
      <div class="user-photo">
        <img :src="userImage" alt="userPhoto" />
      </div>
    </div>
    <p>@{{ userName }}</p>
  </div>
</template>

<script>
import { ref } from 'vue'

export default {
  setup() {
    const userImage = ref('/src/assets/images/user.jpg')
    const userName = ref('vilaskas')
    
    return { userImage, userName }
  }
}
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
    min-width: 190px;
    min-height: 190px;
  }
}
</style>

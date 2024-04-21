<template>
    <div class="user-img content">
        <div class="photo-with-line">
        <div class="user-photo">
            <img src="@/assets/images/user.jpg" alt="userPhoto">
        </div>
    </div>
        <p>@vilaskas</p>
    </div>
</template>
<style scoped>
.user-img {
    margin: 6rem auto 1rem auto;
    background: url(@/assets/images/left-line.png) no-repeat top -200% left 30%, url(@/assets/images/right-line.png) no-repeat bottom right 32%;
}
.user-img img {
    max-width: 100%;
    max-height: 190px;
    max-width: 190px;
}
.user-img p {
    text-align: center;
    color: #7E2513;
    font-size: 18px;
}
.photo-with-line {
   display: flex;
   align-items: center;
   justify-content: center;
}
.user-photo {
    border: 1px solid #7E2513;
    position: relative;
    z-index: 2;
    line-height: 0;
}
</style>
<script setup>
import Header from "../components/Header.vue";
import router from "@/router";

const token = localStorage.getItem("token");
if (token == null) {
  router.push("/");
}
</script>

<template>
  <div>
  <Header />
  <div class="photo-place">
    <div class="back-arrow">
      <img
        @click="$router.back()"
        src="@/assets/images/auth/auth-arrow.svg"
        alt="Назад"
      />
    </div>
    <img class="main-photo" src="@/assets/images/test-photo.jpg" alt="photo" />
    <div class="about-photo">
      <button>Сохранить</button>
      <h1>Аргумент</h1>
      <h3>Автор: @vilaskas</h3>
      <div class="categories">
        <p>Еда</p>
        <p>Своими руками</p>
        <p>Вышивка</p>
        <p>Рисование</p>
        <p>Компьютерные игры</p>
      </div>
    </div>
  </div>
  <div class="comments">
    <h2>Комментарии</h2>
    <div class="comment-item">
      <div class="comments-user">
        <img
          src="@/assets/images/user.jpg"
          alt="user-image"
          width="60"
          height="60"
        />
        <p>@vilaskas</p>
      </div>
      <p>
        This antagonism between empiricism and idealism generally characterizes
        the dynamism of the argument over the theory of ideas up to the present.
        This schism in theory has never been resolved to the satisfaction of
        thinkers from both sides of the disagreement and is represented today in
        the split between analytic and continental schools of philosophy.
        Persistent contradictions between classical physics and quantum
        mechanics may be pointed to as a rough analogy for the gap between the
        two schools of thought.
      </p>
    </div>
    <div class="comment-item">
      <div class="comments-user">
        <img
          src="@/assets/images/user.jpg"
          alt="user-image"
          width="60"
          height="60"
        />
        <p>@arborio</p>
      </div>
      <p>
        Plato advances the theory that perceived but immaterial objects of
        awareness constituted a realm of deathless forms or ideas from which the
        material world emanated. Aristotle challenges Plato in this area,
        positing that the phenomenal world of ideas arises as mental composites
        of remembered observations. Though it is anac
      </p>
    </div>
    <textarea name="comment" cols="30" rows="5"></textarea>
    <button>Оставить комментарий</button>
  </div>
</div>
</template>

<style lang="scss" scoped>
.photo-place {
  max-width: 1500px;
  margin: 2rem auto;
  padding: 2rem 0.5rem;
  background: linear-gradient(0.25turn, #ffbe9899, #fff5e099, #fff5e099);
  display: flex;
  justify-content: space-between;
  .main-photo {
    border: 20px solid white;
    max-width: 970px;
  }
}
.back-arrow {
  padding-left: 3.5rem;
}
.about-photo {
  color: #7e2513;
  h1 {
    font-weight: normal;
    font-size: 24px;
    padding-top: 1rem;
  }
  h3 {
    color: #e36238;
    font-weight: normal;
    padding-bottom: 1rem;
  }
  button {
    font-size: 18px;
    background: url(@/assets/images/save-button.png) no-repeat;
    padding: 0.55rem 4.2rem;
  }
}
.categories {
  display: flex;
  flex-wrap: wrap;
  max-width: 320px;
  gap: 0.5rem;
  p {
    border: 1px solid #e36238;
    padding: 0.5rem 2rem;
  }
}

.comments {
  max-width: 1000px;
  margin: 0 auto 10rem auto;
  h2 {
    font-weight: normal;
    color: #7e2513;
    padding: 1rem 0 2rem 0;
  }
  textarea {
    border: 1px solid #e36238;
    padding: 1rem;
    width: 100%;
    color: #7e2513;
    margin: 2rem 0 1rem 0;
    &:focus {
        outline: none;
    }
  }
  button {
    background: #e36238;
    padding: 0.5rem 4rem;
    color: white;
    text-align: center;
    cursor: pointer;
    float: right;
  }
}
.comment-item {
  p {
    color: #7e2513;
  }
}
.comments-user {
  display: flex;
  align-items: flex-end;
  gap: 1rem;
  margin: 1rem 0;
  p {
    color: #e36238;
    font-size: 18px;
  }
}
</style>

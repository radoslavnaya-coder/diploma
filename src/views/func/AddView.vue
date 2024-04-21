<script setup>
import Header from "../../components/Header.vue";
</script>
<template>
  <Header />
  <form class="content">
    <div class="photo">
      <img src="@/assets/images/photo-place.jpg" />
      <button>Опубликовать</button>
    </div>
    <div>
      <div class="photo-add">
        <label for="photo">Выбрать фото...
        <input type="file" name="photo" /></label>
        <p>Загрузить</p>
      </div>
      <div class="parameters">
        <input type="text" placeholder="Название" />
        <select>
          <option value="1">Категория</option>
        </select>
        <input type="text" placeholder="Теги для поиска" />
        <div class="tags">
            <p>Многогранность</p>
            <p>Дизайн</p>
            <p>Радость</p>
            <p>Многогранность</p>
            <p>Дизайн</p>
            <p>Радость</p>
        </div>
      </div>
    </div>
  </form>
</template>
<style scoped>
input, select {
    outline: none;
}
.content {
  display: flex;
  justify-content: center;
  margin: 2rem auto;
  gap: 2rem;
}
.photo {
  display: flex;
  flex-direction: column;
}
.photo img {
  max-height: 550px;
  max-width: 270px;
}
.photo button {
  margin: 0.5rem 0;
  padding: 0.5rem;
  background: #e36238;
  color: white;
}
.photo-add {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 1rem;
}
.photo-add p {
  background: #e36238;
  padding: 0.5rem 2rem;
  color: white;
  text-align: center;
  cursor: pointer;
}
.photo-add input {
    border: #e36238;
    position: absolute;
    opacity: 0;
    width: 100%;
    height: 100%;
    z-index: 2;
    left: 0;
    cursor: pointer;
}
.photo-add label {
    border: 1px solid #e36238;
    padding: 0.5rem 1.5rem;
    position: relative;
    z-index: 1;
    cursor: pointer;
}
.parameters {
    display: flex;
    flex-direction: column;
    margin: 2rem 0;
    gap: 1rem;
}
.parameters input, select {
    border: 1px solid #e36238;
    padding: 0.5rem 1.5rem;
    color: #7E2513;
}
.parameters input::placeholder {
    color: #7E2513;
}
.parameters select option {
    background: none;
    color: #7E2513;
}
.tags {
    display: flex;
    flex-wrap: wrap;
    color: #7E2513;
    gap: 1rem;
    max-width: 23rem;
}
.tags p {
    border: 1px solid #e36238;
    padding: 0.5rem;
}
.tags p::after {
    content: 'x';
    padding-left: 1rem;
    cursor: pointer;
}
</style>

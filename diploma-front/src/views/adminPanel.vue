<template>
  <div class="content">
    <h3 class="foradmin-title">Добро пожаловать, Администратор!</h3>
    <div class="admin-panel">
      <div class="menu">
        <ul>
          <li>Категории</li>
          <li>Список пользователей</li>
          <li>Ключ-слова</li>
        </ul>
      </div>
      <addCategory />
      <addKeywords />
      <allUsers />
    </div>
  </div>
</template>

<script>
import addCategory from "@/components/admin/addCategory.vue";
import addKeywords from "@/components/admin/addKeywords.vue";
import allUsers from "@/components/admin/allUsers.vue"
import router from "@/router";

export default {
  components: {
    addCategory,
    addKeywords,
    allUsers
  },
  setup() {
    const adminId = localStorage.getItem('userId')
    if (adminId != 18) {
      router.push('/')
    }
  }
};
</script>

<style lang="scss" scoped>
ul {
  list-style-type: none;
}
.admin-panel {
  margin: 6rem 0;
}
.foradmin-title {
  font-size: 24px;
  color: #7e2513;
  text-align: center;
  font-weight: 400;
  margin: 1.5rem 0;
}
.menu {
  ul {
    position: absolute;
    display: flex;
    flex-direction: column;
    gap: 0.1rem;
    li {
      cursor: pointer;
      padding: 0.8rem 2rem;
      border: 1px solid #e36238;
      color: #7e2513;
    }
    li:first-child{
      background: #FFBE98;
      border: none;
    }
  }
}
</style>

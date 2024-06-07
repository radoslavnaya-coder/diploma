<template>
  <div class="content">
    <h3 class="foradmin-title">Добро пожаловать, Администратор!</h3>
    <div class="admin-panel">
      <div class="menu">
        <ul ref="list">
            <li @click="isActive = 1" :class="{ isActive: isActive === 1 }">
              {{ adminSelect[0] }}
            </li>
            <li @click="isActive = 2" :class="{ isActive: isActive === 2 }">
              {{ adminSelect[1] }}
            </li>
            <li @click="isActive = 3" :class="{ isActive: isActive === 3 }">
              {{ adminSelect[2] }}
            </li>
        </ul>
      </div>
      <addCategory v-if="adminSelect[0] ? isActive === 1 : null" />
      <allUsers v-if="adminSelect[1] ? isActive === 2 : null" />
      <addKeywords v-if="adminSelect[2] ? isActive === 3 : null" />
    </div>
  </div>
</template>

<script>
import addCategory from "@/components/admin/addCategory.vue";
import addKeywords from "@/components/admin/addKeywords.vue";
import allUsers from "@/components/admin/allUsers.vue";
import { ref } from "vue";
import router from "@/router";

export default {
  components: {
    addCategory,
    addKeywords,
    allUsers,
  },
  setup() {
    const adminSelect = ref([
      "Категории",
      "Список пользователей",
      "Ключ-слова",
    ]);
    const isActive = ref();

    const adminId = localStorage.getItem("userId");
    if (adminId != 18) {
      router.push("/");
    }
    return { adminSelect, isActive };
  },
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
    @media (max-width: 992px) {
      position: relative;
      margin-bottom: 2rem;
    }
    li {
      cursor: pointer;
      padding: 0.8rem 2rem;
      border: 1px solid #e36238;
      color: #7e2513;
    }
    .isActive {
      background: #ffbe98;
      border: 1px solid #ffbe98;
    }
  }
}
</style>

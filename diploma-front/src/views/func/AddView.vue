<script>
import Header from "../../components/Header.vue"
import formAdded from '../../components/formAdded.vue'
import router from "@/router";

export default {
  components: {
    Header,
    formAdded
  },
  setup() {
    const token = localStorage.getItem("token");
    if (token == null) {
      router.push("/");
    }
  },
};
</script>

<template>
  <div>
    <Header />
    <formAdded />
  </div>
</template>

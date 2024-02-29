<script setup>
import MaterialSymbols_searchVue from "./icons/Material-symbols_search.vue";
</script>
<template>
    <header>
        <div>
            <nav>
                <img src="@/assets/logo.png" width="118" height="86">
                <input type="search" name="main-search">
                <label for="main-search"><MaterialSymbols_searchVue /></label>
                <button></button>
                <img src="@/assets/user-img.png">
            </nav>
        </div>
    </header>
</template>
<style scoped>
input{
    outline: none;
}
input::-webkit-search-cancel-button{
    display: none !important;
}
</style>
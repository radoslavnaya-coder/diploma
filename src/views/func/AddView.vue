<template>
    <div class="content">
        <div>
            <img src="@/assets/images/photo-place.jpg">
            <button>Опубликовать</button>
        </div>
        <div>
            <div>
                <input type="file">
                <p>Загрузить</p>
            </div>
            <input type="text" placeholder="Название">
            <select>
                <option value="1">Категория</option>
            </select>
            <input type="text" placeholder="Теги для поиска">
        </div>
    </div>
</template>
<script>
</script>
<style scoped>
.content {
    display: flex;
    justify-content: center;
}
</style>
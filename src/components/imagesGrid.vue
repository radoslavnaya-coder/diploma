<!-- <template>
    
    <div class="grid">
        <img src="https://cs13.pikabu.ru/post_img/2023/09/11/5/1694416670162565263.jpg" class="grid-item">
        <img src="https://www.wfla.com/wp-content/uploads/sites/71/2023/05/GettyImages-1389862392.jpg?w=2560&h=1440&crop=1" class="grid-item">
        <img src="https://cs13.pikabu.ru/post_img/2023/09/11/5/1694416670162565263.jpg" class="grid-item">
        <img src="https://cs13.pikabu.ru/post_img/2023/09/11/5/1694416670162565263.jpg" class="grid-item">
        <img src="https://cs13.pikabu.ru/post_img/2023/09/11/5/1694416670162565263.jpg" class="grid-item">
        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Cat_August_2010-4.jpg/181px-Cat_August_2010-4.jpg" class="grid-item">
        <img src="https://cs13.pikabu.ru/post_img/2023/09/11/5/1694416670162565263.jpg" class="grid-item">
    </div>
</template> -->
<script setup lang="ts">
const items = [
  {
    title: 'First',
    description: 'The first item.',
    src: 'https://cs13.pikabu.ru/post_img/2023/09/11/5/1694416670162565263.jpg',
  },
  {
    title: 'Second',
    description: 'The second item.',
    src: 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Cat_August_2010-4.jpg/181px-Cat_August_2010-4.jpg',
    },
  {
      title: 'Thirty',
      description: 'The thirty item',
      src: 'https://www.wfla.com/wp-content/uploads/sites/71/2023/05/GettyImages-1389862392.jpg?w=2560&h=1440&crop=1',
    },
    {
      title: 'Thirty',
      description: 'The thirty item',
      src: 'https://www.wfla.com/wp-content/uploads/sites/71/2023/05/GettyImages-1389862392.jpg?w=2560&h=1440&crop=1',
    },
    {
      title: 'Thirty',
      description: 'The thirty item',
      src: 'https://upload.wikimedia.org/wikipedia/commons/b/ba/Paintedcats_Red_Star_standing.jpg',
    },
    {
      title: 'Thirty',
      description: 'The thirty item',
      src: 'https://www.wfla.com/wp-content/uploads/sites/71/2023/05/GettyImages-1389862392.jpg?w=2560&h=1440&crop=1',
    },
    {
      title: 'Thirty',
      description: 'The thirty item',
      src: 'https://www.wfla.com/wp-content/uploads/sites/71/2023/05/GettyImages-1389862392.jpg?w=2560&h=1440&crop=1',
    },
    {
      title: 'Thirty',
      description: 'The thirty item',
      src: 'https://www.wfla.com/wp-content/uploads/sites/71/2023/05/GettyImages-1389862392.jpg?w=2560&h=1440&crop=1',
    },
    {
      title: 'Thirty',
      description: 'The thirty item',
      src: 'https://www.wfla.com/wp-content/uploads/sites/71/2023/05/GettyImages-1389862392.jpg?w=2560&h=1440&crop=1',
    },
    {
    title: 'First',
    description: 'The first item.',
    src: 'https://cs13.pikabu.ru/post_img/2023/09/11/5/1694416670162565263.jpg',
    },
    {
    title: 'First',
    description: 'The first item.',
    src: 'https://cs13.pikabu.ru/post_img/2023/09/11/5/1694416670162565263.jpg',
    },
    {
    title: 'First',
    description: 'The first item.',
    src: 'https://upload.wikimedia.org/wikipedia/commons/b/ba/Paintedcats_Red_Star_standing.jpg',
    },
    {
    title: 'First',
    description: 'The first item.',
    src: 'https://cs13.pikabu.ru/post_img/2023/09/11/5/1694416670162565263.jpg',
    },
    {
    title: 'First',
    description: 'The first item.',
    src: 'https://cs13.pikabu.ru/post_img/2023/09/11/5/1694416670162565263.jpg',
    },
    {
    title: 'First',
    description: 'The first item.',
    src: 'https://cs13.pikabu.ru/post_img/2023/09/11/5/1694416670162565263.jpg',
    },
    {
    title: 'Second',
    description: 'The second item.',
    src: 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Cat_August_2010-4.jpg/181px-Cat_August_2010-4.jpg',
    },
    {
    title: 'Second',
    description: 'The second item.',
    src: 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Cat_August_2010-4.jpg/181px-Cat_August_2010-4.jpg',
    },
    {
    title: 'Second',
    description: 'The second item.',
    src: 'data:image/jpeg;base64,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',
    },
    {
    title: 'Second',
    description: 'The second item.',
    src: 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Cat_August_2010-4.jpg/181px-Cat_August_2010-4.jpg',
    },
]
</script>
<template>
  <Masonry-wall :items="items" :ssr-columns="1" :column-width="240" :gap="10">
    <template #default="{ item }">
      <div style="max-height: 59rem">
        <img width="240" :src="`${ item.src }`">
      </div>
    </template>
  </Masonry-wall>
</template>
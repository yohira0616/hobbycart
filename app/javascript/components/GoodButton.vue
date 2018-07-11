<template>
  <button class="btn btn-light" @click="onClick"> いいね！</button>

</template>

<script>
  export default {
    name: "GoodButton",
    methods: {
      onClick() {
        console.log('good!')
      }
    }
  }
</script>

<style scoped>

</style>

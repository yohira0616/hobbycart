<template>
  <button class="btn btn-light" @click="onClick">
    <i class="far fa-thumbs-up"></i>
    いいね！
  </button>

</template>

<script>
  import axios from '../modules/axios'

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

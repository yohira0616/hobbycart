<template>
  <form>
    <div class="form-group">
      <p>コメント</p>
      <textarea class="form-control" rows="3" placeholder="この商品に対してコメントする..." v-model="body" required></textarea>
    </div>
    <button type="submit" class="btn btn-success" @click="onSubmit">コメントする</button>
  </form>
</template>

<script>
  import axios from '../modules/axios'

  export default {
    name: "CommentForm",
    data: function () {
      return {
        body: ''
      }
    },
    methods: {
      onSubmit(e) {
        e.preventDefault()

        console.log('submit')
      }

    }
  }
</script>

<style scoped>

</style>

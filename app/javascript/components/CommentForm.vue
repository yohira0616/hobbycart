<template>
  <form class="mb-1 mt-2">
    <div class="form-group">
      <textarea class="form-control" rows="3" placeholder="この商品に対してコメントする..." v-model="body" required></textarea>
    </div>
    <button type="submit" class="btn btn-success" @click="onSubmit">コメントする</button>
  </form>
</template>

<script>
  import axios from '../modules/axios'

  export default {
    name: "CommentForm",
    props: {
      itemId: {
        required: true
      }
    },
    data: function () {
      return {
        body: ''
      }
    },
    methods: {
      onSubmit(e) {
        e.preventDefault()
        const params = {
          comment: {
            body: this.body
          }
        }
        const url = `/api/items/${this.itemId}/comments`
        axios.post(url, params)
          .then((res) => {
            this.body = ''
          })
          .catch((err) => {
            console.log(err)
          })
      }
    }
  }
</script>

<style scoped>

</style>

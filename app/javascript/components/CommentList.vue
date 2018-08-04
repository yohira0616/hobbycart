<template>
  <div>
    <p class="card-text">この商品へのコメント</p>
    <p class="card-text" v-if="!this.comments">この商品へのコメントはまだありません</p>
    <div v-for="comment in this.comments">
      <CommentCard></CommentCard>
    </div>
  </div>

</template>

<script>
  import axios from '../modules/axios'
  import CommentCard from './CommentCard'

  export default {
    name: "CommentList",
    props: {
      itemId: {
        required: true
      }
    },
    components: {
      CommentCard
    },
    data: function () {
      return {
        comments: []
      }
    },
    created: function () {
      this.commentLoad()
    },
    methods: {
      commentLoad() {
        const url = `/api/items/${this.itemId}/comments`
        axios.get(url)
          .then((res) => {
            this.comments = res.data.comments
          })
          .catch((err) => {
            console.error(err)
          })
      }
    }
  }
</script>

<style scoped>

</style>

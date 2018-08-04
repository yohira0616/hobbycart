<template>
  <div>
    <p class="card-text">この商品へのコメント</p>
    <p class="card-text" v-if="!this.comments">この商品へのコメントはまだありません</p>
    <div v-for="comment in this.comments">
      <CommentCard :id="comment.id"
                   :avatar-attached="comment.avatarAttached" :avatar-path="comment.avatarPath"
                   :screen-name="comment.screenName" :body="comment.body"
                   :created-at="comment.createdAt" v-on:destroy="commentDestroy"></CommentCard>
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
            console.log(res.data.comments)
            this.comments = res.data.comments
          })
          .catch((err) => {
            console.error(err)
          })
      },
      commentDestroy(id) {
        const url = `/api/comments/${id}`
        axios.delete(url)
          .then((res) => {
            window.alert('削除しました')
            console.log(res.data)
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

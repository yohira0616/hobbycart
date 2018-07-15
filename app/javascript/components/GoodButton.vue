<template>
  <button class="btn btn-light" @click="onClick">
    <i class="far fa-thumbs-up"></i>
    いいね！
  </button>

</template>

<script>
  import axios from '../modules/axios'

  // 新しくいいねするか取り消すか
  const buttonType = {
    NORMAL: 0,
    REVOKE: 1
  }

  export default {
    name: "GoodButton",
    props: {
      itemId: {
        required: true
      }
    },
    data: function () {
      return {
        mode: buttonType.NORMAL,
        enabled: true
      }
    },
    methods: {
      onClick() {
        const params = {
          item_id: this.itemId
        }
        axios.post('/api/reactions', params)
          .then((res) => {

            console.log('Good!')
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

<template>
  <button class="btn btn-light" @click="onClick">
    <i class="far fa-thumbs-up"></i>
    いいね！
    <span v-if="isRevokeMode">を取り消す</span>
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
      },
      reactionId: {
        required: false
      }
    },
    data: function () {
      return {
        mode: this.reactionId ? buttonType.REVOKE : buttonType.NORMAL,
        enabled: true
      }
    },
    methods: {
      onClick() {
        const params = {
          item_id: this.itemId
        }
        if (this.mode === buttonType.NORMAL) {
          const url = `/api/items/${this.itemId}/reactions`
          axios.post(url, params)
            .then((res) => {
              this.mode = buttonType.REVOKE
            })
            .catch((err) => {
              console.error(err)
            })
        } else if (this.mode === buttonType.REVOKE) {
          const url = `/api/reactions/${this.reactionId}`
          axios.delete(url)
            .then((res) => {
              this.mode = buttonType.NORMAL
            })
            .catch((err) => {
              console.log(err)
            })
        }
      }
    },
    computed: {
      isRevokeMode(){
        return this.mode === buttonType.REVOKE
      }

    }
  }
</script>

<style scoped>

</style>

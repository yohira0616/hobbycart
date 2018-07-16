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
        default: null,
        required: false
      }
    },
    data: function () {
      return {
        mode: this.reactionId ? buttonType.REVOKE : buttonType.NORMAL,
        id: this.reactionId,
        enabled: true
      }
    },
    methods: {
      onClick() {
        if (this.mode === buttonType.NORMAL) {
          this.doGood()
        } else if (this.mode === buttonType.REVOKE) {
          this.revokeGood()
        }
      },
      doGood() {
        const params = {
          item_id: this.itemId
        }
        const url = `/api/items/${this.itemId}/reactions`
        axios.post(url, params)
          .then((res) => {
            this.mode = buttonType.REVOKE
            this.id = res.data.reactionId
          })
          .catch((err) => {
            console.error(err)
          })
      },
      revokeGood() {
        const url = `/api/reactions/${this.id}`
        axios.delete(url)
          .then((res) => {
            this.mode = buttonType.NORMAL
          })
          .catch((err) => {
            console.log(err)
          })
      }
    },
    computed: {
      isRevokeMode() {
        return this.mode === buttonType.REVOKE
      }

    }
  }
</script>

<style scoped>

</style>

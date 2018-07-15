<template>
  <div class="alert" v-bind:class="getNotificationClassName()" role="alert">{{body}}</div>

</template>

<script>
  export default {
    name: "Notification",
    props: {
      body: {
        type: String,
        required: true
      },
      notificationType: {
        type: String,
        required: true
      }
    },
    computed:{
      getNotificationClassName(){
        return `alert-${this.notificationType}`
      }
    }

  }
</script>

<style scoped>

</style>

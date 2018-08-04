<template>
  <div class="card mb-1">
    <div class="row">
      <div class="col-sm-2">

        <img class="img-thumbnail" :src="avatarPath" v-if="avatarAttached">
        <img class="img-thumbnail" src="/avatar.png" v-if="!avatarAttached">
        <div class="text-center">{{screenName}}</div>
      </div>
      <div class="col-sm-10">
        <div class="card-body card-text">
          <p>{{body}}</p>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-sm-12">
        <div class="card-body card-text text-right">
          <i class="fas fa-trash mr-1 color-danger" role="button" @click="$emit('destroy',1)"></i>
          投稿日時: 2018年07月15日 11:07:52
        </div>
      </div>
    </div>
  </div>

</template>

<script>
  import axios from '../modules/axios'
  import dateFormat from 'dateformat'

  export default {
    name: "CommentCard",
    props: {
      id: {
        required: true
      },
      avatarAttached: {
        required: true
      },
      avatarPath: {
        type: String
      },
      screenName: {
        type: String,
        required: true
      },
      body: {
        type: String,
        required: true
      },
      createdAt: {
        required: true
      }
    },
    data: function () {
      return {
        removeButtonEnabled: true
      }
    },
    methods: {
      trashButtonClick() {
        console.log('trash button clicked')
        // TODO
      }
    },
    computed: {
      updatedAtToDateFormat(){
        return dateFormat(this.comment.created_at,"yyyy年mm月dd日")
      }

    }
  }
</script>

<style scoped>

</style>

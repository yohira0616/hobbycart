<template>
  <div class="card mb-1">
    <div class="row">
      <div class="col-sm-2"><img class="img-thumbnail" src="/avatar.png">
        <div class="text-center">yohira_dev</div>
      </div>
      <div class="col-sm-10">
        <div class="card-body card-text"><p>コメントてすと</p></div>
      </div>
    </div>
    <div class="row">
      <div class="col-sm-12">
        <div class="card-body card-text text-right"><i class="fas fa-trash mr-1 color-danger"></i>
          投稿日時: 2018年07月15日 11:07:52
        </div>
      </div>
    </div>
  </div>

</template>

<script>
  import axios from '../modules/axios'

  export default {
    name: "CommentCard",
    props: {
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
        // TODO
      }
    }

  }
</script>

<style scoped>

</style>

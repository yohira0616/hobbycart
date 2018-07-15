import Vue from 'vue/dist/vue.esm'
import ReviewForm from '../../components/ReviewForm'
import CommentForm from '../../components/CommentForm'
import GoodButton from '../../components/GoodButton'
import HelloWorld from '../../components/HelloWorld'

console.log('items/index hello!')

document.addEventListener('DOMContentLoaded', () => {
  // new Vue({
  //   el: '.comment-form',
  //   template: '<CommentForm />',
  //   components: {CommentForm}
  // })
  const commentFormDom = document.querySelectorAll('.comment-form')
  commentFormDom.forEach((elem)=>{
    new Vue({
      el: elem,
      template: '<CommentForm />',
      components: {CommentForm}
    })
  })

  new Vue({
    el: '#hello-world',
    template: '<HelloWorld />',
    components: {HelloWorld}
  })


  console.log('render done!')
})

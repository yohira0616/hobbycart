import Vue from 'vue/dist/vue.esm'
import ReviewForm from '../../components/ReviewForm'
import CommentForm from '../../components/CommentForm'
import GoodButton from '../../components/GoodButton'
import HelloWorld from '../../components/HelloWorld'

console.log('items/index hello!')

document.addEventListener('DOMContentLoaded', () => {
  const commentFormDom = document.querySelectorAll('.comment-form')
  commentFormDom.forEach((elem)=>{
    new Vue({
      el: elem,
      template: '<CommentForm />',
      components: {CommentForm}
    })
  })

  // const GoodButtonForm = document.querySelectorAll('.good-button')
  // GoodButtonForm.forEach((elem)=>{
  //   new Vue({
  //     el: elem,
  //     template:'<GoodButton />',
  //     components: {GoodButton}
  //   })
  // })

  new Vue({
    el: '#hello-world',
    template: '<HelloWorld />',
    components: {HelloWorld}
  })


  console.log('render done!')
})

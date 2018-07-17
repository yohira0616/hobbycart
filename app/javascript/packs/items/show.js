import Vue from 'vue/dist/vue.esm'
import ReviewForm from '../../components/ReviewForm'
import CommentForm from '../../components/CommentForm'
import GoodButton from '../../components/GoodButton'
import HelloWorld from '../../components/HelloWorld'

document.addEventListener('DOMContentLoaded', () => {
  const commentFormDom = document.querySelectorAll('.comment-form')
  commentFormDom.forEach((elem)=>{
    const itemId = Number(elem.dataset.itemId)
    new Vue({
      el: elem,
      template: `<CommentForm item-id="${itemId}" />`,
      components: {CommentForm}
    })
  })

  const GoodButtonForm = document.querySelectorAll('.good-button')
  GoodButtonForm.forEach((elem)=>{
    const itemId = Number(elem.dataset.itemId)
    const reactionId = elem.dataset.reactionId
    new Vue({
      el: elem,
      template:`<GoodButton item-id="${itemId}" reaction-id="${reactionId}" />`,
      components: {GoodButton}
    })
  })

  console.log('render done!')
})

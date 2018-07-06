const { environment } = require('@rails/webpacker')
const vue =  require('./loaders/vue')
const webpack = require('webpack')

// vue
environment.loaders.append('vue', vue)

// jquery
environment.plugins.prepend(
  'Provide',
  // bootstrap付属品
  new webpack.ProvidePlugin({
    $: 'jquery/dist/jquery',
    jQuery: 'jquery/dist/jquery',
    Popper: 'popper.js/dist/popper'
  })
)

module.exports = environment

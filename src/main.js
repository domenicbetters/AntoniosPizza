import '@babel/polyfill'
import 'mutationobserver-shim'
import Vue from 'vue'
import './plugins/bootstrap-vue'
import App from './App.vue'
import "../css/app.min.css"
import "../src/assets/app.css"
import router from './router'


Vue.config.productionTip = false

new Vue({
  router,
  render: h => h(App),
}).$mount('#app')

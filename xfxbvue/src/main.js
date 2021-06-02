import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import MyHeader from './components/MyHeader.vue'
import MyFooter from './components/MyFooter.vue'
import axios from 'axios'
axios.defaults.baseURL="http://127.0.0.1:8081"
Vue.config.productionTip = false;
//将配置好的axios对象放到vue的原型对象中
Vue.prototype.axios=axios;
Vue.component("my-header",MyHeader);
Vue.component("my-footer",MyFooter);
new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')

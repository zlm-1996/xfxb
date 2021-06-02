import Vue from 'vue'
import VueRouter from 'vue-router'
// import { component } from 'vue/types/umd'
import Index from '../views/Index.vue'
import Login from '../views/Login.vue'
import Regster from '../views/Regster.vue'
import Products from '../views/Products.vue'
import Carsoual from '../views/Carsoual.vue'

// import Home from '../views/Home.vue'
Vue.use(VueRouter)

const routes = [
  {
    path: '/',
     component: Index
   },
   {
    path: '/banner',
     component: Carsoual
   },
   {
     path:'/reg',
     component:Regster
   },
   {
    path:'/product:kw',
    component:Products,
    props:true
  },
   {
    path: '/login',
    component: Login
    // name: 'About',
    // route level code-splitting
//     // this generates a separate chunk (about.[hash].js) for this route
//     // which is lazy-loaded when the route is visited.
    // component: () => import(/* webpackChunkName: "login" */ '../views/Login.vue')
   },
  {
    path: '/details:pid',
    // name: 'About',
    // route level code-splitting
//     // this generates a separate chunk (about.[hash].js) for this route
//     // which is lazy-loaded when the route is visited.
     component: () => import(/* webpackChunkName: "details" */ '../views/Details.vue'),
     props:true
  },
 ]

const router = new VueRouter({
  routes
})

export default router

import { createRouter, createWebHashHistory, RouteRecordRaw } from 'vue-router'

const routes: Array<RouteRecordRaw> = [
  {
    path: '/',
    name: 'PageA',
    component: () => import(/* webpackChunkName: "about" */ '../views/pageA.vue')
  },
  {
    path: '/pageB',
    name: 'PageB',
    component: () => import(/* webpackChunkName: "about" */ '../views/pageB.vue')
  }
]

const router = createRouter({
  history: createWebHashHistory(),
  routes
})

export default router

import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import AboutView from '@/views/AboutView.vue'
import AddView from '@/views/func/AddView.vue'
import UserProfile from '@/views/user/UserProfile.vue'
import UserEdit from '@/views/user/UserEdit.vue'
import ContentPage from '@/views/ContentPage.vue'
import adminPanel from '@/views/adminPanel.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/home',
      name: 'home',
      component: HomeView,
    },
    {
      path: '/admin',
      name: 'admin',
      component: adminPanel
    },
    {
      path: '/home/add',
      name: 'add',
      component: AddView
    },
    {
      path: '/about',
      name: 'about',
      component: AboutView
    },
    {
      path: '/user/profile',
      name: 'user-profile',
      component: UserProfile
    },
    {
      path: '/user/edit',
      name: 'user-edit',
      component: UserEdit
    },
    {
      path: '/page',
      name: 'page',
      component: ContentPage
    },
    {
      path: '/login',
      name: 'login',
      component: () => import('../views/auth/LogIn.vue')
    },
    {
      path: '/register',
      name: 'register',
      component: () => import('../views/auth/Register.vue')
    },
    {
      path: '/',
      name: 'welcome',
      // route level code-splitting
      // this generates a separate chunk (About.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import('../views/WelcomeView.vue')
    }
  ]
})

export default router

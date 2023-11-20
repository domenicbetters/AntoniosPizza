
import MainPage from "@/views/MainPage.vue"
import LocationPage from "@/views/LocationPage.vue"
import MenuPage from "@/views/MenuPage.vue"
import VeganPage from "@/views/VeganPage.vue"
import CateringPage from "@/views/CateringPage.vue"
import EventPage from "@/views/EventPage.vue"
import ContactPage from "@/views/ContactPage.vue"
import AboutPage from "@/views/AboutPage.vue"
import VueRouter from 'vue-router'
import Vue from 'vue'


Vue.use(VueRouter)

const routes = [
    {
        path: '/',
        redirect: { name: 'Main' }
      },
    {
      path: "/AntoniosPizza",
      name: "Main",
      component: MainPage
    },
    {
        path: "/AntoniosPizza/location",
        name: "Location",
        component: LocationPage
    },
    {
      path: '/location',
      redirect: { name: 'Location' }
    },
    {
        path: "/AntoniosPizza/menu/full",
        name: "Full Menu",
        component: MenuPage
    },
    {
      path: '/menu/full',
      redirect: { name: 'Full Menu' }
    },
    {
        path: "/AntoniosPizza/menu/vegan",
        name: "Vegan Menu",
        component: MenuPage
    },
    {
      path: '/menu/vegan',
      redirect: { name: 'Vegan Menu' }
    },
    {
        path: "/AntoniosPizza/vegan",
        name: "Vegan",
        component: VeganPage
    },
    {
      path: '/vegan',
      redirect: { name: 'Vegan' }
    },
    {
        path: "/AntoniosPizza/catering",
        name: "Catering",
        component: CateringPage
    },
    {
      path: '/catering',
      redirect: { name: 'Catering' }
    },
    {
        path: "/AntoniosPizza/events",
        name: "Events",
        component: EventPage
    },
    {
      path: '/events',
      redirect: { name: 'Events' }
    },
    {
        path: "/AntoniosPizza/about",
        name: "About",
        component: AboutPage
    },
    
    {
        path: '/about',
        redirect: { name: 'About' }
      },
    {
        path: "/AntoniosPizza/contact",
        name: "Contact",
        component: ContactPage
    },
    {
      path: '/contact',
      redirect: { name: 'Contact' }
    },
      
  ]

  const router = new VueRouter({
    routes,
    mode: 'history',
 })
  
  export default router
<template> 
<div id="app">
  <ModalPop :key="modal.link" v-for="(modal) in modals" :link = "modal.link" v-show="modal.showing" @modal-switch-off="modalswitch" :modal="modal"/>
  <img v-on:pointermove="($event) => [$event.target.classList.add('goaway'), $event.target.classList.remove('peakybean')]" 
       v-on:touchstart="($event) => [$event.target.classList.add('goaway'), $event.target.classList.remove('peakybean')]" 
       v-on:animationend="($event) => [$event.target.classList.add('peakybean'), $event.target.classList.remove('goaway')]" 
    class = "bean peakybean" src="@/assets/images/bean.png" />
    <div class ="header-menu"><NavBar/></div>
      <h1 class="juice" v-if="this.$route.path == '/AntoniosPizza/menu/full'">Full Menu</h1>
      <h1 class="juice"  v-if="this.$route.path == '/AntoniosPizza/menu/vegan'">Vegan Menu</h1>
       <div class="main"><router-view   @modal-switch-on="modalswitch" :veganOnly="VeganPath()"/></div>
    <div ><FooterBar/></div>
</div>
</template>

<script>
import NavBar from './components/NavBar.vue'
import FooterBar from './components/FooterBar.vue'
import ModalPop from "./components/ModalPop.vue"

export default {
  name: 'App',
  components: {
    NavBar,
    FooterBar,
    ModalPop
  },
  data(){
    return {
      menu: false,
      modals: [
        {link: require('@/assets/images/newshopinfo.png'),
         showing: false,
         id: 1 },
         {link: require('@/assets/images/dom.jpg'),
         showing: false,
        id: 2 },
      ]
    }
  },

  methods: {
    VeganPath() {
        if(this.$route.path == '/AntoniosPizza/menu/vegan' ) {
          return true
        } else {
          return false
        }
    },
    modalswitch(modal) {
      //  if (this.modal.id === modal) {
      //   this.modal.showing = !this.modal.showing
      //  }
        for(let i = 0, len=this.modals.length; i<len; i++){ 
         if(this.modals[i].id==modal) {
          this.modals[i].showing = !this.modals[i].showing
         }
        
      }
     
  },
},
}
</script>


<style>

@font-face {
    font-family: 'juice';
    src: local('juice'),
    url(./fonts/juice.ttf);
}
@media (max-width: 991.5px) {
  .header-menu {
    font-size: .75em;
  }
}

@media (max-width: 1685.5px) and (min-width: 991.5px) {
  .header-menu {
    font-size: .75em;
  }
  }

  @import url('https://fonts.googleapis.com/css2?family=Amatic+SC:wght@700&family=Oswald&display=swap');

#app {
  font-family: 'Oswald', sans-serif;
  font-size: 1.5em;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: white;
  margin-top: 60px;
  display:flex;
  flex-direction: column;
}

@media only screen {
  #app {
    font-size: 1.15em;
 }
}
.main {
  display: flex;
  justify-content: center;
}

.juice {
  font-family: juice;
  font-size: 2em;
  color: #FFFAA1;
}
.goaway{
  -webkit-animation: go-away 6s;
  animation: go-away 6s;
  animation-fill-mode:forwards;
  -webkit-animation-fill-mode: forwards;
  
}

</style>

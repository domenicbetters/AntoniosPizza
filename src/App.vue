<template> 
<div id="app">
  <ModalPop :link="require('@/assets/images/stonermenu.jpg')" v-show="modal" @modal-switch="modalswitch()" />
  <img class = "bean" src="@/assets/images/bean.png" />
    <div class ="header-menu"><NavBar/></div>
      <h1 class="juice" v-if="this.$route.path == '/AntoniosPizza/menu/full'">Full Menu</h1>
      <h1 class="juice"  v-if="this.$route.path == '/AntoniosPizza/menu/vegan'">Vegan Menu</h1>
       <div class="main"><router-view   @modal-switch="modalswitch()" :veganOnly="VeganPath()"/></div>
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
      modal: false,
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
    modalswitch() {
       this.modal = !this.modal
  }
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
</style>

<template> 
<div id="app">
    <div class ="header-menu"><NavBar 
      @show-home="ShowHome"
      @show-location="ShowLocation"/></div>
    <div v-show="HomeExists === 'yes'" class = "car-holder"><MainPage/></div>
    <div  class="location" v-show="LocationExists === 'yes'"><LocationPage/></div>
    <div><FooterBar/></div>
</div>
</template>

<script>
import NavBar from './components/NavBar.vue'
import LocationPage from './components/LocationPage.vue'
import MainPage from './components/MainPage.vue'
import FooterBar from './components/FooterBar.vue'

export default {
  name: 'App',
  components: {
    NavBar,
    LocationPage,
    MainPage,
    FooterBar,
  },
  data(){
    return {
      HomeExists: 'yes',
      LocationExists: 'no',
    }
  },
  methods: {
     ShowHome() {
      this.HomeExists =  'yes',
      this.LocationExists = 'no'
     },
     ShowLocation() {
      this.HomeExists =  'no',
      this.LocationExists = 'yes'
     }
  }
 
}
</script>


<style>

@font-face {
    font-family: 'juice';
    src: local('juice'),
    url(./fonts/juice.ttf);
}
.car-holder {
  margin:10px;
}
@media (max-width: 991.5px) {
  .header-menu {
    font-size: .75em;
  }
}


#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: white;
  margin-top: 60px;
  display:flex;
  flex-direction: column;
}
.location {
  display: flex;
  justify-content: center;
}
</style>

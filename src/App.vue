<template> 
<div id="app">
    <div class ="header-menu"><NavBar 
      @show-home="ShowHome"
      @show-location="ShowLocation"
      @show-vegan="ShowVegan"/></div>
    <div v-show="HomeExists === 'yes'" class = "car-holder"><MainPage/></div>
    <div  class="location" v-show="LocationExists === 'yes'"><LocationPage/></div>
    <div  class="vegan" v-show="VeganExists === 'yes'"><VeganPage/></div>
    <div><FooterBar/></div>
</div>
</template>

<script>
import NavBar from './components/NavBar.vue'
import LocationPage from './components/LocationPage.vue'
import MainPage from './components/MainPage.vue'
import FooterBar from './components/FooterBar.vue'
import VeganPage from './components/VeganPage.vue'

export default {
  name: 'App',
  components: {
    NavBar,
    LocationPage,
    MainPage,
    FooterBar,
    VeganPage,
  },
  data(){
    return {
      HomeExists: 'yes',
      LocationExists: 'no',
      VeganExists: 'no',
    }
  },
  methods: {
     ShowHome() {
      this.HomeExists =  'yes',
      this.LocationExists = 'no'
      this.VeganExists = 'no'
     },
     ShowLocation() {
      this.HomeExists =  'no',
      this.LocationExists = 'yes'
      this.VeganExists = 'no'
     },
     ShowVegan() {
      this.HomeExists =  'no',
      this.LocationExists = 'no'
      this.VeganExists = 'yes'
     },
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

@media (max-width: 1685.5px) and (min-width: 991.5px) {
  .header-menu {
    font-size: .75em;
  }
  }

@import url('https://fonts.googleapis.com/css2?family=Amatic+SC&display=swap');

#app {
  font-family: 'Amatic SC', cursive;
  font-size: 1.5em;
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
.vegan {
  display: flex;
  justify-content: center;
}
</style>

<template> <div id="app">
    <div class ="header-menu"><NavBar @do-the-thing="dothething"/></div>
    <img alt="Vue logo" src="./assets/logo.png">
    <HelloWorld v-show="helloexists === 'yes'" msg="Welcome to Your Vue.js App"/>
    <div v-show="hellopyexists === 'yes'"><HellOpy/></div>
  </div>
</template>

<script>
import HelloWorld from './components/HelloWorld.vue'
import NavBar from './components/NavBar.vue'
import HellOpy from './components/HellOpy.vue'

export default {
  name: 'App',
  components: {
    HelloWorld,
    NavBar,
    HellOpy
  },
  data(){
    return {
      hellopyexists: 'no',
      helloexists: 'yes',
    }
  },
  methods: {
     dothething() {
      this.hellopyexists =  'yes',
      this.helloexists = 'no'
     }
  }
 
}
</script>


<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #1684f3;
  margin-top: 60px;
}
</style>

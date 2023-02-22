<template>
  <div class="main-body">
    <div class ="menu-body">
      <div class="navvy">
        <b-navbar toggleable="lg" type="dark" variant="info">
          <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>
          <b-collapse id="nav-collapse" is-nav>
            <b-navbar-nav>
              <b-nav-item  @click="ShowPizza()" v-bind:class="{active: PizzaisActive}" href="#">Pizza</b-nav-item>
              <b-nav-item @click="ShowSpecial()" v-bind:class="{active: SpecialisActive}" href="#">Specialty Pizza</b-nav-item>
              <b-nav-item @click="ShowSandwich()" v-bind:class="{active: SandwichisActive}" href="#">Sandwiches</b-nav-item>
              <b-nav-item href="#">Salads</b-nav-item>
              <b-nav-item @click="ShowApp()" v-bind:class="{active: AppisActive}" href="#">Appetizers</b-nav-item>
              <b-nav-item href="#">Wings</b-nav-item>
              <b-nav-item href="#">Fries</b-nav-item>
              <b-nav-item href="#">Pasta</b-nav-item>
              <b-nav-item href="#">Deserts</b-nav-item>
              <b-nav-item href="#">Drinks</b-nav-item>
            </b-navbar-nav>
          </b-collapse>
        </b-navbar>
      </div>
      <div class = "section-view">
        <div v-show="PizzaExists === 'yes'"><PizzaPage/></div>
        <div v-show="SpecialExists === 'yes'"><SpecialPizza/></div>
        <div v-show="SandwichExists === 'yes'"><SandwichPage/></div>
        <div v-show="AppExists === 'yes'"><AppPage/></div>
      </div>
    </div>
  </div>
</template>

<script>
import PizzaPage from './PizzaPage.vue'
import SpecialPizza from './SpecialPizza.vue'
import SandwichPage from './SandwichPage.vue'
import AppPage from './AppPage.vue'

export default {
  name: 'MenuPage',
  
  components: {
    PizzaPage,
    SpecialPizza,
    SandwichPage,
    AppPage,
  },
  data(){
    return {
      PizzaExists: 'yes',
      PizzaisActive: true,

      SpecialExists: 'no',
      SpecialisActive: false,

      SandwichExists: 'no',
      SandwichisActive: false,

      AppExists: 'no',
      AppisActive: false,
    
      
    }
  },
  methods: {
  ShowPizza() {
      this.PizzaExists =  'yes',
      this.SpecialExists = 'no',
      this.SandwichExists = 'no',
      this.AppExists = 'no',

      this.PizzaisActive = true,
      this.SpecialisActive = false
      this.SandwichisActive = false
      this.AppisActive = false

     },

     ShowSpecial() {
      this.PizzaExists =  'no',
      this.SpecialExists = 'yes',
      this.SandwichExists = 'no',
      this.AppExists = 'no',

      this.PizzaisActive = false,
      this.SpecialisActive = true
      this.SandwichisActive = false
      this.AppisActive = false

     },

     ShowSandwich() {
      this.PizzaExists =  'no',
      this.SpecialExists = 'no',
      this.SandwichExists = 'yes',
      this.AppExists = 'no',

      this.PizzaisActive = false,
      this.SpecialisActive = false
      this.SandwichisActive = true
      this.AppisActive = false

     },
     ShowApp() {
      this.PizzaExists =  'no',
      this.SpecialExists = 'no',
      this.SandwichExists = 'no',
      this.AppExists = 'yes',

      this.PizzaisActive = false,
      this.SpecialisActive = false
      this.SandwichisActive = false
      this.AppisActive = true

     },
  },
  props: {
    msg: String
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h3 {
  margin: 40px 0 0;
}
ul {
  display: block;
  padding: 0;
}
li {
  display: inline;
  margin: 0 5px;
}
a {
  color: #42b983;
}

.navbar {
  border-right: 5px double white;
  border-bottom: none;
  width: auto;
  top: 0;
}
.menu-body {
  display: flex;
  flex-direction: row;
  width: 100%;
}

.section-view {
  width:100%;
}

@media (max-width: 991.5px) {
  .section-view {
    overflow: hidden;
  }
  .navvy {
    position: absolute;
    background: rgb(0,0,0,.90);
  }

}

</style>

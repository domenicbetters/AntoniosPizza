<template>
  <div class="main-body shadow-drop-2-center">
    <div class ="menu-body fade-in">
      <div class="navvy">
        <b-navbar toggleable="lg" type="dark" variant="info">
          <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>
          <b-collapse id="nav-collapse" is-nav>
            <b-navbar-nav>
              <b-nav-item @click="ShowLimited()" v-bind:class="{active: LimitedisActive}" href="#">Specials</b-nav-item>
              <b-nav-item @click="ShowPizza()" v-bind:class="{active: PizzaisActive}" href="#">Pizzas</b-nav-item>
              <b-nav-item @click="ShowSpecial()" v-bind:class="{active: SpecialisActive}" href="#">Specialty Pizza</b-nav-item>
              <b-nav-item @click="ShowSandwich()" v-bind:class="{active: SandwichisActive}" href="#">Sandwiches</b-nav-item>
              <b-nav-item @click="ShowSalad()" v-bind:class="{active: SaladisActive}" href="#">Salads</b-nav-item>
              <b-nav-item @click="ShowApp()" v-bind:class="{active: AppisActive}" href="#">Appetizers</b-nav-item>
              <b-nav-item @click="ShowWings()" v-bind:class="{active: WingsisActive}" href="#">Wings and Fries</b-nav-item>
              <b-nav-item @click="ShowPasta()" v-bind:class="{active: PastaisActive}" href="#">Pasta & Gyros</b-nav-item>
              <b-nav-item @click="ShowDessert()" v-bind:class="{active: DessertisActive}" href="#">Desserts</b-nav-item>
              <b-nav-item @click="ShowDrinks()" v-bind:class="{active: DrinksisActive}"  href="#">Bubble Tea & Drinks</b-nav-item>
            </b-navbar-nav>
          </b-collapse>
        </b-navbar>
      </div>
      <div class = "section-view">
        <div class="fade-in-quick" v-show="PizzaExists === 'yes'"><PizzaPage  :veganOnly="veganOnly"/></div>
        <div class="fade-in-quick" v-show="SpecialExists === 'yes'"><SpecialPizza :veganOnly="veganOnly"/></div>
        <div class="fade-in-quick" v-show="SandwichExists === 'yes'"><SandwichPage :veganOnly="veganOnly"/></div>
        <div class="fade-in-quick" v-show="SaladExists === 'yes'"><SaladPage :veganOnly="veganOnly"/></div>
        <div class="fade-in-quick" v-show="AppExists === 'yes'"><AppPage :veganOnly="veganOnly" /></div>
        <div class="fade-in-quick" v-show="WingsExists === 'yes'"><WingsPage :veganOnly="veganOnly"/></div>
        <div class="fade-in-quick" v-show="LimitedExists === 'yes'"><LimitedPage :veganOnly="veganOnly"/></div>
        <div class="fade-in-quick" v-show="PastaExists === 'yes'"><PastaPage :veganOnly="veganOnly"/></div>
        <div class="fade-in-quick" v-show="DessertExists === 'yes'"><DessertPage :veganOnly="veganOnly"/></div>
        <div class="fade-in-quick" v-show="DrinksExists === 'yes'"><DrinksPage :veganOnly="veganOnly"/></div>
      </div>
    </div>
  </div>
</template>

<script>
import PizzaPage from '../components/PizzaPage.vue'
import SpecialPizza from '../components/SpecialPizza.vue'
import SandwichPage from '../components/SandwichPage.vue'
import AppPage from '../components/AppPage.vue'
import SaladPage from '../components/SaladPage.vue'
import WingsPage from '../components/WingsPage.vue'
import LimitedPage from '../components/LimitedPage.vue'
import PastaPage from '../components/PastaPage.vue'
import DessertPage from '../components/DessertPage.vue'
import DrinksPage from '../components/DrinksPage.vue'

export default {
  name: 'MenuPage',
  
  components: {
    PizzaPage,
    SpecialPizza,
    SandwichPage,
    AppPage,
    SaladPage,
    WingsPage,
    LimitedPage,
    PastaPage,
    DessertPage,
    DrinksPage,
  },
  data(){
    return {

      PizzaExists: 'no',
      PizzaisActive: false,

      SpecialExists: 'no',
      SpecialisActive: false,

      SandwichExists: 'no',
      SandwichisActive: false,

      AppExists: 'no',
      AppisActive: false,

      SaladExists: 'no',
      SaladisActive: false,
      
      WingsExists: 'no',
      WingsisActive: false,

      LimitedExists: 'yes',
      LimitedisActive: true,

      PastaExists: 'no',
      PastaisActive: false,

      DessertExists: 'no',
      DessertisActive: false,

      DrinksExists: 'no',
      DrinksisActive: false,
    
      
    }
  },
  methods: {

  ShowPizza() {
      this.PizzaExists =  'yes',
      this.SpecialExists = 'no',
      this.SandwichExists = 'no',
      this.AppExists = 'no',
      this.SaladExists = 'no',
      this.WingsExists = 'no',
      this.LimitedExists = 'no',
      this.PastaExists = 'no',
      this.DessertExists = 'no',
      this.DrinksExists = 'no',

      this.PizzaisActive = true,
      this.SpecialisActive = false
      this.SandwichisActive = false
      this.AppisActive = false
      this.SaladisActive = false
      this.WingsisActive = false
      this.LimitedisActive = false
      this.PastaisActive = false
      this.DessertisActive = false
      this.DrinksisActive = false


 

     },

     ShowSpecial() {
      this.PizzaExists =  'no',
      this.SpecialExists = 'yes',
      this.SandwichExists = 'no',
      this.AppExists = 'no',
      this.SaladExists = 'no',
      this.WingsExists = 'no',
      this.LimitedExists = 'no',
      this.PastaExists = 'no',
      this.DessertExists = 'no',
      this.DrinksExists = 'no',

      this.PizzaisActive = false,
      this.SpecialisActive = true
      this.SandwichisActive = false
      this.AppisActive = false
      this.SaladisActive = false
      this.WingsisActive = false
      this.LimitedisActive = false
      this.PastaisActive = false
      this.DessertisActive = false
      this.DrinksisActive = false

     },

     ShowSandwich() {
      this.PizzaExists =  'no',
      this.SpecialExists = 'no',
      this.SandwichExists = 'yes',
      this.AppExists = 'no',
      this.SaladExists = 'no',
      this.WingsExists = 'no',
      this.LimitedExists = 'no',
      this.PastaExists = 'no',
      this.DessertExists = 'no',
      this.DrinksExists = 'no',

      this.PizzaisActive = false,
      this.SpecialisActive = false
      this.SandwichisActive = true
      this.AppisActive = false
      this.SaladisActive = false
      this.WingsisActive = false
      this.LimitedisActive = false
      this.PastaisActive = false
      this.DessertisActive = false
      this.DrinksisActive = false
     },
     ShowApp() {
      this.PizzaExists =  'no',
      this.SpecialExists = 'no',
      this.SandwichExists = 'no',
      this.AppExists = 'yes',
      this.SaladExists = 'no',
      this.WingsExists = 'no',
      this.LimitedExists = 'no',
      this.PastaExists = 'no',
      this.DessertExists = 'no',
      this.DrinksExists = 'no',

      this.PizzaisActive = false,
      this.SpecialisActive = false
      this.SandwichisActive = false
      this.AppisActive = true
      this.SaladisActive = false
      this.WingsisActive = false
      this.LimitedisActive = false
      this.PastaisActive = false
      this.DessertisActive = false
      this.DrinksisActive = false
     },

     ShowSalad() {
      this.PizzaExists =  'no',
      this.SpecialExists = 'no',
      this.SandwichExists = 'no',
      this.AppExists = 'no',
      this.SaladExists = 'yes',
      this.WingsExists = 'no',
      this.LimitedExists = 'no',
      this.PastaExists = 'no',
      this.DessertExists = 'no',
      this.DrinksExists = 'no',

      this.PizzaisActive = false,
      this.SpecialisActive = false
      this.SandwichisActive = false
      this.AppisActive = false
      this.SaladisActive = true
      this.WingsisActive = false
      this.LimitedisActive = false
      this.PastaisActive = false
      this.DessertisActive = false
      this.DrinksisActive = false
     },

     ShowWings() {
      this.PizzaExists =  'no',
      this.SpecialExists = 'no',
      this.SandwichExists = 'no',
      this.AppExists = 'no',
      this.SaladExists = 'no',
      this.WingsExists = 'yes',
      this.LimitedExists = 'no',
      this.PastaExists = 'no',
      this.DessertExists = 'no',
      this.DrinksExists = 'no',

      this.PizzaisActive = false,
      this.SpecialisActive = false
      this.SandwichisActive = false
      this.AppisActive = false
      this.SaladisActive = false
      this.WingsisActive = true
      this.LimitedisActive = false
      this.PastaisActive = false
      this.DessertisActive = false
      this.DrinksisActive = false
     },
     
     ShowLimited() {
      this.PizzaExists =  'no',
      this.SpecialExists = 'no',
      this.SandwichExists = 'no',
      this.AppExists = 'no',
      this.SaladExists = 'no',
      this.WingsExists = 'no',
      this.LimitedExists = 'yes',
      this.PastaExists = 'no',
      this.DessertExists = 'no',
      this.DrinksExists = 'no',

      this.PizzaisActive = false,
      this.SpecialisActive = false
      this.SandwichisActive = false
      this.AppisActive = false
      this.SaladisActive = false
      this.WingsisActive = false
      this.LimitedisActive = true
      this.PastaisActive = false
      this.DessertisActive = false
      this.DrinksisActive = false
     },

     ShowPasta() {
      this.PizzaExists =  'no',
      this.SpecialExists = 'no',
      this.SandwichExists = 'no',
      this.AppExists = 'no',
      this.SaladExists = 'no',
      this.WingsExists = 'no',
      this.LimitedExists = 'no',
      this.PastaExists = 'yes',
      this.DessertExists = 'no',
      this.DrinksExists = 'no',

      this.PizzaisActive = false,
      this.SpecialisActive = false
      this.SandwichisActive = false
      this.AppisActive = false
      this.SaladisActive = false
      this.WingsisActive = false
      this.LimitedisActive = false
      this.PastaisActive = true
      this.DessertisActive = false
      this.DrinksisActive = false
     },

     ShowDessert() {
      this.PizzaExists =  'no',
      this.SpecialExists = 'no',
      this.SandwichExists = 'no',
      this.AppExists = 'no',
      this.SaladExists = 'no',
      this.WingsExists = 'no',
      this.LimitedExists = 'no',
      this.PastaExists = 'no',
      this.DessertExists = 'yes',
      this.DrinksExists = 'no',

      this.PizzaisActive = false,
      this.SpecialisActive = false
      this.SandwichisActive = false
      this.AppisActive = false
      this.SaladisActive = false
      this.WingsisActive = false
      this.LimitedisActive = false
      this.PastaisActive = false
      this.DessertisActive = true
      this.DrinksisActive = false
     },

     ShowDrinks() {
      this.PizzaExists =  'no',
      this.SpecialExists = 'no',
      this.SandwichExists = 'no',
      this.AppExists = 'no',
      this.SaladExists = 'no',
      this.WingsExists = 'no',
      this.LimitedExists = 'no',
      this.PastaExists = 'no',
      this.DessertExists = 'no',
      this.DrinksExists = 'yes',

      this.PizzaisActive = false,
      this.SpecialisActive = false
      this.SandwichisActive = false
      this.AppisActive = false
      this.SaladisActive = false
      this.WingsisActive = false
      this.LimitedisActive = false
      this.PastaisActive = false
      this.DessertisActive = false
      this.DrinksisActive = true
     },

  },
  props: {
    msg: String,
    veganOnly: Boolean,

  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>



.main-body {
  height: fit-content;
}
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

.navvy {
  z-index: 1000;
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

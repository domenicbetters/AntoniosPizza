<template>
  <div class="main-body">
    <div class ="menu-body">
      <div class="navvy">
        <b-navbar toggleable="lg" type="dark" variant="info">
          <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>
          <b-collapse id="nav-collapse" is-nav>
            <b-navbar-nav>
              <b-nav-item href="#">Pizza</b-nav-item>
              <b-nav-item href="#">Specialty Pizza</b-nav-item>
              <b-nav-item href="#">Sandwiches</b-nav-item>
              <b-nav-item href="#">Salads</b-nav-item>
              <b-nav-item href="#">Appetizers</b-nav-item>
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
        <PizzaPage/>
      </div>
    </div>
  </div>
</template>

<script>
import PizzaPage from './PizzaPage.vue'

export default {
  name: 'MenuPage',
  
  components: {
    PizzaPage,
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

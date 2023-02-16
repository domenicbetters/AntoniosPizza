<template>
  <div class = "menu-section">
    <h1>Pizzas, Calzones, Strombolis, and More</h1>
    <div class = "food-list">
      <div class = "food-name"><p>Cheese Pizza</p></div>
      <div class = "food-price"><p>15.00</p></div>
    </div>
    <div class = "food-list">
      <div class = "food-name"><p>Cheese Pizza</p></div>
      <div class = "food-price"><p>15.00</p></div>
    </div>

  </div>
</template>

<script>

export default {
  name: 'PizzaPage',
  components: {
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

.menu-section {
  width: 100%;
  border: 5px solid red;
  display: flex;
}

.food-list {
  border:1px solid white;
  display: grid;
  width: 50%
}
.food-name {
  grid-column-start: 1;
}
.food-price {
  grid-column-start: 2;
}

</style>

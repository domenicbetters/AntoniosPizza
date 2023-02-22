<template>
<div class="food-list" >
  <div class = "food-name"><h4>{{ item.name }}</h4></div>
  <div class = "food-desc"><p>{{item.price}}</p></div>
</div>
 </template>


<script>

export default {
  name: 'FoodItem',
  
  components: {
  },
  props: {
    item: Object
  },

}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
p {
  font-size: .65em;
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


.food-name {
  grid-column-start: 1;
  text-align: left;
}
.food-desc {
  grid-column-start: 2;
  text-align: right;
  font-weight: bolder;
  font-size: 1.2em;
}

</style>

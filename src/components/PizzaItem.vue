<template>
<div class="food-list" >
  <div class = "food-name"><h4>{{ item.name }}</h4></div>
  <div class = "food-desc"><p>{{item.desc}}</p></div>
</div>
 </template>


<script>

export default {
  name: 'PizzaItem',
  
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
  font-size: .75em;
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
}
.food-desc {
  grid-column-start: 2;
}

</style>

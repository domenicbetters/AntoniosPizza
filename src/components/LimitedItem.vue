<template>
<div class="box" >
  <div class = "food-name"><h4>{{ item.name }}</h4></div>
  <div class = "food-desc"><p><span>{{item.desc}}</span></p></div>
  <div class = "food-price"><p>{{item.price}}</p></div>
</div>
 </template>


<script>

export default {
  name: 'LimitedItem',
  
  components: {
  },
  props: {
    item: Object
  },

}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

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
  
  text-align: center;
}
.food-desc {
  text-align: center;
  font-style: italic;
}

.food-price {
  text-align: right;
  font-weight: bolder;
  font-size: .75em;
}

span {
  font-size: .8em;
}



</style>

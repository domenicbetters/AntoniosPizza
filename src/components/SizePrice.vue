<template>
<div>
  <div class = "size-name">{{ size.name }}</div>
  <div class = "size-price">{{size.price}}</div>
</div>
 </template>


<script>

export default {
  name: 'SizePrice',
  
  components: {
  },
  props: {
    size: Object
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h3 {
  margin: 10px;
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

.size-name {
  grid-column-start: 1;
}
.size-price {
  grid-column-start: 2;
}

</style>

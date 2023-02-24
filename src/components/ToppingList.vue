<template>
  <div>
  <p>{{ topping.name }}, </p>
</div>
 </template>


<script>

export default {
  name: 'ToppingList',
  
  components: {
  },
  props: {
    topping: Object
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


</style>

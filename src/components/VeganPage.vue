<template>
  <div class = "vegan-body">
    <div class = "vegan-box">
      <h1>vegan shit</h1>
     <CTAButton/>
    </div>
    <div class = "vegan-box">
      <h1>vegan shit</h1>
     <CTAButton/>
    </div>
    <div class = "vegan-box">
      <h1>vegan shit</h1>
     <CTAButton/>
    </div>
</div>
</template>

<script>
import CTAButton from './CTAbutton.vue'

export default {
  name: 'VeganPage',
  components: {
    CTAButton,
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
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>

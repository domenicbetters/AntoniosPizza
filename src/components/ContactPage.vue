<template>
  <div class = "main-body contact-body">
    <div>
      <h1>Need to get a hold of us?  Here's how...</h1>
      <a href="tel:4123881000"><h2><i class="fa-sharp fa-solid fa-phone"></i>: 412-388-1000</h2></a>
      <P>Call During Regular Business Hours</P>
      <a href="mailto:antoniospizzeriabrookline@gmail.com"><h2><i class="fa-sharp fa-solid fa-envelope"></i>: antoniospizzeriabrookline@gmail.com</h2></a>
      <P>Email Us During Any Hours</P>
    </div>
    <div>
      <img src="../assets/images/zombie.jpg"/>
    </div>
  </div>
</template>

<script>
// import CTAButton from './CTAbutton.vue'

export default {
  name: 'ContactPage',
  components: {
    // CTAButton,
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
  width: 100%;
  list-style-type: disc;
  list-style-position: inside;
  margin-top: 1em;
  margin-bottom: 1 em;
  margin-left: 0;
  margin-right: 0;
  padding-left: 0;
  text-align: center;
}

a {
  color: #a9a4a3;
}
a:hover {
  color: #fffdd2;
  text-decoration: none;
}
img {
  max-width: 100%;
  object-fit: contain;
}


</style>

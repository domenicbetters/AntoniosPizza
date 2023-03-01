<template>
  <div class = "main-body contact-body">
    <div class="fontsize">
      <h2>Need to get a hold of us?  Here's how...</h2>
      <a href="tel:4123881000"><h4><i class="fa-sharp fa-solid fa-phone"></i>: 412-388-1000</h4></a>
      <P>Call During Regular Business Hours</P>
      <a href="mailto:antoniospizzeriabrookline@gmail.com"><h4><i class="fa-sharp fa-solid fa-envelope"></i>: antoniospizzeriabrookline@gmail.com</h4></a>
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
  width: 95%;
  height: 95%;
  object-fit: cover !important;
  margin: 10px;
}
.main-body {
  flex-direction:row ;
}

.fontsize {
  width: 65%;
}

@media (max-width: 991.5px) {
  .main-body {
    flex-direction: column;
    justify-content: center;
    align-items: center;
    height: fit-content;
  }
}
</style>

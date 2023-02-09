<template>
 <div class ="location-body">
    <div class = "hours-location-box">
      <h2>Shop Hours</h2>
      <p>Monday - Thursday: 11:00 AM - 10:00 PM</p>
      <p>Friday - Saturday: 11:00 AM - 11:00 PM</p>
      <p>Sunday: 12:00 PM - 10:00 PM</p>
    </div>
    <div class = "hours-location-box">
      <h2>Our Address</h2>
      <p>758 Brookline Blvd.</p>
      <p>Pittsburgh, PA 15226</p>
    </div>
    <div class="hours-location-box"><h2>We deliver anywhere with in a 2 mile radius of our location.</h2>
    <CTAButton text="See if you are in range" :link="'https://www.google.com/maps/d/u/0/edit?mid=1ThQJ2tuLOnyY2Ek00CnYAcVfPiQr4CY&ll=40.3907509343488%2C-79.99408847070312&z=14'"/>
    </div>
    <div class = "map-box">
      <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3038.7328574412745!2d-80.02136098860775!3d40.39261298700861!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8834f73a84dbfabf%3A0x268afdbb5f2f1950!2sAntonio&#39;s%20Pizzeria!5e0!3m2!1sen!2sus!4v1675967980869!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div>
</div>
</template>

<script>
import CTAButton from './CTAbutton.vue'

export default {
  name: 'LocationPage',
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

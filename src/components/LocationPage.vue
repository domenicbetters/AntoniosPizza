<template>
 <div class ="main-body location-body">
  <div class = "location-left">
  </div>
  <div class ="location-right">
    <div class = "hours-location-box">
      <h2>Shop Hours</h2>
      <p>Monday - Thursday: 11:00 AM - 10:00 PM</p>
      <p>Friday - Saturday: 11:00 AM - 11:00 PM</p>
      <p>Sunday: 12:00 PM - 10:00 PM</p>
      <CTAButton text="Place Your Order Now" :link="'https://antoniospizzeria.hungerrush.com/'"/>
    </div>
    <div class = "hours-location-box">
      <h2>Our Address</h2>
      <p>758 Brookline Blvd.</p>
      <p>Pittsburgh, PA 15226</p>
      <p>Home of the Cheesey Breadsticks!</p>
      <CTAButton text="Get Directions" :link="'https://goo.gl/maps/NSE8EaTPEAsYvR4y5'"/>
    </div>
    <div class="hours-location-box mobile-no"><h4>We deliver anywhere with in a 2 mile radius of our location.</h4>
      <CTAButton text="See If You Are In Range" :link="'https://www.google.com/maps/d/u/0/edit?mid=1ThQJ2tuLOnyY2Ek00CnYAcVfPiQr4CY&ll=40.3907509343488%2C-79.99408847070312&z=14'"/>
    </div>
  </div>
  <div class = "location-left-mobile">
    <div><img class = "mobile-shop-image" src = "../assets/images/shopfront.jpg" /></div>
    <div class="hours-location-box no-border"><h4>We deliver anywhere with in a 2 mile radius of our location.</h4>
      <CTAButton text="See If You Are In Range" :link="'https://www.google.com/maps/d/u/0/edit?mid=1ThQJ2tuLOnyY2Ek00CnYAcVfPiQr4CY&ll=40.3907509343488%2C-79.99408847070312&z=14'"/>
    </div>
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

<template>
  <div class = "all-page">
  <div class = "main-body shadow-drop-2-center">
    <div>
      <div class = "vegan-intro-box">
        <div class = "slide-left">
          <h1>Vegans need good pizza too!</h1>
          <p>We don't just want to offer some dairy free cheese.  We want to make sure we are the Pittsburgh destination for stellar pizza shop fair that doesn<a class="hidden" href="https://dos.zone/player/?bundleUrl=https%3A%2F%2Fcdn.dos.zone%2Fcustom%2Fdos%2Fdoom.jsdos?anonymous=1')">'</a>t throw any roadblocks in the way of your vegan lifestyle.</p>
           <p>Almost every vegan item is made in house from recipes developed over the last several years of tinkering and fine tuning.  We do our best to make sure that everything tastes as fantastic and authentic as it can, so you never get a case of FOMO.  </p>
        </div>
        <img class = "vegan-intro-image slide-right" src="../assets/images/vegan 1.jpg" alt = 'vegan image' />
        <img class = "vegan-intro-image-mobile slide-right" src="../assets/images/vegan 1.jpg" alt = 'vegan image' />
      </div>
    </div>
  </div>
  <div class = "main-body slide-top bottom-box">
    <div class="vegan-intro-box no-shadow">
      <div class = "vegan-box">
        <img class = "card-image" src="../assets/images/vegan 2.jpg" alt = 'vegan image' />
        <h2>We don't just make pizza</h2>
        <p>You need some pepperoni rolls for your next gathering?  Do you crave a hoagie full of fresh veggies and Italian meats that aren't really meats?  Just wish you could have ranch dressing again?  We got you covered for every craving and need you have.</p>
        <CTAButtonOutside  class="vbutton" text="Order now" :link="'https://antoniospizzeria.hungerrush.com/'"/>
      </div>
      <div class = "vegan-box">
        <img class = "card-image" src="../assets/images/vegan 3.jpg" alt = 'vegan image' />
        <h2>Why stop at plain pizza?</h2>
        <p> Like we said, we don't just offer the bair minimum.  If we come up with a new crazy pizza recipe for the masses, we make sure you are part of those masses.  Almost every specialty pizza and off the wall idea will have a vegan counterpart.</p> 
        <CTAButton class="vbutton" :rlink="'/AntoniosPizza/menu/full'" text="See what specialty pizzas may tempt you"/>
      </div>
      <div class = "vegan-box">
        <img class = "card-image" src="../assets/images/vegan2.jpg" alt = 'vegan image' />
        <h2>Plenty of Vegan events to find us at</h2>
       <p>We don't just keep ourselves confined to the shop.  We are always out and about in the community, selling our goods where our goods are desired.  It's worth noteing that a lot of times we bring special menus with items exclusive to that event that you won't be able to find in our shop. </p>
        <CTAButton class="vbutton"  :rlink="'/AntoniosPizza/'" text="What's coming up?"/>
      </div>
    </div>
</div>
</div>
</template>

<script>
import CTAButton from '../components/CTAbutton.vue'
import CTAButtonOutside from '../components/CTAbuttonOutside.vue'

export default {
  name: 'VeganPage',
  components: {
    CTAButton,
    CTAButtonOutside,
  },
  props: {
    msg: String
  }, 
  methods: {
    showMenus() {
        this.$emit('show-menu')
        this.$emit('toggle-vegan-on')
      },

      showMain() {
        this.$emit('show-home')
      }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

.hidden {
  color: var(--text);
  font-weight: normal;
  transition: none;
  cursor:text;
  text-decoration: none;
}

.hidden:hover {
  text-shadow: none;
  cursor:text;
}
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
.vbutton {
  font-size: .65em;
}
@media (max-width: 1150.5px) {
  .main-body {
    height:fit-content;
  }
}
</style>

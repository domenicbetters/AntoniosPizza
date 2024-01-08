<template>
  <div class="all-page">
<div class = "main-body shadow-drop-2-center">
  <div>
    <div class = "vegan-intro-box">
      <div>
        <h1 class="slide-left">Tina Betters has some pretty simple desires.</h1>
       <p class="slide-left">1) Make some of the best tasting pizza and grub in the city.  She’s gonna do that by making as much as she can from scratch and bringing in the best quality ingredients and fresh produce.  She’s going to use those years and years of culinary experience to fine tune all her recipes to their absolute perfect selves.  </p>
       <p class="slide-left">2) Ensure that pizza isn’t just for some, but for all.  If you have a restricted diet like a lot of her vegan friends do, Tina will do her best to make sure you aren’t feeling left out.  And once again, as much she can, she is making the vegan and other items from scratch.  Just having a vegan menu isn’t good enough, though.  Tina wants to make sure Antonio's is a vegan destination.  It’s not just the vegan diet Antonio’s focuses on either.  The menu includes offerings for gluten-free and keto as well.  </p>
       <p class="slide-left">3) To be a positive influence in the community at large.  Antonio’s can be seen catering  for local organizations, vending food for local festivals and events, and running fundraisers that benefit the schools in the area.  And Tina is doing it all with the professionalism backed by many moons worth of catering experience.  She is also apt to give the local community friendly and helpful advice from time to time.  You know, things like “Don’t accept your pizza delivery without pants”, things like that.   </p>
      </div>
        <img class = "vegan-intro-image tina-image slide-right " src="../assets/images/tina.jpg" alt = 'vegan image' />
        <img class = "vegan-intro-image-mobile tina-image slide-right " src="../assets/images/tina.jpg" alt = 'vegan image' />
    </div>
  </div>
  </div>
  <div class = "main-body bottom-box">
  <div class="about-roster-box fade-in">
    <RosterCard :imagelink="require('../assets/images/buddy.jpg')" :altname="'Buddy'" name = "Buddy" stats1="Chief Mozzarella stick taste tester" stats2="Brings an extra level of cuteness to the storefront on a semi daily basis" />
    <RosterCard :imagelink="require('../assets/images/dom.jpg')" :altname="'Dom'" name = "Dom" stats1="Gave up and ran away to play on his stupid computer" stats2="Still lurks in the rafters to help in a pinch when something breaks" /> 
    <RosterCard :imagelink="require('../assets/images/nok.jpg')" :altname="'nok'" name = "Nok" stats1="The jerk that got us into this mess in the first place.  Occasionally good at making pizza." stats2="Oh My" />  
    <RosterCard :imagelink="require('../assets/images/betty.jpg')" :altname="'betty'" name = "Betty" stats1="Craziest Girl in the World." stats2="Likes to cook, and make a mess.  Mostly makes a mess." />  
   
  </div>
</div>
</div>
</template>

<script>
import RosterCard from '../components/RosterCard.vue'
export default {
  name: 'AboutPage',
  components: {
    RosterCard,
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
  list-style-type: none;
  padding: 0;
}
li {
  display: inline;
  margin: 0 10px;
}
a {
  color: #42b983;
}

.main-body {
  height: max-content;
}


</style>

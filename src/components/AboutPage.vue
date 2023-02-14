<template>
<div class = "main-body">
  <div>
    <div class = "vegan-intro-box">
      <div>
        <h1>Our Mission Statement</h1>
         <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed rhoncus ipsum sit amet sollicitudin sagittis. Duis quis dui enim. Vivamus luctus ante eget nisi lacinia, vehicula lacinia enim ultrices. Nunc pretium, dolor id suscipit aliquam, tellus felis aliquam leo, ut egestas augue nibh eu augue. Mauris posuere sit amet ex a fringilla. In non pulvinar diam. Etiam at elementum metus. Nam vel pellentesque erat. Ut cursus lacus sit amet enim ornare malesuada. Donec consequat eros aliquam augue congue, id pellentesque ex bibendum. Suspendisse volutpat tellus id dolor lacinia, eu tristique nisl convallis. Fusce accumsan, dui a vestibulum rhoncus, metus metus dictum ex, id consectetur lorem lectus in purus. Maecenas faucibus ex dictum fermentum placerat. Donec ac tortor non sapien ullamcorper tempus sed eu ligula.</p>
      </div>
        <img class = "vegan-intro-image" src="../assets/images/buddy.jpg" alt = 'vegan image' />
        <img class = "vegan-intro-image-mobile" src="../assets/images/buddy.jpg" alt = 'vegan image' />
    </div>
  </div>
  <div class="about-roster-box">
    <RosterCard :imagelink="require('../assets/images/tina.jpg')" :altname="'Tina'" name = "Tina" stats1="Hottest Wife Ever" stats2="Does pretty much everything all the time" />
    <RosterCard :imagelink="require('../assets/images/dom.jpg')" :altname="'dom'" name = "Dom" stats1="Gave up and ran away" stats2="Still lurks in the rafters to perform some IT work on occasion" /> 
    <RosterCard :imagelink="require('../assets/images/grant.jpg')" :altname="'grant'" name = "Grant" stats1="Manager with a karaoke complex" stats2="Shoof" /> 
    <RosterCard :imagelink="require('../assets/images/nok.jpg')" :altname="'nok'" name = "Nok" stats1="AAA employee.  (Autistic, Asshole, Alcoholic)" stats2="Oh My" />  
    <RosterCard :imagelink="require('../assets/images/betty.jpg')" :altname="'betty'" name = "Betty" stats1="Craziest Girl in the World." stats2="Likes to cook, and make a mess." />  
   
  </div>
</div>
</template>

<script>
import RosterCard from './RosterCard.vue'
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

</style>

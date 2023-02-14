<template>
  <div class = "main-body">
    <div>
      <div class = "vegan-intro-box">
        <div>
          <h1>Vegans are so cool</h1>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed rhoncus ipsum sit amet sollicitudin sagittis. Duis quis dui enim. Vivamus luctus ante eget nisi lacinia, vehicula lacinia enim ultrices. Nunc pretium, dolor id suscipit aliquam, tellus felis aliquam leo, ut egestas augue nibh eu augue. Mauris posuere sit amet ex a fringilla. In non pulvinar diam. Etiam at elementum metus. Nam vel pellentesque erat. Ut cursus lacus sit amet enim ornare malesuada. Donec consequat eros aliquam augue congue, id pellentesque ex bibendum. Suspendisse volutpat tellus id dolor lacinia, eu tristique nisl convallis. Fusce accumsan, dui a vestibulum rhoncus, metus metus dictum ex, id consectetur lorem lectus in purus. Maecenas faucibus ex dictum fermentum placerat. Donec ac tortor non sapien ullamcorper tempus sed eu ligula.</p>
        </div>
        <img class = "vegan-intro-image" src="../assets/images/shopfrontt1.png" alt = 'vegan image' />
        <img class = "vegan-intro-image-mobile" src="../assets/images/shopfront.jpg" alt = 'vegan image' />
      </div>
    </div>
    <div class="vegan-intro-box no-shadow">
      <div class = "vegan-box">
        <img class = "card-image" src="../assets/images/vegan.jpg" alt = 'vegan image' />
        <h2>Vegans are so cool</h2>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed rhoncus ipsum sit amet sollicitudin sagittis. Duis quis dui enim. Vivamus luctus ante eget nisi lacinia, vehicula lacinia enim ultrices. Nunc pretium, dolor id suscipit aliquam, tellus felis aliquam leo, ut egestas augue nibh eu augue. Mauris posuere sit amet ex a fringilla. In non pulvinar diam. Etiam at elementum metus. Nam vel pellentesque erat. Ut cursus lacus sit amet enim ornare malesuada. Donec consequat eros aliquam augue congue, id pellentesque ex bibendum. Suspendisse volutpat tellus id dolor lacinia, eu tristique nisl convallis. Fusce accumsan, dui a vestibulum rhoncus, metus metus dictum ex, id consectetur lorem lectus in purus. Maecenas faucibus ex dictum fermentum placerat. Donec ac tortor non sapien ullamcorper tempus sed eu ligula.</p>
        <CTAButton text="Call to Action"/>
      </div>
      <div class = "vegan-box">
        <img class = "card-image" src="../assets/images/vegan.jpg" alt = 'vegan image' />
        <h2>Vegans are so cool</h2>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed rhoncus ipsum sit amet sollicitudin sagittis. Duis quis dui enim. Vivamus luctus ante eget nisi lacinia, vehicula lacinia enim ultrices. Nunc pretium, dolor id suscipit aliquam, tellus felis aliquam leo, ut egestas augue nibh eu augue. Mauris posuere sit amet ex a fringilla. In non pulvinar diam. Etiam at elementum metus. Nam vel pellentesque erat. Ut cursus lacus sit amet enim ornare malesuada. Donec consequat eros aliquam augue congue, id pellentesque ex bibendum. Suspendisse volutpat tellus id dolor lacinia, eu tristique nisl convallis. Fusce accumsan, dui a vestibulum rhoncus, metus metus dictum ex, id consectetur lorem lectus in purus. Maecenas faucibus ex dictum fermentum placerat. Donec ac tortor non sapien ullamcorper tempus sed eu ligula.</p>
        <CTAButton text="Call to Action"/>
      </div>
      <div class = "vegan-box">
        <img class = "card-image" src="../assets/images/vegan.jpg" alt = 'vegan image' />
        <h2>Vegans are so cool</h2>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed rhoncus ipsum sit amet sollicitudin sagittis. Duis quis dui enim. Vivamus luctus ante eget nisi lacinia, vehicula lacinia enim ultrices. Nunc pretium, dolor id suscipit aliquam, tellus felis aliquam leo, ut egestas augue nibh eu augue. Mauris posuere sit amet ex a fringilla. In non pulvinar diam. Etiam at elementum metus. Nam vel pellentesque erat. Ut cursus lacus sit amet enim ornare malesuada. Donec consequat eros aliquam augue congue, id pellentesque ex bibendum. Suspendisse volutpat tellus id dolor lacinia, eu tristique nisl convallis. Fusce accumsan, dui a vestibulum rhoncus, metus metus dictum ex, id consectetur lorem lectus in purus. Maecenas faucibus ex dictum fermentum placerat. Donec ac tortor non sapien ullamcorper tempus sed eu ligula.</p>
        <CTAButton text="Call to Action"/>
      </div>
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

<template>
  <div class = "main-body">
      <b-carousel
        id="carousel-1"
        v-model="slide"
        :interval="8000"
        controls
        background="black"
        img-width="960"
        img-height="480"
        style="text-shadow: 1px 1px 2px #333;"
        @sliding-start="onSlideStart"
        @sliding-end="onSlideEnd"
      >
        <!-- Text slides with image -->
        <b-carousel-slide>
          <div class = "fishfry">Fish Fry is Back!</div>
          <CTAbutton text='See the Menu' v-b-modal.modal-center />
          <template #img>
            <img
              class="d-block w-100"
              style="object-fit: cover;"
              width="960"
              height="780"
              src="../assets/images/fishfry.jpg"
              alt="image slot"
            >
          </template>
        </b-carousel-slide>

        <b-carousel-slide>
          <div class = "fishfry"></div>
          <template #img>
            <img
              class="d-block w-100"
              style="object-fit: contain;"
              width="960"
              height="780"
              src="../assets/images/chih.jpg"
              alt="image slot"
            >
            <CTAbutton  text='What are we bringing?'  v-b-modal.modal/>
          </template>
          
        </b-carousel-slide>

        <b-carousel-slide>
          <template #img>
            <img
              class="d-block w-100"
              style="object-fit: contain;"
              width="960"
              height="780"
              src="../assets/images/feb specials.jpg"
              alt="image slot"
            >
            <CTAbutton text="Order Now" :link="'https://antoniospizzeria.hungerrush.com/'" />
          </template>
          
        </b-carousel-slide>

        <b-carousel-slide>
          <div class = "fishfry">Tons of options for every taste</div>
       <CTAbutton @show-menus="showMenus" :clicky="'show-menus'" text='See what we got'/>
          <template #img>
            <img
              class="d-block w-100"
              style="object-fit: cover;"
              width="960"
              height="780"
              src="../assets/images/supreme pizza.jpg"
              alt="image slot"
            >
          </template>
        </b-carousel-slide>



      </b-carousel>

      <div>

  <b-modal id="modal-center"
  hide-footer=true
  content-class="modalimage"
  header-class="headerclass"
  modal-class="modalbody"
  header="no">
    <img class="modalimg" src="../assets/images/fishmenu.jpg" />
  </b-modal>

  <b-modal id="modal"
  hide-footer=true
  content-class="modalimage"
  header-class="headerclass"
  modal-class="modalbody"
  header="no">
    <img class="modalimg dogimg" src="../assets/images/vegandogs.jpg" />
  </b-modal>
</div>
  </div>
</template>



<script>
import CTAbutton from "./CTAbutton.vue"
  export default {
    name: 'MainPage',
    components: {
    CTAbutton,
  },

    data() {
      return {
        slide: 0,
        sliding: null
      }
    },
    methods: {
      onSlideStart() {
        this.sliding = true
      },
      onSlideEnd() {
        this.sliding = false
      },
      showMenus() {
        this.$emit('show-menu')
        console.log('isitworking?')
      }
    }
  }
</script>

<style scoped>
img {
  object-fit: contain;
}
.fishfry {
  font-size: 8em;
  font-family: juice;
  font-weight: bolder;
}

@media (max-width: 991.5px) {
  img {
    object-fit: cover;
    height: 55vh;
  }

  .fishfry{
    font-size: 3em;
  }
}






</style>
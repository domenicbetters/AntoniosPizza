<template>
  <div class = "main-body  shadow-drop-2-center  ">
      <b-carousel
        class = "fade-in"
        id="carousel-1"
        v-model="slide"
        :interval="8000"
        controls
        background-color="rgba(0,0,0,0.65)"
        img-width="960"
        style="text-shadow: 1px 1px 2px #333; height:65vh;"
        @sliding-start="onSlideStart"
        @sliding-end="onSlideEnd"
      >
        <!-- Text slides with image -->



        <b-carousel-slide>
          <div class = "fishfry tweaked-color">April Specials are here</div>
          <CTAbuttonOutside class="slide-button " text='Order Now'  :link="'https://antoniospizzeria.hungerrush.com/'" />
          <template #img>
            <img
              class="d-block w-100"
              style="object-fit: cover; height:65vh;" 
              width="960"
              src="../assets/images/pickles.jpg"
              alt="image slot"
            >
          </template>
        </b-carousel-slide>

        <b-carousel-slide>
          <div class = "fishfry tweaked-color">It's Cannibis Awareness Month</div>
          <CTAbuttonOutside class="slide-button " text='Special Menu' v-b-modal.modal-center2 />
          <template #img>
            <img
              class="d-block w-100"
              style="object-fit: cover; height:65vh;" 
              width="960"
              src="../assets/images/tacopizza.jpg"
              alt="image slot"
            >
          </template>
        </b-carousel-slide>

        <b-carousel-slide>
          <div class = "fishfry tweaked-color">Tons of options for every taste</div>
       <CTAbutton class="slide-button"  text='Check out our Menu' :rlink="'/AntoniosPizza/menu/full'" />
          <template #img>
            <img
              class="d-block w-100"
              style="object-fit: cover; height: 65vh;"
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

  <b-modal id="modal-center2"
  hide-footer=true
  content-class="modalimage"
  header-class="headerclass"
  modal-class="modalbody"
  header="no">
    <img class="modalimg" src="../assets/images/stonermenu.jpg" />
  </b-modal>

</div>
  </div>
</template>



<script>
import CTAbutton from "../components/CTAbutton.vue"
import CTAbuttonOutside from "../components/CTAbuttonOutside.vue"
  export default {
    name: 'MainPage',
    components: {
    CTAbutton,
    CTAbuttonOutside,
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
      }
    }
  }
</script>

<style scoped>
img {
  object-fit: contain;
}
.fishfry {
  font-size: 4em;
  font-family: juice;
  font-weight: bolder;
}

.tweaked-color {
  background-color: rgba(0,0,0,.75);
  border-radius: 10px;
}

@media (max-width: 991.5px) {
  img {
    object-fit: cover;
    height: 55vh;
  }

  .fishfry{
    font-size: 2em;
  }
.slide-button {
font-size:.5em;
}
}







</style>
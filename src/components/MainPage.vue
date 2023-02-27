<template>
  <div class = "main-body">
      <b-carousel
        id="carousel-1"
        v-model="slide"
        :interval="8000"
        controls
        indicators
        background="#ababab"
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
      }
    }
  }
</script>

<style scoped>
img {
  object-fit: contain;
}

@media (max-width: 991.5px) {
  img {
    object-fit: cover;
    height: 55vh;
  }
}

.fishfry {
  font-size: 9em;
  font-family: juice;
  font-weight: bolder;
}




</style>
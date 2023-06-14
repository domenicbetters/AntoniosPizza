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
          <div class = "fishfry tweaked-color">Coming Soon!</div>
          <div class = "buttonrow">
          <div @click = "modalswitchon('1')"><CTAbuttonOutside class="slide-button " text='Check out our brief post for more info' /></div>
          </div>
          <template #img>
            <img
              class="d-block w-100"
              style="object-fit: cover; height:65vh;" 
              width="960"
              src="../assets/images/newshop.jpg"
              alt="image slot"
            >
          </template>
        </b-carousel-slide>

        <!-- <b-carousel-slide >
          <template #img>
            <img
              class="d-block w-100 desktopimg"
              style="object-fit:cover; object-position: bottom; height:65vh;" 
              width="960"
              src="../assets/images/churro.jpg"
              alt="image slot"
            >

            <img
              class="d-block w-100 mobileimg"
              style="object-fit:cover; object-position: bottom; height:65vh;" 
              width="960"
              src="../assets/images/churrom.jpg"
              alt="image slot"
            >
          </template>
          <div class = "fishfry taco  tweaked-color">Start your order with some Churros!</div>
          <CTAbuttonOutside class="slide-button " text='Order Now'  :link="'https://antoniospizzeria.hungerrush.com/Order/Menu/1#desserts'" />
         
        </b-carousel-slide> -->

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
  props: {
       stonermodal: String
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
      modalswitchon(modal) {
                this.$emit('modal-switch-on', modal)
            }
         },
         emits: ['modal-switch'],
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

.buttonrow {
  display:flex;
  flex-direction: row;
  justify-content: center;
}

.mobileimg {
  display: none !important;
}

@media (max-width: 991.5px) {
  img {
    object-fit: cover;
    height: 55vh;
  }

  .mobileimg {
  display:initial !important;
}
 .desktopimg {
  display: none !important;
 }

  .fishfry{
    font-size: 2em;
  }
.slide-button {
font-size:.5em;
}
}



.taco{
  justify-self: baseline !important;
}


</style>
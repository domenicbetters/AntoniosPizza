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

          <b-carousel-slide >
          <template #img>
            <router-link to="/AntoniosPizza/location">
            <img
              class="d-block w-100 desktopimg"
              style="object-fit:contain; object-position: top; height:65vh;" 
              width="960"
              src="../assets/images/antfront.jpg"
              alt="image slot"
            ></router-link>

            <router-link to="/AntoniosPizza/events"><img
              class="d-block w-100 mobileimg"
              style="object-fit:contain; object-position: middle; height:65vh;" 
              width="960"
              src="../assets/images/antfront.jpg"
              alt="image slot"
            ></router-link>
          </template>
          <!-- <div class = "fishfry taco  tweaked-color">Introducing a new weekly event!</div> -->
          <!-- <CTAbuttonOutside class="slide-button " text='Get your Thanksgiving dinner in pizza form now!'  :link="'https://antoniospizzeria.hungerrush.com/Order/Menu/1#pizza'" /> -->
         
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

        <b-carousel-slide>
          <div class = "fishfry tweaked-color">Grab a cool, vegan friendly, Boba drink.</div>
          <div class = "buttonrow">
          <CTAbutton class="slide-button"  text='Try all our flavors!' :rlink="'/AntoniosPizza/menu/full'" />
          </div>
          <template #img>
            <img
              class="d-block w-100"
              style="object-fit: cover; height:65vh;" 
              width="960"
              src="../assets/images/boba2.jpg"
              alt="image slot"
            >
          </template>
        </b-carousel-slide>

      


        <b-carousel-slide >
          <template #img>
            <img
              class="d-block w-100 desktopimg"
              style="object-fit:contain; object-position: top; height:65vh;" 
              width="960"
              src="../assets/images/livemusicfri.jpg"
              alt="image slot"
            >

            <img
              class="d-block w-100 mobileimg"
              style="object-fit:cover; object-position: bottom; height:65vh;" 
              width="960"
              src="../assets/images/livemusicfri.jpg"
              alt="image slot"
            >
          </template>
          <div class = "fishfry taco  tweaked-color">Live Music Every Friday Night</div>
          <CTAbuttonOutside class="slide-button " text='Check our Facebook Page for Details'  :link="'https://www.facebook.com/antoniospittsburgh'" />
         
        </b-carousel-slide>


        <b-carousel-slide>
          <div class = "fishfry tweaked-color">Relax in our dining room and enjoy any number of events.</div>
          <div class = "buttonrow">
          <CTAbutton class="slide-button"  text='See What is Coming Up!' :rlink="'/AntoniosPizza/events'" />
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

        <!-- <b-carousel-slide>
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
        </b-carousel-slide> -->

        <!-- <b-carousel-slide >
          <template #img>
            <img
              class="d-block w-100 desktopimg"
              style="object-fit:cover; object-position: top; height:65vh;" 
              width="960"
              src="../assets/images/celebrate.jpg"
              alt="image slot"
            >

            <img
              class="d-block w-100 mobileimg"
              style="object-fit:cover; object-position: bottom; height:65vh;" 
              width="960"
              src="../assets/images/celebratedesk.jpg"
              alt="image slot"
            >
          </template>
          <div class = "fishfry taco  tweaked-color">The Grand Opening Celebration is Upon Us</div>
          <CTAbuttonOutside class="slide-button " text='August 26th | Click Here For All The Details'  :link="'https://www.facebook.com/events/111147608727330/'" />
         
        </b-carousel-slide> -->

        



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
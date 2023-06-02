<template>
  <div class = "all-page">
  <div class = "main-body shadow-drop-2-center">
    <div>
      <div class = "vegan-intro-box">
        <div class = "slide-left">
          <h1>Antonios Catering is more than just pizza!</h1>
          <p>We don't just want to offer some dairy free cheese.  We want to make sure we are the Pittsburgh destination for stellar pizza shop fair that doesn<a class="hidden" href="https://dos.zone/player/?bundleUrl=https%3A%2F%2Fcdn.dos.zone%2Fcustom%2Fdos%2Fdoom.jsdos?anonymous=1')">'</a>t throw any roadblocks in the way of your vegan lifestyle.</p>
           <p>Almost every vegan item is made in house from recipes developed over the last several years of tinkering and fine tuning.  We do our best to make sure that everything tastes as fantastic and authentic as it can, so you never get a case of FOMO.  </p>
        </div>
        <img class = "vegan-intro-image slide-right" src="../assets/images/vegan 1.jpg" alt = 'vegan image' />
        <img class = "vegan-intro-image-mobile slide-right" src="../assets/images/vegan 1.jpg" alt = 'vegan image' />
      </div>
    </div>
  </div>


  <div class = "main-body shadow-drop-2-center">
    <div>
      <div class = "vegan-intro-box">
        <div class = "slide-left">
          <h1>The Menu will go here</h1>
        </div>
        <img class = "vegan-intro-image slide-right" src="../assets/images/vegan 1.jpg" alt = 'vegan image' />
        <img class = "vegan-intro-image-mobile slide-right" src="../assets/images/vegan 1.jpg" alt = 'vegan image' />
      </div>
    </div>
  </div>



  
  <div class = "main-body slide-top bottom-box ">
    <div class="vegan-intro-box no-shadow">
      <form ref="form" @submit.prevent="sendEmail" class="row g-3 was-validated">
        <div class="col-md-4">
          <label for="validationServer01" class="form-label">Name</label>
          <input type="text" class="form-control is-valid" id="validationServer01" name="name" v-model="name" required>
          <div class="invalid-feedback">
            What should we call you?
          </div>
        </div>
        <div class="col-md-4">
          <label for="validationServer01" class="form-label">Email Address</label>
          <input type="email" class="form-control is-valid"  v-model="address" name="address" id="validationServer01" required>
          <div class="invalid-feedback">
            Please provide a valid email address.
          </div>
        </div>
        <div class="col-md-4">
          <label for="validationServer01" class="form-label">Date</label>
          <input type="date" class="form-control is-valid" id="validationServer01"  name="date" v-model="date"  required>
          <div class="invalid-feedback">
          Let us know when you would like your order
          </div>
        </div>
        <div class="mb-3">
          <label for="validationServer01" class="form-label">Your Order or Request</label>
          <textarea type="text" class="form-control is-valid" id="validationServer01" name ="message" v-model="message"  rows="3" required></textarea>
          <div class="invalid-feedback">
            Give us as many details as you can about your order and we will get back to you with a quote.  don't know what you want, or want something not on our menu?  We can still make it happen.  Message us with your thoughts or desires and we will work with you to make your event perfect.  (At least when it comes to the food.  Antonio's is not liable for beligerent Uncles or lousy Pittsburgh weather.)
          </div>
        </div>

        <div class="col-12">
          <input class="btn btn-primary" id="button" @click="sendemail()" type="submit" value="Submit">
        </div>
      </form>
      <div class = "vegan-box">
        <img class = "card-image" src="../assets/images/vegan2.jpg" alt = 'vegan image' />
        <h2>Plenty of Vegan events to find us at</h2>
       <p>We don't just keep ourselves confined to the shop.  We are always out and about in the community, selling our goods where our goods are desired.  It's worth noteing that a lot of times we bring special menus with items exclusive to that event that you won't be able to find in our shop. </p>
        <CTAButton text="Contact Us Now" :rlink="'/AntoniosPizza/contact'"/>
      </div>
    </div>
  
</div>
<div class = "main-body slide-top bottom-box ">
    <div class = "vegan-box">
        <img class = "card-image" src="../assets/images/vegan2.jpg" alt = 'vegan image' />
      </div>
      <div class = "vegan-box">
        <img class = "card-image" src="../assets/images/vegan2.jpg" alt = 'vegan image' />
      </div>
      <div class = "vegan-box">
        <img class = "card-image" src="../assets/images/vegan2.jpg" alt = 'vegan image' />

      </div>
    </div>
</div>
</template>



<script>
import emailjs from 'emailjs-com';

// import {ref} from 'vue';
import CTAButton from '../components/CTAbutton.vue'
// import CTAButtonOutside from '../components/CTAbuttonOutside.vue'



export default {
  name: 'CateringPage',
  data() {
    return {
      name: '',
      address: '',
      date: '',
      message: ''
    }
  },
  components: {
    CTAButton,
    // CTAButtonOutside,
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
      },
      sendEmail() {
      emailjs.sendForm('service_l1a8ckb', 'template_4uud7ba', this.$refs.form, 'K_W2U51ktMO-ljMJD')
        .then((result) => {
            alert("Thank you for the email.  We will get back to you as soon as we can!", result.text)
            this.name = ''
            this.address = ''
            this.date =  ''
            this.message =  ''
        }, (error) => {
           alert('FAILED...', error.text);
        });
    },
    
     
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.g-3 {
  border: 2px solid #FFFAA1;
  width: 50%;
  border-radius: 25px;
  padding: 10px;
  background: rgba(0,0,0,0.65);

}

.btn-primary {
  background-color: #FFFAA1;
  color: black;
}

.mb-3 {
  width: 95%;
  margin:auto;;
}

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
  @media (max-width: 991.5px) {
    .g-3 {
      width :95%;
    }
  }
}
</style>

<template>
  <div class = "all-page">

    <div class ="eventoverbox main-body shadow-drop-2-center">
      <h1>Upcoming Events at Antonio's</h1>
      <p>Something is always happening here.  Do you like to sing?  We got you covered.  Do you like to play table top RPGs? We got you covered.  Do you just wanna chill and listen to some bangin music?  We got you covered too.  And that's just the basics.  More events in and off property are added all the time, so check back here or on our Facebook page often.</p>
      <img class = "eventimageover" src="../assets/images/eventover.jpg" alt = 'event image' />
    </div>
    <div class = "eventlist">
     <EventCard :key="standardevent.title" v-for="(standardevent) in standardevents" :event="standardevent" />
     <div style="border-bottom: 3px solid #FFFAA1"></div>
     <EventCard :key="event.title" v-for="(event) in events" :event="event" />
    </div>
 



</div>
</template>



<script>
import emailjs from 'emailjs-com';
import EventCard from '@/components/EventCard.vue';
// import events from '@/assets/events.json'

// import CTAButtonOutside from '../components/CTAbuttonOutside.vue'



export default {
  name: 'EventPage',
  data() {
    return {
      events: [{
        "link": "/AntoniosPizza",
        "month": "FEB",
        "day": "12",
        "title": "Steel City Scary Book Club",
        "desc": "Meeting from 7 - 8 PM.  Now Reading: Exquisite Corpse by Poppy Z. Brite.  WARNING: EXTREME CONTENT",
        "image": require("@/assets/images/exquisite.jpg")}],
      
        standardevents: [{
      "link": "https://www.facebook.com/antoniospizzeriapgh",
      "day": "Every Mon",
      "month": "",
      "title": "Vegan Chill Lounge",
      "desc": "Chill Music, Huge Vegan Menu, Bubble Tea, Dessert, Healing Arts, Relaxation, and Fun!",
      "image": require("@/assets/images/mondaychill.jpg")
          }, 
          {
      "link": "https://www.facebook.com/antoniospizzeriapgh",
      "day": "Every Tues",
      "month": "",
      "title": "Game Night",
      "desc": "Tuesdays are game nights at Antonio’s 🍕Every week we will play a different game, please let us know what games you’d like to play! The event is free, but of course everyone is welcome to come buy some food and drinks!",
      "image": require("@/assets/images/gamenight.jpg")
  },
  {
    "link": "https://www.facebook.com/antoniospizzeriapgh",
    "day": "Every Wed",
    "month": "",
    "title": "Karaoke Night",
    "desc": "Sing your heart out every Wednesday night while eating your favorite slice.  Need a little liquid courage?  As always we are BYOB friendly.  ",
    "image": require("@/assets/images/karafun.jpg")
  },
  {
    "link": "https://www.facebook.com/antoniospizzeriapgh",
    "day": "Every Thurs",
    "month": "",
    "title": "Open Mic Night",
    "desc": "Hosted by Jim Skiff every Thursday, you can sing, speak, or express yourself any other way you see fit.  If you'd rather just watch and listen, that's fine, come on by and just enjoy night with some good food and good people.",
    "image": require("@/assets/images/livenight.jpg")
  },
  {
    "link": "https://www.facebook.com/antoniospizzeriapgh",
    "day": "Every Fri",
    "month": "",
    "title": "Live Music",
    "desc": "Every Friday, come in to our dining room for a live musical act starting at 7 PM.  You can see anything from acoustic guitars to polkas to kettle drums.  As always, we are a BYOB friendly establishment.",
    "image": require("@/assets/images/micnight.jpg")
  }
]
    }
  },
  components: {
    EventCard
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

.all-page{
  flex-direction: row;
  align-items: baseline;
}

.eventlist{
  height: 80vh;
  width:auto;
}
.eventoverbox{
  margin-right: 25px;
  height: auto;
}

.eventimageover{
  width: 90%;
  height: 250px;
  align-self: center;
  border-radius: 15px;
  object-fit: cover;
  margin-bottom: 15px;
}

.main-body {
  min-width: 55ch;
  max-width: 55ch;
  padding:15px;
}
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


@media (max-width: 1264.5px) {
  .all-page{
    flex-direction: column;
    align-items: center;
  }
  .main-body{
    min-width: 80vw;
  max-width: 80vw;
  }
}
</style>

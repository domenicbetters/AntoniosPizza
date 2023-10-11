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
     <!-- <EventCard :key="event.title" v-for="(event) in events" :event="event" /> -->
    </div>
 



</div>
</template>



<script>
import emailjs from 'emailjs-com';
import EventCard from '@/components/EventCard.vue';
import events from '@/assets/events.json'
import standardevents from '@/assets/standardevents.json'

// import CTAButtonOutside from '../components/CTAbuttonOutside.vue'



export default {
  name: 'EventPage',
  data() {
    return {
      events: events,
      standardevents: standardevents
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

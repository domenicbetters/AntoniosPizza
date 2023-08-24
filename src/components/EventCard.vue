<template>
      <div  class="event-card" >
      <div class = "date-box">
        <div class = "day">{{event.day}}</div>
        <div class = "month">{{event.month}}</div>

      </div>
      <div class = "info-box">
      <div class = "title">{{event.title}}</div>
      <div class = "desc">{{event.desc}}</div>
      <div class = "linky"> <a :href ="event.link">Click Here for More Details</a></div>
      </div>
      <div class = "picture-box">
          <img class = "pic" :src = "event.image" />
      </div>
        
    </div>
   
</template>

<script>
    export default {
        name: 'EventCard',
        props: {
         event: Object
        },
        data(){
          return {
          }
        }
    }
</script>

<style scoped>
@media (max-width: 1264.5px) {
  .event-card{
    font-size: .60em;
  }
  
}



.desc {
  display: none;
}

.event-card {
  -webkit-animation: nohover 0.4s cubic-bezier(0.390, 0.575, 0.565, 1.000) both;
	animation: nohover 0.4s cubic-bezier(0.390, 0.575, 0.565, 1.000) both;
  width: 80vw;
  max-width: 65ch;
  height: 120px;
  background-color: rgb(38, 38, 38);
  border-radius: 15px;
  border: solid 5px #bbb878;
  margin: 15px;
  display: flex;
}

.event-card:hover{
  -webkit-animation: hovering 0.4s cubic-bezier(0.390, 0.575, 0.565, 1.000) both;
	animation: hovering 0.4s cubic-bezier(0.390, 0.575, 0.565, 1.000) both;
    .desc{
    display:block;
    }
    .date-box {
      border-right: 5px double #FFFAA1;
  };
  .info-box {
  border-right: 5px double #FFFAA1;
  };
  
}



 

.date-box {
  border-right: 5px double #bbb878;
  width: 12ch;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}


.day {
  font-size: 2em;
  font-weight: bold;
}

.info-box {
  border-right: 5px double #bbb878;
  width: 35ch;
  display:flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  
}

.picture-box {
  width:25ch;
}
.pic{
  width:100%;
  height:100%;
  object-fit:cover;
}
.title{
    font-size: 1.5em;
    font-weight: bold;
}

a{
  color: #FFFAA1 !important;
  border-top: solid 1px #FFFAA1;
}
a:hover{
  color: white !important;
}



@-webkit-keyframes hovering {
  0% {
  -webkit-transform: scale(1);
  transform: scale(1);
  }
  100% {
  -webkit-transform: scale(1.1);
  transform: scale(1.1);
  box-shadow: 0 0 10px 10px rgba(0, 0, 0, 0.492);
  background-color: rgb(55, 55, 55);
  border: solid 5px #FFFAA1;
  height: 300px;
  }
}
@keyframes hovering {
  0% {
  -webkit-transform: scale(1);
  transform: scale(1);
  }
  100% {
  -webkit-transform: scale(1.1);
  transform: scale(1.1);
  box-shadow: 0 0 10px 10px rgba(0, 0, 0, 0.492);
  background-color: rgb(55, 55, 55);
  height: 300px;
  border: solid 5px #FFFAA1
  }
}

@-webkit-keyframes nohover {
  100% {
  -webkit-transform: scale(1);
  transform: scale(1);
  height: 120px;
  }
  0% {
  -webkit-transform: scale(1.1);
  transform: scale(1.1);
  box-shadow: 0 0 10px 10px rgba(0, 0, 0, 0.492);
  background-color: rgb(55, 55, 55);
  height: 300px;
  }
}
@keyframes nohover {
  100% {
  -webkit-transform: scale(1);
  transform: scale(1);
  height: 120px;
  }
  0% {
  -webkit-transform: scale(1.1);
  transform: scale(1.1);
  box-shadow: 0 0 10px 10px rgba(0, 0, 0, 0.492);
  height: 300px;
  background-color: rgb(55, 55, 55);
  }
}

</style>
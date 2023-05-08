<template>
   <div class="modalbody">
    <button @click = "modalswitch()"><i class="fa-solid fa-x"></i></button>
    <div class = "modalimage">
   
    <img class = "modalimg" :src="link" />
    <div  @click = "modalswitch()" class = "modalback"></div>
    </div>

   </div>
 </template>
 
 <script>
     export default {
         name: 'ModalPop',
         methods: {
            modalswitch() {
                this.$emit('modal-switch')
            }
         },
         props: {
            link: String,
            show: Boolean
         },
         emits: ['modal-switch'],
        
     }
 </script>
 
 <style scoped>
 
button {
    position: absolute;
    border-radius: 5px;
    border:1px solid black;
    background: #FFFAA1;
    top: 5vh;
    right: 5vw;
}

.modalback {
    width:100%;
    height: 100%;
    position: absolute;
    z-index: -2;
}
 
 </style>
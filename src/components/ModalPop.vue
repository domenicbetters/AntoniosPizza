<template>
   <div class="modalbody">
    <button @click = "modalswitchoff(modal.id)"><i class="fa-solid fa-x"></i></button>
    <div class = "modalimage">
   
    <img class = "modalimg" :src="modal.link" />
    <div  @click = "modalswitchoff(modal.id)" class = "modalback"></div>
    </div>

   </div>
 </template>
 
 <script>
     export default {
         name: 'ModalPop',
         methods: {
            modalswitchoff(modalid) {
                this.$emit('modal-switch-off', modalid)
            }
         },
         props: {
            modal: Object
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
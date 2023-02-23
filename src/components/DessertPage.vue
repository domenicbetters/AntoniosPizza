<template>
  <div class = "menu-section">
    <div>
      <h1>Desserts</h1>
    </div>
    <div class = "right-side ">
      <div class = "food-box">
      <SaladItem class="food-list" v-show="item.vegan === 'yes' && veganOnly === true" :key="item.name" v-for="(item) in items" :item="item" />
      <SaladItem class="food-list" v-show="veganOnly === false" :key="item.name" v-for="(item) in items" :item="item" />
      </div>
   
    
    <div class = "picture-box">
      <RosterCard class="rostercard" :imagelink="require('../assets/images/calzone.jpg')" :altname="'Tina'" name = "Deep Dish" />
      <RosterCard class="rostercard" :imagelink="require('../assets/images/pizza1.jpg')" :altname="'Tina'" name = "Pizza" />
      <RosterCard class="rostercard" :imagelink="require('../assets/images/pizza1.jpg')" :altname="'Tina'" name = "Pizza" />
    </div>
  </div>
  </div>
</template>

<script>
import RosterCard from './RosterCard.vue'
import SaladItem from './SaladItem.vue'
export default {
  name: 'DessertPage',
  components: {
    SaladItem,
    RosterCard,
  },
  data() {
  return {
    sizeColumnWidth: '',
    foodColumnWidth: '',
    items: [
      { name: 'Hand Tossed Pizza', price: '15.00', vegan: 'yes' },
      { name: 'Calzone', desc: 'this one has feta', price: '15.00' },
      { name: 'Stromboli', price: '15.00' },
     
    ]
  }
},
  props: {
    msg: String,
    veganOnly: Boolean,
  },
  methods: {
  GetLengthOfLongestElement(arr) {
  var biggestNum = 0;

  for (var i = 0; i < arr.length; i++) {
    var obj = arr[i].name;
    if (obj.length > biggestNum) {
      biggestNum = obj.length;
    }
  }
  return biggestNum;
},
findlength() {
    this.sizeColumnWidth = this.GetLengthOfLongestElement(this.items)+'ch'
},

  },
beforeMount() {
this.findlength()
},
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
img {
  height: 250px;
  width: 25%;
  object-fit: cover;
  margin: 10px;
  border: 2px solid #FFFAA1;
}
h1 {
  color:#FFFAA1;
}
ul {
  display: block;
  padding: 0;
}
li {
  display: inline;
  margin: 0 5px;
}
.right-side {
  margin: 20px;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  width: 100%;
}
.style-box {
  border: 3px double white;
  height: 1000px;
  border-radius: 10px;
  width: fit-content;
  margin-bottom:5px;
}


.food-list {
  display: grid;
  width: 80%;
  min-width: fit-content;
  align-items: end;
  border-bottom:1px dashed white;
  margin: 0;
  padding: 0;
  grid-template-columns: v-bind('sizeColumnWidth') inherit;
}



.menu-section {
  width: 100%;
  height: 100%;
  display: flex;
  flex-direction: column;
}

.food-box {
  width: 95%;
  height: fit-content;
  border: 3px double white;
  border-radius: 10px;
  padding: 20px;
  margin: 10px;
  display: flex;
  flex-direction: column;
  align-items: center;
  flex-wrap: wrap;
  overflow-y: scroll;
}

@media (max-width: 1499.5px) {
.food-box {
  flex-wrap: nowrap;
}
}


.picture-box {
  width: 95%;
  display: flex;
  flex-direction: row;
  align-items: center;
  justify-content: space-between;
  flex-wrap: wrap;
}

@media (max-width: 2056.5px) {
  .picture-box{
    flex-wrap: nowrap;
  }
}


/* Works on Firefox */
* {
  scrollbar-width: thin;
  scrollbar-color: #FFFAA1 rgb(164, 164, 164);
}

/* Works on Chrome, Edge, and Safari */
*::-webkit-scrollbar {
  width: 12px;
}

*::-webkit-scrollbar-track {
  background: rgba(25, 25, 25, 1);
}

*::-webkit-scrollbar-thumb {
  background-color: rgb(164, 164, 164);
  border-radius: 20px;
  border: 3px solid #FFFAA1;
}


@media (max-width: 991.5px) {
  h1 {
    margin-top: 55px;
  }
  h2 {
    margin-bottom: 10px;
  }
  .menu-section {
    flex-direction: column;
    flex-wrap: nowrap;
  }
  .left-side {
    width: 30%;
    margin: 5px;
    margin-top: 60px;
  }
  .mobile-styles {
    display: flex;
    flex-direction: row;
    flex-wrap: wrap;
    justify-content: center;
  }
  .food-list {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
  }
  .style-box {
    margin-right: 4px;
    height: fit-content;
    margin-left: 4px;
  }
  .right-side {
    width: 90%;
    flex-direction: column;
    justify-content: center;
  }
  .picture-box {
    justify-content: center;
    flex-direction: column;
   }
  }

  @media (max-width: 400.5px) {
    .menu-section {
      flex-direction: column;
      align-items: center;
    }
  }


</style>

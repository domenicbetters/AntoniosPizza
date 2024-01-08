<template>
  <div class = "menu-section">
    <div class = "buffer">
      <h1>Limited Time Specials</h1>
    </div>
    <div class = "right-side ">
      <div class = "food-box">
        <div class = "inner-food-box">
          <LimitedItem class="limited-box"  v-show="item.vegan === 'yes' && veganOnly === true" :key="item.name" v-for="(item) in items" :item="item" />
          <LimitedItem class="limited-box"  v-show="veganOnly === false" :key="item.name" v-for="(item) in items" :item="item" />
        </div>
     </div>
     <div>
      <h1>Daily Coupons</h1>
    </div>
    <div class = "right-side ">
      <div class = "food-box">
        <div class = "inner-food-box">
          <LimitedItem class="limited-box coupon"  v-show="coupon.vegan === 'yes' && veganOnly === true" :key="coupon.name" v-for="(coupon) in coupons" :item="coupon" />
          <LimitedItem class="limited-box coupon"  v-show="veganOnly === false" :key="coupon.name" v-for="(coupon) in coupons" :item="coupon" />
        </div>
     </div>
    </div>
  </div>
  </div>
</template>

<script>
import LimitedItem from './LimitedItem.vue'
export default {
  name: 'LimitedPage',
  components: {
    LimitedItem,
  },
  data() {
  return {
    sizeColumnWidth: '',
    foodColumnWidth: '',
    items: [
    // { name: "Thanksgiving Pizza", desc: "All your Thanksgiving fixings on one pizza!", price: "Specialty Pizza Prices", vegan: 'yes'}
    ],

    coupons: [
    { name: 'Small Specialty Pizza and Half Hoagie', price: '$20.00', vegan: 'yes'},
    { name: 'Large 1-Topping Pizza',desc: 'Additional toppings can be added for an extra charge', price: '$14.00', vegan: 'yes'},
    { name: 'Two Whole Hoagies', price: '$18.00', vegan: 'yes'},
    { name: 'Pizza Hoagie and Wings Combo',desc: 'Get a large plain pizza, whole hoagie, and a dozen wings', price: '$37.00'},
    { name: 'Vegan Pizza Hoagie and Wings Combo',desc: 'Get a large plain pizza, whole hoagie, and a dozen seitan wings', price: '$31.00', vegan: 'yes'},
    
        
    ],

   

    
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


.limited-box {
  display: flex;
  width: 200px;
  height: 200px;
  margin: 10px;
  padding: 5px;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  border: 6px solid #FFFAA1
}

.coupon {
  border: 6px dashed white;
}



.menu-section {
  width: 100%;
  height: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
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
}

.inner-food-box {
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
  justify-content: space-evenly;
}

.topping-list {
  display: flex;
  width: 100%;
  flex-direction: row;
  justify-content: center;
  flex-wrap: wrap;
  margin: 0;
  padding: 0;
}

.topping-item {
  margin-right: 4px;
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

   .food-box {
    border: none;
   }
  }
  

  @media (max-width: 400.5px) {
    .menu-section {
      flex-direction: column;
      align-items: center;
    }
  }


</style>

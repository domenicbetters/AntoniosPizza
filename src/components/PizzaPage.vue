<template>
  <div class = "menu-section">
    <div class ="left-side">
      <h1>Pizzas, Calzones, Strombolis, and More</h1>
      <div class="style-box">
        <h2>Sizes and Styles</h2>
      <SizePrice  class = "size-list" :key="size.name" v-for="(size) in sizes" :size="size"/>
      </div>
    </div>
    <div class = "food-box">
    <PizzaItem class="food-list" :key="item.name" v-for="(item) in items" :item="item" />
    </div>
    <div class = "picture-box">
       <img src="../assets/images/pizza1.jpg"/>
       <img src="../assets/images/calzone.jpg"/>
       <img src="../assets/images/pizza1.jpg"/>
       <CTAButton text="Order Now" :link="'https://antoniospizzeria.hungerrush.com/'"/>
    </div>
  </div>
</template>

<script>
import CTAButton from './CTAbutton.vue'
import PizzaItem from './PizzaItem.vue'
import SizePrice from './SizePrice.vue'
export default {
  name: 'PizzaPage',
  components: {
    PizzaItem,
    SizePrice,
    CTAButton,
  },
  data() {
  return {
    sizeColumnWidth: '',
    foodColumnWidth: '',
    items: [
      { name: 'Cheese', desc: 'Top however you would like.  Additional Charge per Topping' },
      { name: 'Buffalo chicken', desc: 'Chicken, ranch, and hot sauce' },
      { name: 'Meat Lovers', desc: 'Get all the meats' },
    ],
    sizes: [
      { name: 'Checooole', price: '15.00' },
      { name: 'Cheese', price: '15.00' },
      { name: 'Pep', price: '25.00' },
    ]
  }
},
  props: {
    msg: String,
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
    this.sizeColumnWidth = this.GetLengthOfLongestElement(this.sizes)+'ch'
    this.foodColumnWidth = this.GetLengthOfLongestElement(this.items)+'ch'
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
  width: 100%;
  object-fit: cover;
  margin: 10px;
  border: 2px solid #FFFAA1;
}
h2 {
  text-decoration: underline;
}
ul {
  display: block;
  padding: 0;
}
li {
  display: inline;
  margin: 0 5px;
}

.left-side {
  margin: 20px;
  display: flex;
  flex-direction: column;
  align-items: center;
  width:20%;
}
.style-box {
  border: 3px double white;
  border-radius: 10px;
  width: fit-content;
  padding:20px;
}


.size-list {
  display: grid;
  width: 100%;
  column-gap:30px;
  text-align: left;
  grid-auto-columns: v-bind('sizeColumnWidth');
}

.food-list {
  display: flex;
  width: 100%;
  flex-direction: column;
  flex-wrap: nowrap;
  border-bottom:1px solid white;
  margin: 0;
  padding: 0;
}

.menu-section {
  width: 100%;
  height: 100%;
  display: flex;
}

.food-box {
  width: 33%;
  height: 400px;
  border: 3px double white;
  border-radius: 10px;
  padding: 20px;
  margin: 20px;
  display: flex;
  flex-direction: column;
  flex-wrap: nowrap;
  overflow-y: scroll;
}


.picture-box {
  width: 33%;
  padding: 20px;
  margin: 20px;
  display: flex;
  flex-direction: column;
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

</style>

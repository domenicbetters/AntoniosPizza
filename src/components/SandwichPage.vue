<template>
  <div>
  <div class = "menu-section">
    <div class ="left-side">
      <h1>Sandwiches and Wedgies</h1>
      <div class="mobile-styles">
        <div class="style-box">
          <h2>Sizes and Styles</h2>
        <SizePrice  class = "size-list" :key="size.name" v-for="(size) in sizes" :size="size"/>
        </div>
      </div>
    </div>
    <div class = "right-side ">
      <div class = "food-box">
      <PizzaItem class="food-list"  v-show="item.vegan === 'yes' && veganOnly === true" :key="item.name" v-for="(item) in items" :item="item" />
      <PizzaItem class="food-list"  v-show="veganOnly === false" :key="item.name" v-for="(item) in items" :item="item" />
      </div>
   
    
    
  </div>
  </div>
  <div class = "picture-box">
      <RosterCard :imagelink="require('../assets/images/sausageparm.jpg')" :altname="'Sausage Parmesan'" name = " Sausage Parmesan" />
      <RosterCard :imagelink="require('../assets/images/italian.jpg')" :altname="'Italian'" name = "Italian" />
      <RosterCard :imagelink="require('../assets/images/vegan 5.jpg')" :altname="'Vegan Muffuletta'" name = "Vegan Muffuletta" />
    </div>
</div>
</template>

<script>
import RosterCard from './RosterCard.vue'
import PizzaItem from './PizzaItem.vue'
import SizePrice from './SizePrice.vue'
export default {
  name: 'SandwichPage',
  components: {
    PizzaItem,
    SizePrice,
    RosterCard,
  },
  data() {
  return {
    sizeColumnWidth: '',
    foodColumnWidth: '',
    items: [
    { name: 'Cheeseburger', desc: 'American Cheese, Tomatoes, Lettuce, Onions, Pickles, Ketchup, Mustard' },
    { name: 'Chicken Breast', desc: 'Cheese, Lettuce, Tomatoes, Onions, Italian Dressing', vegan: 'yes' },
    { name: 'Chicken Parmesan', desc: 'Cheese, Marinara', vegan: 'yes' },
    { name: 'Fried Buffalo Chicken', desc: 'Cheese, Lettuce, Tomatoes, Onions, Ranch', vegan: 'yes' },
    { name: 'Fried Fish', desc: 'American Cheese, Lettuce, Tomatoes, Onions, Tartar Sauce', vegan: 'yes' },
    { name: 'Grilled Buffalo Chicken', desc: 'Cheese, Lettuce, Tomatoes, Onions, Ranch', vegan: 'yes' },
    { name: 'Hot Sausage Parmesan', desc: 'Cheese, Onions, Marinara, Green Peppers' , vegan: 'yes' },
    { name: 'Italian', desc: 'Ham, Capicola, Salami, Mozzarella, Lettuce, Tomatoes, Onions, Italian Dressing, Pepperoni', vegan: 'yes' },
    { name: 'Meatball Parmesan', desc: 'Marinara, Cheese' },
    { name: 'Reuben', desc: 'Swiss Cheese, Sauerkraut, 1000 Island' },
    { name: 'Steak', desc: 'Italian Dressing, Lettuce, Tomatoes, Onions, Cheese' },
    { name: 'Turkey Club', desc: 'Bacon, American Cheese, Lettuce, Tomatoes, Onions, Mayo' },
    { name: 'Veggie', desc: 'Italian Dressing, Mushrooms, Green Peppers, Onions, Banana Peppers, Black Olives', vegan: 'yes' },
    { name: 'Hummus', desc: 'Feta, Roasted Red Peppers, Spinach' },
    { name: 'Muffaletta', desc: 'New Orleans Olive Salad, Mortadella, Salami, Ham, Fresh Mozzarella' },
      ],

    sizes: [
    { name: 'Half', price: '$7.00'},
    { name: 'Whole', price: '$12.00'},
    { name: 'Wedgie', price: '$15.00'},
    { name: 'GF Half', price: '$9.00'},
    { name: 'GF whole', price: '$14.00'},
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
    this.sizeColumnWidth = this.GetLengthOfLongestElement(this.sizes)+'ch'
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

h2 {
  text-decoration: underline;
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

.left-side {
  margin: 30px;
  display: flex;
  flex-direction: column;
  align-items: center;
  width:20%;
}

.right-side {
  margin: 20px;
  display: flex;
  flex-direction: column;
  align-items: center;
  width:100%;
}
.style-box {
  border: 3px double white;
  height: 1000px;
  border-radius: 10px;
  width: fit-content;
  margin-bottom:5px;
  height: fit-content;
}


.size-list {
  display: grid;
  width: 100%;
  column-gap:30px;
  text-align: left;
  margin:2px;
  grid-template-columns: v-bind('sizeColumnWidth') max-content;
  font-size: .75em;
}

.food-list {
  display: flex;
  width: 100%;
  flex-direction: column;
  flex-wrap: nowrap;
  border-bottom:1px dashed white;
  margin: 0;
  padding: 0;
}

.topping-list {
  display: flex;
  width: 100%;
  flex-direction: row;
  flex-wrap: wrap;
  margin: 0;
  padding: 0;
}

.topping-item {
  margin-right: 4px;
}

.menu-section {
  width: 100%;
  height: 100%;
  display: flex;
}

.food-box {
  width: 100%;
  height: 860px;
  border: 3px double white;
  border-radius: 10px;
  padding: 20px;
  margin: 10px;
  display: flex;
  flex-direction: column;
  flex-wrap: nowrap;
  overflow-y: scroll;
}


.picture-box {
  width: 100%;
  display: flex;
  flex-direction: row;
  align-items: center;
  justify-content: space-evenly;
  flex-wrap: wrap;
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
  h2 {
    margin-bottom: 10px;
  }
  .menu-section {
    flex-direction: row;
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
  }
  }

  @media (max-width: 490.5px) {
    .menu-section {
      flex-direction: column;
      align-items: center;
    }
  }


</style>

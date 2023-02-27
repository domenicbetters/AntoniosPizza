<template>
  <div class = "menu-section">
    <div class ="left-side">
      <h1>Pizzas, Calzones, Strombolis, and More</h1>
      <div class="mobile-styles">
        <div class="style-box">
          <h2>Sizes and Styles</h2>
        <SizePrice v-show="size.vegan === 'yes' && veganOnly === true"  class = "size-list" :key="size.name" v-for="(size) in sizes" :size="size"/>
        <SizePrice v-show="veganOnly ===false" class = "size-list" :key="size.name" v-for="(size) in sizes" :size="size"/>
        </div>
        <div class="style-box top-price-box">
          <h2>Topping Prices</h2>
        <SizePrice  class = "size-list" :key="toppingPrice.name" v-for="(toppingPrice) in toppingPrices" :size="toppingPrice"/>
        </div>
      </div>
    </div>
    <div class = "right-side ">
      <div class = "food-box">
        <h2>Pizzas and Everything Else</h2>
      <PizzaItem class="food-list" v-show="PizzaItem.vegan === 'yes' && veganOnly === true" :key="PizzaItem.name" v-for="(PizzaItem) in PizzaItems" :item="PizzaItem" />
      <PizzaItem class="food-list"  v-show="veganOnly === false" :key="PizzaItem.name" v-for="(PizzaItem) in PizzaItems" :item="PizzaItem" />
      </div>
      <div class = "food-box topping-box">
        <h2>Toppings</h2>
        <div class="topping-list">
          <ToppingList class="topping-item"  v-show="topping.vegan === 'yes' && veganOnly === true" :key="topping.name" v-for="(topping) in toppings" :topping="topping" />
          <ToppingList class="topping-item"  v-show="veganOnly === false" :key="topping.name" v-for="(topping) in toppings" :topping="topping" />
        </div>
        <p>*Indicates double price for premium topping</p>
      </div>
    
    <div class = "picture-box">
      <RosterCard :imagelink="require('../assets/images/calzone.jpg')" :altname="'Calzone'" name = "Calzone" />
      <RosterCard :imagelink="require('../assets/images/deepdish.jpg')" :altname="'Deep Dish'" name = "Deep Dish" />
    </div>
  </div>
  </div>
</template>

<script>
import RosterCard from './RosterCard.vue'
import ToppingList from './ToppingList.vue'
import PizzaItem from './PizzaItem.vue'
import SizePrice from './SizePrice.vue'
export default {
  name: 'PizzaPage',
  components: {
    PizzaItem,
    SizePrice,
    ToppingList,
    RosterCard,
  },
  data() {
  return {
    sizeColumnWidth: '',
    foodColumnWidth: '',
    PizzaItems: [
      { name: 'Hand Tossed Pizza', desc: 'Dough and Sauce made from scratch and topped however you would like.  Additional Charge per Topping', vegan: 'yes'},
      { name: 'Calzone', desc: 'Mozzarella cheese, Ricotta cheese, and sauce folded up in our homemade dough', vegan: 'yes' },
      { name: 'Stromboli', desc: 'Mozarella cheese, ham, bacon, and sauce rolled up in our homemade dough', vegan: 'yes' },
      { name: 'Chicago Deep Dish', desc: 'Done in the traditional style of famous Chicago pizzaerias.  We take a flakey 12" pizza crust and stuff it full of cheese and topped with our homemade sauce and bake it in a cast iron skillet. ', vegan: 'yes' },
      { name: 'Keto', desc: 'A 12" fat-head crust made from almond flour and mozzarella cheese topped however you like' },
      { name: 'Gluten-free', desc: 'A vegan friendly 10" pizza crust that you can top however you like', vegan: 'yes' },
      { name: 'Pizza Boat', desc: "A pizza but it's baked on a whole hoagie roll instead of a regular crust.", vegan: 'yes' },

    ],
    toppingPrices: [
    { name: '10in', price:'$1.75' },
    { name: '12in', price:'$2.00' },
    { name: '14in', price:'$2.50' },
    { name: '16in', price:'$2.75' },
    { name: '18in', price:'$3.00' },
    { name: 'GF 12in', price:'$1.75' },
    { name: 'Slice', price:'$0.33' },
    ],

    toppings: [
      { name: 'Anchovies'},
      { name: 'Bacon'},
      { name: 'Capicola'},
      { name: 'Corned Beef*'},
      { name: 'Fried Chicken'},
      { name: 'Grilled Chicken*'},
      { name: 'Ground Beef'},
      { name: 'Gyro Meat'},
      { name: 'Ham'},
      { name: 'Italian Sausage'},
      { name: 'Meatballs'},
      { name: 'Mortadella'},
      { name: 'Pepperoni'},
      { name: 'Salami'},
      { name: 'Seitan', vegan: 'yes'},
      { name: 'Banana Peppers', vegan: 'yes'},
      { name: 'Black Olives', vegan: 'yes'},
      { name: 'Broccoli', vegan: 'yes'},
      { name: 'Fresh Basil*', vegan: 'yes'},
      { name: 'Garlic', vegan: 'yes'},
      { name: 'Green Olives', vegan: 'yes'},
      { name: 'Green Onions', vegan: 'yes'},
      { name: 'Green Peppers', vegan: 'yes'},
      { name: 'Jalapenos', vegan: 'yes'},
      { name: 'Mushrooms', vegan: 'yes'},
      { name: 'Onions', vegan: 'yes'},
      { name: 'Pineapples', vegan: 'yes'},
      { name: 'Roasted Red Peppers', vegan: 'yes'},
      { name: 'Spinach', vegan: 'yes'},
      { name: 'Sundried Tomatoes', vegan: 'yes'},
      { name: 'Tomatoes', vegan: 'yes'},
      { name: 'American Cheese'},
      { name: 'Cheddar'},
      { name: 'Feta*'},
      { name: 'Fresh Mozzarella*'},
      { name: 'Mozzarella'},
      { name: 'Ricotta*'},
      { name: 'Shaved Parmesan*'},
      { name: 'Swiss'},
      { name: 'Vegan Mozzarella', vegan: 'yes'},
      { name: 'Vegan Bacon*', vegan: 'yes'},
      { name: 'Vegan Pepperoni*', vegan: 'yes'},
      { name: 'Vegan Sausage*', vegan: 'yes'},
      { name: 'Vegan Capicola*', vegan: 'yes'},
      { name: 'Alfredo'},
      { name: 'BBQ Sauce', vegan: 'yes'},
      { name: 'Buffalo Sauce', vegan: 'yes'},
      { name: 'General Tsos Sauce', vegan: 'yes'},
      { name: 'Honey Mustard Sauce', vegan: 'yes'},
      { name: 'Ranch'},
      { name: 'Roasted Garlic White Sauce', vegan: 'yes'},
      { name: 'Sweet Marinara', vegan: 'yes'},
      { name: 'Traditional Sauce', vegan: 'yes'},
      { name: '1000 Island'},
      { name: 'Garlic Mashed Potatoes', vegan: 'yes'},
      { name: 'Ketchup', vegan: 'yes'},
      { name: 'Mustard', vegan: 'yes'},
      { name: 'New Orleans Olive Salad*', vegan: 'yes'},
      { name: 'Pickles', vegan: 'yes'},
      { name: 'Steak*'},
      



    ],
    sizes: [
    { name: '10in', price: '$10.00', vegan: 'yes' },
    { name: '12in', price: '$12.00', vegan: 'yes' },
    { name: '14in', price: '$13.00', vegan: 'yes' },
    { name: '16in', price: '$15.00', vegan: 'yes' },
    { name: '18in', price: '$16.00', vegan: 'yes' },
    { name: 'GF 12in', price: '$11.00', vegan: 'yes' },
    { name: 'Slice', price: '$2.50', vegan: 'yes' },
    { name: 'Deep Dish', price: '$15.00' },
    { name: 'Keto', price: '$15.00', vegan: 'yes' },
    { name: 'Pizza Boat', price: '$10.00', vegan: 'yes' },
    { name: 'Stromboli', price: '$15.00', vegan: 'yes' },
    { name: 'Calzone', price: '$15.00', vegan: 'yes' },

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
h1 {
  color:#FFFAA1;
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

.right-side {
  margin: 20px;
  display: flex;
  flex-direction: column;
  align-items: center;
  width:100%;
}
.style-box {
  border: 3px double white;
  height: 520px;
  border-radius: 10px;
  width: fit-content;
  margin-bottom:5px;
}

.top-price-box {
  height: 325px;
}


.size-list {
  display: grid;
  width: 100%;
  column-gap:30px;
  text-align: left;
  margin:2px;
  grid-template-columns: v-bind('sizeColumnWidth') max-content;
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
  justify-content: center;
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
  height: 580px;
  border: 3px double white;
  border-radius: 10px;
  padding: 20px;
  margin: 10px;
  display: flex;
  flex-direction: column;
  flex-wrap: nowrap;
  overflow-y: scroll;
}

.topping-box {
  height:270px;
}


.picture-box {
  width: 100%;
  display: flex;
  flex-direction: row;
  align-items: center;
  justify-content: space-between;
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
  .menu-section {
    flex-direction: column;
  }
  .left-side {
    width: 100%;
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


</style>

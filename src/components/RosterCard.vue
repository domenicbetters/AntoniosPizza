<template>
    <div class="flip-card">
        <div class="flip-card-inner">
        <div class="flip-card-front">
            <img class = "about-image" :src="imagelink" :alt="altname" />
        </div>
        <div class="flip-card-back">
            <h1>{{name}}</h1>
            <p>{{stats1}}</p>
            <p>{{stats2}}</p>
        </div>
        </div>
    </div>
</template>

<script>
    export default {
        name: 'RosterCard',
        props: {
            imagelink: String,
            altname: String,
            name: String,
            stats1: String,
            stats2: String,
        },
    }
</script>

<style scoped>
.flip-card {
  background-color: transparent;
  width: 40%;
  max-width: 400px;
  height: 200px;
  perspective: 1000px; /* Remove this if you don't want the 3D effect */
  margin: 15px;
  box-shadow: 0px 10px 8px -7px #FFFAA1;
  border-radius: 15px 0 15px 0;
  overflow: hidden;
}

/* This container is needed to position the front and back side */
.flip-card-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.8s;
  transform-style: preserve-3d;
  
}

/* Do an horizontal flip when you move the mouse over the flip box container */
.flip-card:hover .flip-card-inner {
  transform: rotateY(180deg);
}

/* Position the front and back side */
.flip-card-front, .flip-card-back {
  position: absolute;
  width: 100%;
  height: 100%;
  -webkit-backface-visibility: hidden; /* Safari */
  backface-visibility: hidden;
}

/* Style the front side (fallback if image is missing) */
.flip-card-front {
  background-color: #bbb;
  color: black;
}

/* Style the back side */
.flip-card-back {
  background-color: rgb(10, 10, 10);
  color: white;
  transform: rotateY(180deg);
}

.about-image {
 object-fit: cover;
 object-position: center;
 width: 100%;
 height: 100%;
}

@media (max-width: 991.5px) {
  .flip-card {
    width: 100%;
    max-width: 400px;
  }
  }

</style>
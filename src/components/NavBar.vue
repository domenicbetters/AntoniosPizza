<template>
  <nav class="navbar navbar-dark navbar-expand-lg bg-body-tertiary bg-dark">
    <div class="container-fluid">
      <a @click="ShowHome()" class="navbar-brand" href="#"><img id="header-logo" src="../assets/images/antlogo.gif" alt="Logo" /></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a @click="ShowHome()" v-bind:class="{active: HomeisActive}" class="nav-link " aria-current="page" href="#">Home</a>
          </li>
          <li class="nav-item">
            <a @click="ShowLocation()" v-bind:class="{active: LocationisActive}" class="nav-link" aria-current="page" href="#" >Location and Hours</a>
          </li>
          <li class="nav-item">
            <a  class="nav-link " aria-current="page" href="https://antoniospizzeria.hungerrush.com/" >Order Online</a>
          </li>
          <li class="nav-item dropdown" >
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"  aria-expanded="false">
              Menus
            </a>
            <ul class="dropdown-menu" >
              <li><a class="dropdown-item" href="#">Full Menu</a></li>
              <li><a class="dropdown-item" href="#">Vegan Menu</a></li>
            </ul>
          </li>
          <li class="nav-item">
            <a class="nav-link " aria-current="page" href="#">Vegan Love</a>
          </li>
          <li class="nav-item">
            <a class="nav-link " aria-current="page" href="#">About Us</a>
          </li>
          <li class="nav-item">
            <a class="nav-link " aria-current="page" href="#">Contact</a>
          </li>
        </ul> 
      </div>
      <a class="nav-link nav-address" aria-current="page" href="#">758 Brookline Blvd. | 412-388-1000 <br>Mon-Thurs 11 - 10 | Sat 11-11 | Sun 12-10</a>
    </div>
  </nav>
</template>
<script>
export default {
  name: 'NavBar',
  data(){
    return {
      HomeisActive: true,
      LocationisActive: false
    }
  },
 
  methods: {
    ShowHome() {
      this.$emit('show-home')
      this.HomeisActive = true
      this.LocationisActive = false
  },
    ShowLocation() {
      this.$emit('show-location')
      this.HomeisActive = false
      this.LocationisActive = true
    }
     }
  }
</script>


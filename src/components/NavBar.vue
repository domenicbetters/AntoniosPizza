<template>
  <nav class="navbar  navbar-dark navbar-expand-lg bg-body-tertiary bg-dark">
    <div class="container-fluid">
      <a @click="ShowHome()" class="navbar-brand  slide-bottom-delay" href="#"><img id="header-logo" src="../assets/images/antlogo.gif" alt="Logo" /></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse slide-bottom navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav  me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" @click="ShowHome()" v-bind:class="{active: HomeisActive}" class="nav-link " aria-current="page" href="#">Home</a>
          </li>
          <li class="nav-item">
            <a  data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" @click="ShowLocation()" v-bind:class="{active: LocationisActive}" class="nav-link" aria-current="page" href="#" >Location and Hours</a>
          </li>
          <li class="nav-item">
            <a  class="nav-link " aria-current="page" href="https://antoniospizzeria.hungerrush.com/" >Order Online</a>
          </li>
          <li class="nav-item dropdown" >
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"  aria-expanded="false">
              Menus
            </a>
            <ul class="dropdown-menu" >
              <li><a data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" @click="ShowMenu()" v-bind:class="{active: MenuisActive}" class="dropdown-item" href="#">Full Menu</a></li>
              <li><a data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" @click="ToggleVegan()" v-bind:class="{active: VeganMenuisActive}" class="dropdown-item" href="#">Vegan Menu</a></li>
            </ul>
          </li>
          <li class="nav-item">
            <a data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" class="nav-link " @click="ShowVegan()" v-bind:class="{active: VeganisActive}" aria-current="page" href="#">Vegan Love</a>
          </li>
          <li class="nav-item">
            <a data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" class="nav-link " @click="ShowAbout()" v-bind:class="{active: AboutisActive}" aria-current="page" href="#">About Us</a>
          </li>
          <li class="nav-item">
            <a data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" class="nav-link " @click="ShowContact()" v-bind:class="{active: ContactisActive}" aria-current="page" href="#">Contact</a>
          </li>
        </ul> 
      </div>
      <a class="nav-link nav-address  slide-bottom-delay" aria-current="page" href="#">758 Brookline Blvd. | 412-388-1000 <br>Mon-Thurs 11 - 10 | Sat 11-11 | Sun 12-10</a>
    </div>
  </nav>
</template>
<script>
export default {
  name: 'NavBar',
  data(){
    return {
      HomeisActive: true,
      LocationisActive: false,
      VeganisActive: false,
      AboutisActive: false,
      ContactisActive: false,
      MenuisActive: false,
      VeganMenuisActive: false,
    }
  },
 
  methods: {
    ToggleVegan() {
      this.$emit('toggle-vegan-on')
      this.$emit('show-menu')
      this.HomeisActive = false
      this.LocationisActive = false
      this.VeganisActive = false
      this.AboutisActive = false
      this.ContactisActive = false
      this.MenuisActive = false
      this.VeganMenuisActive= true
    },
    ShowHome() {
      this.$emit('show-home')
      this.HomeisActive = true
      this.LocationisActive = false
      this.VeganisActive = false
      this.AboutisActive = false
      this.ContactisActive = false
      this.MenuisActive = false
      this.VeganMenuisActive= false
  },
    ShowLocation() {
      this.$emit('show-location')
      this.HomeisActive = false
      this.LocationisActive = true
      this.VeganisActive = false
      this.AboutisActive = false
      this.ContactisActive = false
      this.MenuisActive = false
      this.VeganMenuisActive= false
    },
    ShowVegan() {
      this.$emit('show-vegan')
      this.HomeisActive = false
      this.LocationisActive = false
      this.VeganisActive = true
      this.AboutisActive = false
      this.ContactisActive = false
      this.MenuisActive = false
      this.VeganMenuisActive= false
    },
    ShowAbout() {
      this.$emit('show-about')
      this.HomeisActive = false
      this.LocationisActive = false
      this.VeganisActive = false
      this.AboutisActive = true
      this.ContactisActive = false
      this.MenuisActive = false
      this.VeganMenuisActive= false
    },
    ShowContact() {
      this.$emit('show-contact')
      this.HomeisActive = false
      this.LocationisActive = false
      this.VeganisActive = false
      this.AboutisActive = false
      this.ContactisActive = true
      this.MenuisActive = false
      this.VeganMenuisActive= false
    },
    ShowMenu() {
      this.$emit('show-menu')
      this.$emit('toggle-vegan-off')
      this.HomeisActive = false
      this.LocationisActive = false
      this.VeganisActive = false
      this.AboutisActive = false
      this.ContactisActive = false
      this.MenuisActive = true
      this.VeganMenuisActive= false
    },

     }
  }
</script>


<template>
  <nav class="navbar  navbar-dark navbar-expand-lg bg-body-tertiary bg-dark">
    <div class="container-fluid">
      <router-link to="/"><p @click="ShowHome()" class="navbar-brand  slide-bottom-delay" href="#"><img id="header-logo" src="../assets/images/antlogo.gif" alt="Logo" /></p></router-link>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse slide-bottom navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav  me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <router-link to="/"> <p  data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" @click="ShowHome()" v-bind:class="{active: HomeisActive}" class="nav-link " aria-current="page">Home</p></router-link>
          </li>
          <li class="nav-item">
            <router-link to="/location"><p  data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" @click="ShowLocation()" v-bind:class="{active: LocationisActive}" class="nav-link" aria-current="page">Location and Hours</p></router-link>
          </li>
          <li class="nav-item">
            <a  class="nav-link " aria-current="page" href="https://antoniospizzeria.hungerrush.com/" >Order Online</a>
          </li>
          <li class="nav-item dropdown" >
            <a class="nav-link dropdown-toggle"  role="button" data-bs-toggle="dropdown"  aria-expanded="false">
              Menus
            </a>
            <ul class="dropdown-menu" >
              <li><router-link to="/menu/full"><p data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" @click="ShowMenu()" v-bind:class="{active: MenuisActive}" class="dropdown-item" >Full Menu</p></router-link></li>
              <li><router-link to="/menu/vegan"><p data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" @click="ToggleVegan()" v-bind:class="{active: VeganMenuisActive}" class="dropdown-item" >Vegan Menu</p></router-link></li>
            </ul>
          </li>
          <li class="nav-item">
            <router-link to="/vegan"><p data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" class="nav-link " @click="ShowVegan()" v-bind:class="{active: VeganisActive}" aria-current="page" >Vegan Love</p></router-link>
          </li>
          <li class="nav-item">
            <router-link to="/about"><p data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" class="nav-link " @click="ShowAbout()" v-bind:class="{active: AboutisActive}" aria-current="page" >About Us</p></router-link>
          </li>
          <li class="nav-item">
            <router-link to="/contact"><p data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" class="nav-link " @click="ShowContact()" v-bind:class="{active: ContactisActive}" aria-current="page" >Contact</p></router-link>
          </li>
        </ul> 
      </div>
      <p class="nav-link nav-address  slide-bottom-delay" aria-current="page">758 Brookline Blvd. | 412-388-1000 <br>Mon-Thurs 11 - 10 | Sat 11-11 | Sun 12-10</p>
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
      this.HomeisActive = false
      this.LocationisActive = false
      this.VeganisActive = false
      this.AboutisActive = false
      this.ContactisActive = false
      this.MenuisActive = false
      this.VeganMenuisActive= true
    },
    ShowHome() {
      this.HomeisActive = true
      this.LocationisActive = false
      this.VeganisActive = false
      this.AboutisActive = false
      this.ContactisActive = false
      this.MenuisActive = false
      this.VeganMenuisActive= false
  },
    ShowLocation() {
      this.HomeisActive = false
      this.LocationisActive = true
      this.VeganisActive = false
      this.AboutisActive = false
      this.ContactisActive = false
      this.MenuisActive = false
      this.VeganMenuisActive= false
    },
    ShowVegan() {
      this.HomeisActive = false
      this.LocationisActive = false
      this.VeganisActive = true
      this.AboutisActive = false
      this.ContactisActive = false
      this.MenuisActive = false
      this.VeganMenuisActive= false
    },
    ShowAbout() {
      this.HomeisActive = false
      this.LocationisActive = false
      this.VeganisActive = false
      this.AboutisActive = true
      this.ContactisActive = false
      this.MenuisActive = false
      this.VeganMenuisActive= false
    },
    ShowContact() {
      this.HomeisActive = false
      this.LocationisActive = false
      this.VeganisActive = false
      this.AboutisActive = false
      this.ContactisActive = true
      this.MenuisActive = false
      this.VeganMenuisActive= false
    },
    ShowMenu() {
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


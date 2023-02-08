<template>
    <nav class="navbar navbar-dark navbar-expand-lg bg-body-tertiary bg-dark">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a @click="dothat()" class="nav-link active" aria-current="page" href="#" >Location and Hours</a>
        </li>
        <li class="nav-item">
          <a @click="dothat()" class="nav-link active" aria-current="page" href="#" >Order Online</a>
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
          <a class="nav-link active" aria-current="page" href="#">Vegan Love</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">About Us</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Contact</a>
        </li>
      </ul> 
    </div>
  </div>
</nav>
</template>
<script>
export default {
  name: 'NavBar',
  
 
  methods: {
    dothat() {
      this.$emit('do-the-thing')
  },
     }
  }
</script>


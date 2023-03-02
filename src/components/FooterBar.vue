
<template>
<div>
  <nav class="navbar navbar-dark navbar-expand-lg bg-body-tertiary bg-dark">
    <div class="container-fluid">
        <ul class="navbar-nav slide-top me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link " aria-current="page" href="https://www.facebook.com/antoniospizzeriapgh"><i class="fa-brands fa-square-facebook"></i></a>
          </li>
          <li class="nav-item">
            <a class="nav-link " aria-current="page" href="https://www.instagram.com/antonios15226/"><i class="fa-brands fa-instagram"></i></a>
          </li>
        </ul> 
     </div>
  </nav>
</div>
</template>

<style scoped>

.navbar {
  border-top: 8px double white;
  border-bottom: none;
  border-radius: 10px;
  width: fit-content;
  flex-direction: row;
  top: 0;
  margin-top: 20px;
}

@media (max-width: 992px) {
  .navbar {
    width:fit-content;
  }
 
  .navbar-nav {
    flex-direction: row; 
  }
  .nav-link {
    margin-right: 10px;
    margin-left: 10px;
  }
}
</style>

<script>
export default {
  name: 'FooterBar',
  data(){
    return {
      isActive: false,
      helloexists: 'yes',
    }
  },
 
  methods: {
    dothat() {
      this.$emit('do-the-thing')
      this.isActive = true
  },
     }
  }

  
</script>




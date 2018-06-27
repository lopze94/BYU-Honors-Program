<template>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <router-link class="navbar-brand" to="/admin">{{user.username}}</router-link>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <router-link to="/" class="nav-link">Home</router-link>
      </li>
      <li class="nav-item">
        <router-link to="/editstories" class="nav-link">Stories</router-link>
      </li>
            <li class="nav-item">
        <router-link to="/editspotlight" class="nav-link">Spotlight</router-link>
      </li>
    </ul>
    <div><a @click="logout" href="#" class="btn btn-outline-light">Logout</a></div>
  </div>
</nav>
</template>

<script>
export default {
    name: 'LoggedIn',
       computed: {
     user: function() {
       return this.$store.getters.user;
     },
     loggedIn: function() {
       return this.$store.getters.loggedIn;
     },
     loginError: function() {
       return this.$store.getters.loginError;
     },
   },
   methods: {
     logout: function() {
       this.$store.dispatch('logout');
     }
   }
 }
</script>


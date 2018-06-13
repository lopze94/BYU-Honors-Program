<template>
  <div class="container py-3">
    <h1 v-if="loggedIn">Administrator Home</h1>
    <h1 v-else>Administrator Login</h1>
    <div id="menu">
      <div class="h5 py-3" v-if="loggedIn">Welcome <span class="text-capitalize">{{user.name}}</span>!</div>
      <div v-if="loggedIn">
        <p>Click the links below to edit the sections.</p>
        <ul>
          <li>View Stories</li>
          <li>View Spotlight</li>
        </ul>
      </div>
        <div  v-if="loggedIn"><a @click="logout" href="#" class="btn btn-outline-primary">Logout</a> <router-link to="/register" class="btn btn-secondary ml-2">Register Admin</router-link></div>
      <form v-else class="right" v-on:submit.prevent="login">
    <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input v-model="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted">Please, provide an administrator email</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input v-model="password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
	<button class="btn btn-primary" type="submit">Login</button>
      </form>
    </div>
    <div class="flexWrapper errorPlace">
      <p v-if="loginError" class="flexRight error">{{loginError}}</p>
    </div>
  </div>
</template>

<script>
 export default {
   name: 'AppHeader',
   data () {
     return {
       email: '',
       password: '',
     }
   },
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
     login: function() {
       this.$store.dispatch('login',{
         email: this.email,
         password: this.password,
       }).then(user => {
	 this.email = '';
	 this.password = '';
       });
     },
     logout: function() {
       this.$store.dispatch('logout');
     }
   }
 }
</script>

<style scoped>
</style>
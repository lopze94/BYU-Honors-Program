<template>
  <div id="app">
    <site-header></site-header>
    <logged-in v-if="loggedIn"></logged-in>
    <div class="page-content">
    <nuxt/>
    </div>
    <site-footer></site-footer>
  </div>
</template>

<script>
import LoggedIn from '../components/LoggedIn.vue'


export default {
  name: 'layout',
  components: {LoggedIn},
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
  created() {
if (process.browser) {
  window.onNuxtReady((app) => {
    console.log('Nuxt ready!')
    this.$store.dispatch('initialize');
  })
}
    //this.$store.dispatch('initialize');

  }

}
</script>


<style>
html,
body {
  font-family: "Gotham A", "Gotham B", Helvetica, sans-serif;
  font-size: 16px;
  height: 100%;
}

#app {

  display: flex;
      min-height: 100vh;
  flex-direction: column;

}

.page-content {
  flex-grow: 1;
}

h2 {
  font-family: "Vitesse A", "Vitesse B", Georgia, serif;
  font-weight: 400;
  text-align: center;
  color: #002e5d;
}

@media (max-width: 575.98px) {
  h2 {
    font-size: 35px;
  }
}

@media (min-width: 1025px) {
  h2 {
    font-size: 60px;
  }
}

    .jumptarget::before {
        content: "";
        display: block;
        height: 55px;
        /* fixed header height*/
        margin: -55px 0 0;
        /* negative fixed header height */
    }
</style>

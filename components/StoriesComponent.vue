<template>
<div>
  <hero v-bind:hero="stories[0]" v-if="stories[0]"></hero>
  <div class="container">

    <h1 class="py-4">Latest Stories</h1>
    <div class="card-deck">
      <a class="card border-0" v-if="stories[1]" v-bind:href="stories[1].link">
        <img class="card-img-top" v-bind:src="stories[1].image_path" v-bind:alt="stories[1].subtitle">
        <div class="card-body">
          <h5 class="card-title">{{stories[1].title}}</h5>
          <p class="card-text">{{stories[1].description}}</p>
        </div>
        <div class="card-footer border-0 bg-transparent">
          <small class="text-muted">{{stories[1].created | formatDate}}</small>
        </div>
      </a>

      <a class="card border-0" v-if="stories[2]" v-bind:href="stories[2].link">
        <img class="card-img-top" v-bind:src="stories[2].image_path" v-bind:alt="stories[2].subtitle">
        <div class="card-body">
          <h5 class="card-title">{{stories[2].title}}</h5>
          <p class="card-text">{{stories[2].description}}</p>
        </div>
        <div class="card-footer border-0 bg-transparent">
          <small class="text-muted">{{stories[2].created | formatDate}}</small>
        </div>
      </a>

      <a class="card border-0" v-if="stories[3]" v-bind:href="stories[3].link">
        <img class="card-img-top" v-bind:src="stories[3].image_path" v-bind:alt="stories[3].subtitle">
        <div class="card-body">
          <h5 class="card-title">{{stories[3].title}}</h5>
          <p class="card-text">{{stories[3].description}}</p>
        </div>
        <div class="card-footer border-0 bg-transparent">
          <small class="text-muted">{{stories[3].created | formatDate}}</small>
        </div>
      </a>

    </div>
    <div class="text-muted text-right mt-3">
      <router-link to="/stories" class="text-muted">See all stories</router-link>
    </div>
  </div>
</div>


</template>

<script>
var moment = require('moment');
function resolveAfter2Seconds() {
  return new Promise(resolve => {
    setTimeout(() => {
      resolve(true);
    }, 500);
  });
}
export default {
    name: 'StoriesComponent',
     data (){
    return{
      dataLoaded:false,
      message: 'The story could not be found.'
    }
  },
   created: function() {
     this.asyncCall();
     this.$store.dispatch('getStories');
   },
    computed: {
     stories: function() {
       return this.$store.getters.stories;
     },
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
       filters: {
        formatDate: function(dateInput) {
        return moment(dateInput).format('MMMM DD, YYYY');
    }},
   methods:{
async asyncCall() {
  //console.log('calling');
  this.dataLoaded = await resolveAfter2Seconds();
  console.log(this.dataLoaded);
  // expected output: "resolved"
},
   }
}
</script>

<style scoped>
a {
    color: inherit;
    text-decoration: none;
}

a:hover 
{
     text-decoration:none; 
     cursor:pointer;  
}


.card{
    box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.10);
}

.card:hover{
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
</style>

<template>
<div v-if="dataLoaded">
    <div v-if="checkTitle(stories[0].title)">
<hero  v-bind:hero="stories[0]"></hero>
    <div class="container">
        <h3 class="text-muted  my-4">{{stories[0].subtitle}}</h3>
        <div v-html="stories[0].text">
            {{stories[0].text}}
        </div>
    </div>
    </div>

    <div v-else class="container alert alert-danger my-4" role="alert">
  <h4 class="alert-heading">Ops! Something went wrong</h4>
  <p>{{message}}</p>
  <hr>
  <p class="mb-0">This story could have been deleted a long time ago.</p>
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
      validate ({ params }) {
    // Must be a number
    return /^\d+$/.test(params.id)
  },
  name: "Story",
  data (){
    return{
        id: this.$route.params.id,
      dataLoaded:false,
      message: 'The story could not be found. Please, check the link.'
    }
  },
  head () {
    return {
      title: 'Stories | ' + this.$route.params.title.replace(/_/g, " "),
      meta: [
        { hid: 'description', name: 'description', content: 'This is the BYU Honors Story #' + this.$route.params.id + ', titled ' + this.$route.params.title.replace(/_/g, " ")}
      ]
    }},
   created: function() {
     this.asyncCall();
     this.$store.dispatch('getStory', this.id);
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
    }
    },
   methods:{
async asyncCall() {
  //console.log('calling');
  this.dataLoaded = await resolveAfter2Seconds();
  //console.log(this.dataLoaded);
  // expected output: "resolved"
},
     deleteStory: function(student) {
    if (confirm("Are you sure you want to delete " + student.first_name + "'s spotlight")) {
      var img_name = student.image_path.replace("/img/spotlight/","");
      //console.log(img_name);
        this.$store.dispatch('deleteSpotlight',{
                      id:student.id,
            image_path:img_name
          });
        alert("You deleted " + student.first_name + "'s spotlight!");
    } else {
        alert("Action canceled! " + student.first_name + " " + student.last_name + " was not deleted.");
    }

     },
     checkTitle: function (title){
         let routeTitle = decodeURIComponent(this.$route.params.title);
         
         if (routeTitle == title){
             return true;
         }
         else {
             return false
         }
     }
   }
};
</script>
<template>
    <div>
    <div v-if="dataLoaded" v-for="story in stories" v-bind:key="story.id">

<hero v-if="stories" v-bind:hero="story"></hero>
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
  name: "Stories",
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
     deleteStory: function(student) {
    if (confirm("Are you sure you want to delete " + student.first_name + "'s spotlight")) {
      var img_name = student.image_path.replace("/img/spotlight/","");
      console.log(img_name);
        this.$store.dispatch('deleteSpotlight',{
                      id:student.id,
            image_path:img_name
          });
        alert("You deleted " + student.first_name + "'s spotlight!");
    } else {
        alert("Action canceled! " + student.first_name + " " + student.last_name + " was not deleted.");
    }

     },
   }
};
</script>

<template>
    <div>
    <div v-if="dataLoaded" v-for="story in stories" v-bind:key="story.id">

<hero v-if="stories" v-bind:hero="story"></hero>
<button class="btn btn-danger btn-position rounded-0 pl-4" v-if="loggedIn" v-on:click="deleteStory(story)">Delete</button>
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
  head () {
    return {
      title: 'BYU Honors Program | Stories',
      meta: [
        { hid: 'description', name: 'description', content: 'This is the place where you will find all of the BYU Honors Stories. Enjoy!'}
      ]
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
  //console.log(this.dataLoaded);
  // expected output: "resolved"
},
     deleteStory: function(story) {
    if (confirm("Are you sure you want to delete the story \"" + story.title + "\"\?")) {
      var img_name = story.image_path.replace("/img/stories/","");
      //console.log(img_name);
        this.$store.dispatch('deleteStory',{
                      id:story.id,
            image_path:img_name
          });
        alert("You deleted the story titled: " + story.title);
    } else {
        alert("Action canceled! " + story.title + " was not deleted.");
    }

     },
   }
};
</script>

<style scoped>
.btn-position{
  position: absolute;
  margin-top: -600px;
 z-index:1000;
}
</style>


<template>
<div v-if="dataLoaded">
<h2>Honors Spotlight</h2>
<div v-for="(student) in spotlight" v-bind:key="student.id">
 <byu-hero-banner id="hero" v-bind:image-source="student.image_path" class="side-image my-5" >
    <span slot="headline">{{student.first_name}} {{student.last_name}}</span>
    <span slot="intro-text"> <small class="text-muted">{{student.created | formatDate}} </small> 
    <button  v-if="loggedIn" class="btn badge badge-danger float-right" v-on:click="deleteSpotlight(student)">Delete</button>
    <button v-if="loggedIn" class="btn badge badge-secondary float-right mr-1">Edit</button> 
    <br> <b>{{student.major}}</b><span v-if="student.minor"> | </span>{{student.minor}}
    <br>{{student.short_text}}</span>
    <a slot="read-more" data-toggle="modal" v-bind:data-target="'#'+student.first_name+'-spotlight-'+student.id">
  Read More
</a>
</byu-hero-banner>
<!-- Button trigger modal -->

<!-- Modal -->
<div class="modal fade" v-bind:id="student.first_name+'-spotlight-'+student.id" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title card-title" id="exampleModalLabel">{{student.first_name}} {{student.last_name}}</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body border rounded-bottom">
        <p class="h5"> {{student.major}}
          <span class="font-weight-normal text-muted" v-if="student.minor"><br>{{student.minor}}</span>
          <br><span class="font-weight-normal text-muted">{{student.graduation}}</span>
        </p>
<p v-html="student.long_text">{{student.long_text}}</p>
      </div>
    </div>
  </div>
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
  name: "Spotlight",
  data (){
    return{
      dataLoaded:false
    }
  },
   created: function() {
     this.asyncCall();
     this.$store.dispatch('getSpotlight');
   },
    computed: {
     spotlight: function() {
       return this.$store.getters.spotlight;
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
     deleteSpotlight: function(student) {
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
   }
};
</script>


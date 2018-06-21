<template>
<div class="container" v-if="loggedIn">
    <h1>Add Spotlight</h1>
    <p>This section will help you add a new Honors Spotlight with a real-time preview of it. Fill in the fields in this form to see the changes reflected 
        on the Honors Spotlight preview. Once you've added a new spotlight, you can click "Go Home" to see it on the Home page.</p>
    <p>If you'd like to edit the entire list, click the link below.</p>
    <div class="text-center">
<router-link to="/spotlightlist" class="btn btn-success my-2 mr-2">Edit List</router-link>
<router-link to="/" class="btn btn-secondary my-2">Go Home</router-link>
    </div>
            
    <div>
    <byu-hero-banner id="hero" v-bind:image-source="this.image_path" class="side-image my-5" >
    <span slot="headline">Honors Spotlight</span>
    <span slot="intro-text"><b>{{this.first_name || "First +"}} {{this.last_name || "Last Name"}}</b> | {{this.major || "Student\'s Major"}}
    <br>{{this.short_text || "Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque sed non vitae aut nemo in rerum enim autem! Adipisci, praesentium."}}</span>
    <a slot="read-more" data-toggle="modal" data-target="#spotlightModal">
  Read More
</a>
</byu-hero-banner>
<!-- Button trigger modal -->

<!-- Modal -->
<div class="modal fade" id="spotlightModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title card-title" id="exampleModalLabel">{{this.first_name}} {{this.last_name}}</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body border">
        <p class="h5"> {{this.major}}
          <br>
          <span class="font-weight-normal text-muted">{{this.minor}}</span>
          <br><span class="font-weight-normal text-muted">{{this.graduation}}</span>
        </p>
<p v-html="long_text">{{long_text}}</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
</div>

<!-- Form to submit Spotlight-->
    <form v-on:submit.prevent="addSpotlight">
<div class="row">
    <div class="form-group col">
        <label for="firstName">First Name</label>
        <input class="form-control" id="firstName" placeholder="Enter first name" v-model="first_name" required>
    </div>

    <div class="form-group col">
        <label for="lastName">Last Name</label>
        <input class="form-control" id="lastName" placeholder="Enter last name" v-model="last_name" required>
    </div>
        <div class="form-group col">
        <label for="graduation">Graduation</label>
        <input class="form-control" id="graduation" placeholder="Enter Month YYYY" v-model="graduation">
    </div>
</div>

<div class="row">
    <div class="form-group col-sm-6">
        <label for="major">Major</label>
        <input class="form-control" id="major" placeholder="Enter major" v-model="major" required>
    </div>

    <div class="form-group col-sm-6">
        <label for="minor">Minors</label>
        <input class="form-control" id="minor" aria-describedby="minorsHelp" placeholder="Enter single or multiple minors" v-model="minor">
        <small id="minorsHelp" class="form-text text-muted">Enter values separated by a comma and include "Minor" or "Minors" at the end, e.g., "Computer Science, Finance, and Sociology <b>Minors</b>"</small>
    </div>
</div>

<div class="form-group">
    <label for="shortText">Summary</label>
    <input class="form-control" type="text" id="shortText" aria-describedby="summaryHelp" placeholder="Enter a summary of the story here" v-model="short_text" required>
    <small id="summaryHelp" class="form-text text-muted">Limit the spotlight summary to 2-4 sentences (single paragraph).</small>
</div>
<div class="form-group">
    <label for="shortText">Full Story <small class="text-muted">(field supports HTML)</small> </label>
    <textarea class="form-control" type="text" id="longText" aria-describedby="storyHelp" placeholder="Enter the full story text here" v-model="long_text" rows="5"></textarea>
    <small id="storyHelp" class="form-text text-muted">Type <b>&lt;br&gt;</b> for line breaks, e.g., "Paragraph 1 <b>&lt;br&gt;&lt;br&gt;</b> Paragraph 2" will display: <br> "Paragraph 1 <br><br> Paragraph 2" </small>
</div>
      <button class="btn btn-primary my-4" type="submit">Add Spotlight</button>
    </form>

</div>

</template>

<script>
export default {
    name: 'EditSpotlight',
    data (){
        return{
            first_name: '',
            last_name: '',
            major: '',
            minor: '',
            short_text: '',
            long_text:'',
            image_path: '/img/spotlight/default.jpg',
            graduation: ''
        }
    },
    computed:{
     user: function() {
       return this.$store.getters.user;
     },     loggedIn: function() {
       return this.$store.getters.loggedIn;
     },
     loginError: function() {
       return this.$store.getters.loginError;
     },
    },
       methods: {
           
    addSpotlight: function() {
        if(confirm("Are you sure you want to add " + this.first_name + " "+ this.last_name + " to this week's spotlight?")){
       this.$store.dispatch('addSpotlight',{
	    first_name: this.first_name,
        last_name: this.last_name,
        major: this.major,
        minor: this.minor,
        short_text: this.short_text,
        long_text: this.long_text,
        graduation: this.graduation
       });
       alert(this.first_name + " " + this.last_name + " was added to the weekly spotlight!")
        } else {
        alert("Add Spotlight canceled! " + this.first_name + " "+ this.last_name + " was not added to the Honors Spotlight")
        }

     }
   }
}
</script>

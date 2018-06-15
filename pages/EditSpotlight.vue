<template>
<div class="container" v-if="loggedIn">
    <div>
    <byu-hero-banner id="hero" v-bind:image-source="this.image_path" class="side-image my-5" >
    <span slot="headline">Honors Spotlight</span>
    <span slot="intro-text"><b>{{this.first_name}} {{this.last_name}}</b> | {{major}}
    <br>{{this.short_text}}</span>
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
          <br><span class="font-weight-normal text-muted">April 2018</span>
        </p>
<p v-html="long_text">{{long_text}}</p>
<p>{{plans}}</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
</div>
    <form v-on:submit.prevent="addSpotlight">
<div class="row">
    <div class="form-group col">
        <label for="firstName">First Name</label>
        <input class="form-control" id="firstName" placeholder="First Name" v-model="first_name">
    </div>

    <div class="form-group col">
        <label for="lastName">Last Name</label>
        <input class="form-control" id="lastName" placeholder="Last Name" v-model="last_name">
    </div>
</div>

<div class="row">
    <div class="form-group col-sm-6">
        <label for="major">Major</label>
        <input class="form-control" id="major" placeholder="Enter Major" v-model="major">
    </div>

    <div class="form-group col-sm-6">
        <label for="minor">Minors</label>
        <input class="form-control" id="minor" aria-describedby="minorsHelp" placeholder="Enter single or multiple minors" v-model="minor">
        <small id="minorsHelp" class="form-text text-muted">Enter values separated by a comma and include "Minor" or "Minors" at the end, e.g., "Computer Science, Finance, and Sociology <b>Minors</b>"</small>
    </div>
</div>

<div class="form-group">
    <label for="shortText">Spotlight Summary</label>
    <input class="form-control" type="text" id="shortText" aria-describedby="summaryHelp" placeholder="Enter a summary of the story here" v-model="short_text">
    <small id="summaryHelp" class="form-text text-muted">Limit the spotlight summary to 2-4 sentences (single paragraph).</small>
</div>
<div class="form-group">
    <label for="shortText">Spotlight Story</label>
    <textarea class="form-control" type="text" id="longText" aria-describedby="storyHelp" placeholder="Enter the full story text here" v-model="long_text" rows="5"></textarea>
    <small id="storyHelp" class="form-text text-muted">Type <b>&lt;br&gt;</b> for line breaks, e.g., "Paragraph 1 <b>&lt;br&gt;&lt;br&gt;</b> Paragraph 2" will display: <br> "Paragraph 1 <br><br> Paragraph 2" </small>
</div>
      <br>
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
       this.$store.dispatch('addSpotlight',{
	 first_name: this.first_name,
    last_name: this.last_name,
         major: this.major,
	 minor: this.minor,
       });
     }
   }
}
</script>

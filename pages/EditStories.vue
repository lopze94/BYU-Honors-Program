<template>
<div v-if="loggedIn">
    <hero v-bind:hero="this.story"></hero>
    <div class="container">

        <h2 class="text-muted  my-4">{{this.story.subtitle}}</h2>
        <h6 class="text-muted  my-4">by {{user.name}}</h6>
        <div v-html="this.story.text">
            {{this.story.text}}
        </div>
    </div>

    <div class="container bg-primary py-1 rounded my-3"></div>
<!--this is the section for the form-->

<div class="container">
    <h1>Add a new Story</h1>
    <form enctype="multipart/form-data" v-on:submit.prevent="addStory">
<div class="row">
    <div class="form-group col">
        <label for="firstName">Title</label>
        <input class="form-control" id="firstName" placeholder="Enter story title" v-model="story.title" required>
    </div>

    <div class="form-group col">
        <label for="lastName">Subtitle</label>
        <input class="form-control" id="lastName" placeholder="Enter story subtitle" v-model="story.subtitle" required>
    </div>
</div>

<div class="row">
    <div class="form-group col-sm-6">
        <label for="major">Link URL</label>
        <input class="form-control" id="major" aria-describedby="linkURLHelp" placeholder="Enter major" v-model="story.link" >
            <small id="linkURLHelp" class="form-text text-muted">Enter the full address, includding "https://" or leave blank to generate a page at "honors.byu.edu/stories/_id"</small>
    </div>

    <div class="form-group col-sm-6">
        <label for="minor">Link Text</label>
        <input class="form-control" id="minor"  placeholder="Enter single or multiple minors" v-model="story.link_text">
    </div>
</div>

<div class="form-group">
    <label for="shortText">Story Description</label>
    <input class="form-control" type="text" id="shortText" aria-describedby="summaryHelp" placeholder="Enter a summary of the story here" v-model="story.description" required>
    <small id="summaryHelp" class="form-text text-muted">Limit the story description to 2-4 sentences (single paragraph).</small>
</div>
<div class="form-group">
    <label for="shortText">Full Story <small class="text-muted">(field supports HTML)</small> </label>
    <textarea class="form-control" type="text" id="longText" aria-describedby="storyHelp" placeholder="Enter the full story text here" v-model="story.text" rows="10"></textarea>
    <small id="storyHelp" class="form-text text-muted">Type <b>&lt;br&gt;</b> for line breaks, e.g., "Paragraph 1 <b>&lt;br&gt;&lt;br&gt;</b> Paragraph 2" will display: <br> "Paragraph 1 <br><br> Paragraph 2" </small>
</div>

  <div class="custom-file">
    <input id="file-input" type="file" v-on:change="previewImage" accept="image/*" name="image" class="custom-file-input">
    <label class="custom-file-label" for="validatedCustomFile">{{this.imageData.filename|| "Choose file..." }}</label>
    <div class="invalid-feedback">Example invalid custom file feedback</div>
  </div>

      <button class="btn btn-primary my-4" type="submit">Add Story</button>
       
       <div v-bind:style="{inactive: !imagePreview, active:imagePreview }" class="text-center">
         <img class="w-100 mx-auto" v-bind:src="imageData">
       </div>


    </form>
</div>
</div>

</template>

<script>
export default {
    name: 'EditStories',
    data (){
        return{
            story:{
            title: '',
            subtitle: '',
            description: '',
            text: '',
            image_path: '/img/stories/default.jpg',
            link_text: '',
            link: ''
            },
            imageData: '',
            imagePreview: false,
            file: '',

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
           
    addStory: function() {
        if(confirm("Are you sure you want to add " + this.story.title + " to this month's story?")){
       this.$store.dispatch('addStory',{
	    title: this.story.title,
        subtitle: this.story.subtitle,
        description: this.story.description,
        link_text: this.story.link_text,
        text: this.story.text,
        link: this.story.link,
        image: this.file,
        author: this.$store.state.user.name
       }).then(addStory => {
           this.imageData = "",
           this.imagePreview = false
       });
       alert(this.story.title + " was added to the monthly story!")
        } else {
        alert("Add Story canceled! " + this.story.title  + " was not added to the Honors Story")
        }

     },
          previewImage: function(event) {
       const input = event.target;
       // Ensure that you have a file before attempting to read it
       if (input.files && input.files[0]) {
        this.file = input.files[0];
         // create a new FileReader to read this image and convert to base64 format
         const reader = new FileReader();
         // Define a callback function to run, when FileReader finishes its job
         reader.onload = (e) => {
           // Read image as base64 and set to imageData
          this.imageData = e.target.result;
          this.imagePreview = true;
         }
         // Start the reader job - read file as a data url (base64 format)
         reader.readAsDataURL(input.files[0]);
       }
   }
       }
}
</script>

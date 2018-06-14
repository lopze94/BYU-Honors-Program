<template>
<div class="container">
        
    <h1 class="py-4">Latest Stories</h1>
      <edit-stories v-if="loggedIn"></edit-stories>
    <div class="card-deck">
  <div class="card border-0">
    <img class="card-img-top" src="/img/homehero.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Succesful Story 1</h5>
      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
    </div>
    <div class="card-footer border-0 bg-transparent">
<button class="btn btn-outline-primary">Read Story</button>
    </div>
  </div>
  <div class="card border-0">
    <img class="card-img-top" src="/img/homehero.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">This is a Story with a Long Title</h5>
      <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
    </div>
    <div class="card-footer border-0 bg-transparent">
<button class="btn btn-outline-primary">Read Story</button>
    </div>
  </div>

  <div class="card border-0">
    <img class="card-img-top" src="/img/homehero.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Honors Student Wins Competition</h5>
      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
    </div>
    <div class="card-footer border-0 bg-transparent">
        <button class="btn btn-outline-primary">Read Story</button>
        
    </div>
  </div>
</div>
<p class="text-muted text-right mt-3">See all stories</p>
</div>
</template>

<script>
import EditStories from '../components/EditStories.vue'
export default {
    name: 'Stories',
    components:{
      EditStories
    },
      computed: {
     loggedIn: function() {
       return this.$store.getters.loggedIn;
     },
   },
}
</script>

<style scoped>
.card{
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
</style>

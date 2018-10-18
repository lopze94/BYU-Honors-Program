<template>
<div v-if="spotlight[0]">
    <byu-hero-banner id="hero" v-bind:image-source="spotlight[0].image_path" class="side-image my-5" >
    <span slot="headline">{{spotlight[0].category | formatCategory}} Spotlight</span>
    <span slot="intro-text"><b>{{spotlight[0].first_name}} {{spotlight[0].last_name}}</b> | {{spotlight[0].major}}
    <br>{{spotlight[0].short_text}}</span>
    <a slot="read-more" data-toggle="modal" data-target="#spotlightModal">
  Read More
</a>
</byu-hero-banner>
    <div class="container text-muted text-right mt-3">
      <router-link to="/spotlightlist" class="text-muted">See all spotlight stories</router-link>
    </div>

<!-- Button trigger modal -->

<!-- Modal -->
<div class="modal fade" id="spotlightModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title card-title" id="exampleModalLabel">{{spotlight[0].first_name}} {{spotlight[0].last_name}}</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body border rounded-bottom">
        <p class="h5"> {{spotlight[0].major}}
          <br v-if="spotlight[0].minor">
          <span class="font-weight-normal text-muted" v-if="spotlight[0].minor">{{spotlight[0].minor}}</span>
          <br><span class="font-weight-normal text-muted">{{spotlight[0].graduation}}</span>
        </p>
<p v-html="spotlight[0].long_text">{{spotlight[0].long_text}}</p>
      </div>
    </div>
  </div>
</div>
</div>

</template>

<script>
export default {
  name: "Spotlight",
  props: ['category'],
   created: function() {
     this.$store.commit('setSpotlight', []);
     this.$store.dispatch('getSpotlight', this.$props.category );
   },
    computed: {
     spotlight: function() {
       return this.$store.getters.spotlight;
     },
   },
   filters: {
     formatCategory: function(categoryInput){
        let output = ''
        switch (categoryInput){
          case 0:
            output = 'Student'
          break;
          case 1:
            output = 'Alumni'
          break;
          case 2:
            output = 'Faculty'
          break;
        }
      return output;
      }
   }
};
</script>
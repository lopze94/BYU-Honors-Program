<template>
<div>
    <byu-hero-banner id="hero" image-source="/img/philipmorgan.jpg" class="side-image my-5">
    <span slot="headline">Honors Spotlight</span>
    <span slot="intro-text"><b></b> |
    <br></span>
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
        <h5 class="modal-title card-title" id="exampleModalLabel"></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body border">
        <p class="h5">
          <br>
          <span class="font-weight-normal text-muted"> Minor</span>
          <br><span class="font-weight-normal text-muted">April 2018</span>
        </p>
<p></p>
<p class="h6">Future Plans</p>
<p></p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
</div>

</template>

<script>
export default {
  name: "Spotlight",
   created: function() {
     this.$store.dispatch('getSpotlight');
   },
      computed: {
     spotlight: function() {
       return this.$store.getters.spotlight;
     },
   },
};
</script>
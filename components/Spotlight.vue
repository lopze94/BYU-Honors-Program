<template>
<div v-if="spotlight[0]">
    <byu-hero-banner id="hero" v-bind:image-source="spotlight[0].image_path" class="side-image my-5" >
    <span slot="headline">Honors Spotlight</span>
    <span slot="intro-text"><b>{{spotlight[0].first_name}} {{spotlight[0].last_name}}</b> | {{spotlight[0].major}}
    <br>{{spotlight[0].short_text}}</span>
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
        <h5 class="modal-title card-title" id="exampleModalLabel">{{spotlight[0].first_name}} {{spotlight[0].last_name}}</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body border rounded-bottom">
        <p class="h5"> {{spotlight[0].major}}
          <br>
          <span class="font-weight-normal text-muted">{{spotlight[0].minor}} Minor</span>
          <br><span class="font-weight-normal text-muted">{{spotlight[0].graduation}}</span>
        </p>
<p>{{spotlight[0].long_text}}</p>
      </div>
    </div>
  </div>
</div>
</div>

</template>

<script>
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
   },
   methods:{
async asyncCall() {
  console.log('calling');
  this.dataLoaded = await resolveAfter2Seconds();
  console.log(this.dataLoaded);
  // expected output: "resolved"
}
   }
};
</script>
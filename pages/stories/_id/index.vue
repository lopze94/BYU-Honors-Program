<template>
<div>
    <div class="container alert alert-danger my-4" role="alert">
  <h4 class="alert-heading">Ops! Something went wrong</h4>
  <p>{{message}}</p>
  <hr>
  <p class="mb-0">Check the link. Maybe it was deleted a long time ago.</p>
</div>
</div>

</template>

<script>

export default {
      validate ({ params }) {
    // Must be a number
    return /^\d+$/.test(params.id)
  },
  name: "Story",
  data (){
    return{
        id: this.$route.params.id,
      dataLoaded:false,
      message: 'The story could not be found.'
    }
  },
  head () {
    return {
      title: 'Error',
      meta: [
        { hid: 'description', name: 'description', content: 'This BYU Honors Story could not be found'}
      ]
    }}
};
</script>
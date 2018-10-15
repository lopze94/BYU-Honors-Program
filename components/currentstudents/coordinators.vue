<template>
<div class="container" id="coordinators">
    <div class="jumbotron rounded-0 bg-white">
  <h2 class="py-3">Department Coordinators</h2>
  <p class="lead">The Honors Coordinator serves as the liaison between the Honors Program and students in the various disciplines across campus.  They refer students to possible mentors, help identify faculty experts in their discipline, inform students of research opportunities, and can assist students in identifying possible thesis topics.</p>
  <hr class="my-4">
  <p>Coordinators provide department-specific guidelines for the Honors Thesis Proposal, and are a participating member of the thesis committee from the proposal stage through to the defense. Check the list of department coordinators to find yours.</p>
  <a class="btn btn-honors" href="/directory/coordinators" role="button">View List</a>
</div>
</div>

</template>

<script>
export default {
    name: "Coordinators",
    head() {
      return {
        title: 'BYU Honors Program | Honors Coordinators',
        meta: [{
          hid: 'description',
          name: 'description',
          content: 'BYU Honors Program coordinators list. Find your coordinator for your college/department.'
        }]
      }
    }
}
</script>

<style>

</style>

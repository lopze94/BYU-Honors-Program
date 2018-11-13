<template>
    <div class="container jumptarget" id="what">
        <h2 class="py-3">What Is the Honors Program?</h2>
        <p>The Honors Program at BYU is an open-enrollment community of scholars engaged in broad thinking, creative problem solving, and leadership. Together, students and faculty explore interdisciplinary approaches to make unexpected connections between ideas,
        disciplines, and people!</p>
        <honors-videos></honors-videos>
    </div>
</template>

<script>
import HonorsVideos from "./videos.vue"
export default {
  name: "What",
  components: {HonorsVideos}
};
</script>

<style scoped>
.shadow {
  box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.1);
}
</style>


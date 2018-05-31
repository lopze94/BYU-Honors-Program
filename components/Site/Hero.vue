<template>
<div>
  <byu-hero-banner id="hero" v-bind:image-source="image" class="full-screen dark-image transparent-overlay">
    <span slot="headline">{{title}}</span>
    <span slot="intro-text">{{lead}}</span>
</byu-hero-banner>
</div>
</template>

<script>
export default {
  name: "Mission",
  props: ["title", "lead", "image"]
};
</script>

<style>

</style>

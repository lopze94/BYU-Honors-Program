<template>
<div>
  <byu-hero-banner id="hero" v-bind:image-source="hero.image_path" class="dark-image full-screen transparent-overlay">
    <span slot="headline">{{hero.title}}</span>
    <span slot="intro-text">{{hero.description}}</span>
    <a slot="read-more" v-bind:href="hero.link" class="h5">{{hero.link_text}}</a>
</byu-hero-banner>
</div>
</template>

<script>
export default {
  name: "Mission",
  props: ["hero"]
};
</script>

<style>

</style>

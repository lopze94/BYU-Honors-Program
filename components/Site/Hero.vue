<template>
<div>
  <byu-hero-banner id="hero" v-bind:image-source="hero.imgpath" class="dark-image" v-bind:class="hero.position">
    <span slot="headline">{{hero.title}}</span>
    <span slot="intro-text">{{hero.lead}}</span>
    <a v-if="hero.showLink" slot="read-more" v-bind:href="hero.link" class="h5">{{hero.linkText}}</a>
</byu-hero-banner>
</div>
</template>

<script>
export default {
  name: "Mission",
  props: ["hero"],
};
</script>

<style>

</style>

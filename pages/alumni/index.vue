<template>
  <div>
    <!--Main Hero and Nav-->
    <main-hero></main-hero>
    <navigation></navigation>
    <!--Alumni Spotlight-->
    <spotlight v-bind:category="1" id="spotlight"></spotlight>
  </div>
</template>

<script>
import MainHero from "../../components/alumni/main.vue";
import Navigation from "../../components/alumni/nav.vue";

export default {
  name: "Alumni",
  components: {
    MainHero,
    Navigation
  },
  head() {
    return {
      title: "BYU Honors Program | Alumni",
      meta: [
        {
          hid: "description",
          name: "description",
          content: "About our company Nuxt.js"
        }
      ]
    };
  }
};
</script>


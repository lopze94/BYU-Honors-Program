<template>
  <div>
    <!--Main Hero and Nav-->
    <main-hero></main-hero>
    <navigation></navigation>
    <!--Faculty Spotlight-->
    <spotlight v-bind:category="2" id="spotlight"></spotlight>
    <!--Faculty Directory-->
    <faculty-directory></faculty-directory>
  </div>
</template>

<script>
import MainHero from "../../components/faculty/main.vue";
import Navigation from "../../components/faculty/nav.vue";
import FacultyDirectory from "../../components/faculty/directory.vue";

export default {
  name: "Faculty",
  components: {
    MainHero,
    Navigation,
    FacultyDirectory
  },
  head() {
    return {
      title: "BYU Honors Program | Faculty",
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
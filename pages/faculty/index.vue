<template>
  <div>
    <!--Main Hero and Nav-->
    <main-hero></main-hero>
    <navigation :navigation="navigation"></navigation>
    <!--Faculty Participation-->
    <participate></participate>
    <!--Contact Professor Magleby-->
    <contact></contact>
    <!--Faculty Spotlight-->
    <spotlight v-bind:category="2" id="spotlight" class="jumptarget py-3"></spotlight>
    <!--Faculty Directory-->
    <faculty-directory></faculty-directory>
  </div>
</template>

<script>
import MainHero from "../../components/faculty/main.vue";
import FacultyDirectory from "../../components/faculty/directory.vue";
import Participate from "../../components/faculty/participate.vue";
import FacultyResources from "../../components/faculty/resources.vue";
import Contact from "../../components/faculty/contact.vue";

export default {
  name: "Faculty",
  components: {
    MainHero,
    FacultyDirectory,
    Participate,
    FacultyResources,
    Contact
  },
  data() {
    return {
      navigation: [
        {
          href: "#participate",
          text: "Participate"
        },
        {
          href: "#spotlight",
          text: "Spotlight"
        },
        {
          href: "#directory",
          text: "Directory"
        }
      ]
    };
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
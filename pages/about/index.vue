<template>
<div>
  <!--Main Hero and Nav-->
  <main-hero></main-hero>
  <navigation v-bind:navigation="navigation"></navigation>
  <!--Our Mission and Story-->
  <mission></mission>
  <our-story></our-story>
  <!--Honors Directory-->
  <directory></directory>
  <!--Affiliations-->
  <affiliations></affiliations>
  <!--Resources-->
  <resources></resources>
  <!--Contact Us-->
  <contact></contact>
</div>
</template>

<script>
import MainHero from "../../components/about/main.vue";
import Mission from "../../components/about/mission.vue";
import OurStory from "../../components/about/story.vue";
import Directory from "../../components/about/directory.vue";
import Affiliations from "../../components/about/affiliations.vue";
import Resources from "../../components/about/resources.vue";
import Contact from "../../components/about/contact.vue";

export default {
  name: "About",
  components: {
    MainHero,
    Mission,
    OurStory,
    Directory,
    Affiliations,
    Resources,
    Contact
  },
  head() {
    return {
      title: "BYU Honors Program | About",
      meta: [
        {
          hid: "description",
          name: "description",
          content: "About our company Nuxt.js"
        }
      ]
    };
  },
  data() {
    return {
      navigation: [
        {
          text: "Mission",
          href: "#mission"
        },
        {
          text: "Story",
          href: "#story"
        },
        {
          text: "Directory",
          href: "#directory"
        },
        {
          text: "Affiliations",
          href: "#affiliations"
        },
        {
          text: "Resources",
          href: "#resources"
        },
        {
          text: "Contact",
          href: "#contact"
        }
      ]
    };
  },
};
</script>
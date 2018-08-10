<template>
<div>
  <!--Main Hero and Nav-->
  <main-hero></main-hero>
  <navigation></navigation>
  <!--Intro Text-->
  <introduction></introduction>
  <!--Deadlines-->
  <deadlines></deadlines>
  <!--Events-->
  <events></events>
  <!--Opportunities-->
  <opportunities></opportunities>
  <!--Forms-->
  <honors-forms></honors-forms>
</div>
</template>

<script>
import MainHero from "../../components/currentstudents/main.vue";
import Navigation from "../../components/currentstudents/nav.vue";
import Introduction from "../../components/currentstudents/introduction.vue";
import Deadlines from "../../components/currentstudents/deadlines.vue";
import Events from "../../components/currentstudents/events.vue";
import Opportunities from "../../components/currentstudents/opportunities.vue";
import HonorsForms from "../../components/currentstudents/forms.vue";

export default {
  name: "CurrentStudents",
  components: {
    MainHero,
    Introduction,
    Navigation,
    Deadlines,
    Events,
    Opportunities,
    HonorsForms
  },
  head() {
    return {
      title: "BYU Honors Program | Current Students",
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
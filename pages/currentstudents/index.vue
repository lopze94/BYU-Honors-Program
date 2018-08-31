<template>
  <div>
    <!--Main Hero and Nav-->
    <main-hero></main-hero>
    <navigation :navigation="navigation"></navigation>
    <!--Intro Text-->
    <requirements class="pb-xl-5"></requirements>
    <!--Forms-->
    <honors-forms></honors-forms>
    <!--Deadlines-->
    <deadlines></deadlines>

    <coordinators></coordinators>
    <!--Events-->
    <events></events>
    <scholarships></scholarships>

    <!--Opportunities-->
    <opportunities></opportunities>
    <!--Newsletter-->
    <newsletter></newsletter>
  </div>
</template>

<script>
import MainHero from "../../components/currentstudents/main.vue";
import Requirements from "../../components/currentstudents/requirements.vue";
import Deadlines from "../../components/currentstudents/deadlines.vue";
import Opportunities from "../../components/currentstudents/opportunities.vue";
import HonorsForms from "../../components/currentstudents/forms.vue";
import Newsletter from "../../components/currentstudents/newsletter.vue";
import Coordinators from "../../components/currentstudents/coordinators.vue";
import Scholarships from "../../components/currentstudents/scholarships.vue";

export default {
  name: "CurrentStudents",
  components: {
    MainHero,
    Requirements,
    Deadlines,
    Opportunities,
    HonorsForms,
    Newsletter,
    Coordinators,
    Scholarships
  },
  data() {
    return {
      navigation: [
        {
          href: "#introduction",
          text: "Introduction"
        },
        {
          href: "#deadlines",
          text: "Deadlines"
        },
        {
          href: "#forms",
          text: "Forms"
        },
        {
          href: "#events",
          text: "Events"
        },
        {
          href: "#opportunities",
          text: "Opportunities"
        },
        {
          href: "#newsletter",
          text: "Newsletter"
        }
      ]
    };
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
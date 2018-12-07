<template>
  <div>
    <!--Main Hero and Nav-->
    <main-hero></main-hero>
    <navigation :navigation="navigation"></navigation>
    <!--Intro Text-->
    <requirements class="pb-xl-5"></requirements>
    <!--Forms-->
    <honors-forms></honors-forms>
    <conference-banner></conference-banner>
    <!--Deadlines-->
    <deadlines></deadlines>

    <coordinators></coordinators>
    <!--Events-->
    <events></events>
    <scholarships></scholarships>

    <!--Opportunities-->
    <conference-banner></conference-banner>
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
import ConferenceBanner from "../../components/Site/conferenceBanner.vue";

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
    Scholarships,
    ConferenceBanner
  },
  data() {
    return {
      navigation: [
        {
          href: "#requirements",
          text: "Requirements"
        },
        {
          href: "#forms",
          text: "Forms"
        },
        {
          href: "#deadlines",
          text: "Deadlines"
        },

        {
          href: "#events",
          text: "Events"
        },
        {
          href: "#scholarships",
          text: "Scholarships"
        },
        {
          href: "#opportunities",
          text: "Opportunities"
        },
        {
          href: "#contact",
          text: "Contact"
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
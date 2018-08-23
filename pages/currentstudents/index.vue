<template>
  <div>
    <!--Main Hero and Nav-->
    <main-hero></main-hero>
    <navigation :navigation="navigation"></navigation>
    <!--Intro Text-->
    <introduction></introduction>
    <students-by-college class="d-none d-sm-block"></students-by-college>
    <xs-students-by-college class="d-block d-sm-none"></xs-students-by-college>

    <!--Deadlines-->
    <deadlines></deadlines>
    <!--Forms-->
    <honors-forms></honors-forms>
    <!--Events-->
    <events></events>
    <!--Opportunities-->
    <opportunities></opportunities>
    <!--Newsletter-->
    <newsletter></newsletter>
  </div>
</template>

<script>
import MainHero from "../../components/currentstudents/main.vue";
import Introduction from "../../components/currentstudents/introduction.vue";
import Deadlines from "../../components/currentstudents/deadlines.vue";
import Opportunities from "../../components/currentstudents/opportunities.vue";
import HonorsForms from "../../components/currentstudents/forms.vue";
import Newsletter from "../../components/currentstudents/newsletter.vue";
import StudentsByCollege from "../../components/currentstudents/StudentsByCollege.vue";
import XsStudentsByCollege from "../../components/currentstudents/xsStudentsByCollege.vue";

export default {
  name: "CurrentStudents",
  components: {
    MainHero,
    Introduction,
    Deadlines,
    Opportunities,
    HonorsForms,
    Newsletter,
    StudentsByCollege,
    XsStudentsByCollege
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
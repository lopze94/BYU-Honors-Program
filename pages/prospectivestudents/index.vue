<template>
<div>
<!--Main Hero and Nav-->
<main-hero></main-hero>
<navigation></navigation>
<!--What is Honors Program-->
<what></what>
<!--Why Join Honors Program?-->
<why></why>
<!--Student Testimonials-->
<testimonials></testimonials>
<!--How to Join Honors Program?-->
<how></how>
<!--Requirements-->
<requirements class="mb-5"></requirements>

    <byu-hero-banner id="hero" image-source="/img/advisor.jpg" class="dark-image full-screen transparent-overlay">
    <span slot="headline">Talk to an Advisor!</span>
    <span slot="intro-text"></span>
    <a slot="read-more" class="a-link" href="/scheduleappointment">Schedule Appointment</a>
</byu-hero-banner>
</div>
</template>

<script>
import MainHero from "../../components/prospectivestudents/main.vue";
import Navigation from "../../components/prospectivestudents/nav.vue";
import What from "../../components/prospectivestudents/what.vue";
import Why from "../../components/prospectivestudents/why.vue";
import Testimonials from "../../components/prospectivestudents/testimonials.vue";
import How from "../../components/prospectivestudents/how.vue";
import Requirements from "../../components/prospectivestudents/requirements.vue";

export default {
  name: "ProspectiveStudents",
  components: {
    MainHero,
    Navigation,
    What,
    Why,
    Testimonials,
    How,
    Requirements
  },
  head() {
    return {
      title: "BYU Honors Program | Prospective Students",
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

<style scoped>
.a-link {
  font-size: 20px !important;
}
</style>

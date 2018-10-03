<template>
  <div>
    <!--Main Hero and Nav-->
    <main-hero></main-hero>
    <navigation v-bind:navigation="navigation"></navigation>
  
    <!--What is Honors Program-->
    <what></what>
    <!--Why Join Honors Program?-->
    <why></why>
    <!--Student Testimonials-->
    <testimonials></testimonials>
    <!--How to Join Honors Program?-->
    <how></how>
    <!--Requirements-->
    <requirements></requirements>
    <first-opportunities></first-opportunities>
  
    <byu-hero-banner id="booknow" image-source="/img/advisor.jpg" class="dark-image full-screen transparent-overlay jumpstart">
      <span slot="headline">Got More Questions?</span>
      <span slot="intro-text">Talk to our advisors! You can request an appointment up to three weeks in advance.</span>
      <a slot="read-more" class="a-link" href="" onclick="Calendly.showPopupWidget('https://calendly.com/byu-honors-program');return false;">Book Now</a>
    </byu-hero-banner>
  </div>
</template>

<script>
import MainHero from "../../components/prospectivestudents/main.vue";
import What from "../../components/prospectivestudents/what.vue";
import Why from "../../components/prospectivestudents/why.vue";
import Testimonials from "../../components/prospectivestudents/testimonials.vue";
import How from "../../components/prospectivestudents/how.vue";
import Requirements from "../../components/prospectivestudents/requirements.vue";
import FirstOpportunities from "../../components/prospectivestudents/opportunities.vue";

export default {
  name: "ProspectiveStudents",
  components: {
    MainHero,
    What,
    Why,
    Testimonials,
    How,
    Requirements,
    FirstOpportunities
  },
  data() {
    return {
      navigation: [
        {
          href: "#what",
          text: "What is Honors?"
        },
        {
          href: "#why",
          text: "Why Honors?"
        },
        {
          href: "#how",
          text: "How to Join?"
        },
        {
          href: "#requirements",
          text: "Requirements"
        },
        {
          href: "#opportunities",
          text: "Opportunities"
        },
        {
          href: "#booknow",
          text: "Questions?"
        }
      ]
    };
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

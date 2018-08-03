<template>
<div>
  <h1 class="d-none">Prospective Students</h1>
    <byu-hero-banner id="hero" image-source="/img/maeser_building_spring.jpg" class="dark-image full-screen transparent-overlay">
    <span slot="headline">Welcome Prospective Students!</span>
    <span slot="intro-text"></span>
    <a slot="read-more" @click="showModal" class="a-link">Watch Video</a>
</byu-hero-banner>
    <b-modal ref="prospectiveModal" centered hide-footer hide-header title="Our Mission" size="lg" @hidden="onHidden">
      <div class="videoContainer">
      <iframe v-bind:src="this.video_source" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen class="video"></iframe>
      </div>
    </b-modal>

    <div class="container">
    <h2 class="py-3">What is Honors Program?</h2>
    <p>
        The Honors Program at BYU is an open-enrollment, stimulating community of scholars who seek to broaden and deepen the undergraduate experience.
    </p>
    <p>
      Through classes, research, and leadership experience, professors and students engage ideas and questions that generations have explored.  Within their areas of expertise, faculty mentor students in developing the knowledge and skills needed to conduct original research that will result in publication.
    </p>
<!--Why Join Honors Program?-->
<why-honors></why-honors>
<!--Student Testimonials-->
<student-testimonials></student-testimonials>
<!--How to Join Honors Program?-->
<how-to-honors></how-to-honors>
<!--Requirements-->
<requirements class="mb-5"></requirements>

    </div>
    <byu-hero-banner id="hero" image-source="/img/advisor.jpg" class="dark-image full-screen transparent-overlay">
    <span slot="headline">Talk to an Advisor!</span>
    <span slot="intro-text"></span>
    <a slot="read-more" class="a-link" href="/scheduleappointment">Schedule Appointment</a>
</byu-hero-banner>
</div>
</template>

<script>
import WhyHonors from '../../components/WhyHonors.vue'
import StudentTestimonials from '../../components/StudentTestimonials.vue'
import HowToHonors from '../../components/HowToHonors.vue'
import Requirements from '../../components/Requirements.vue'

export default {
    name: 'ProspectiveStudents',
    components :{
      WhyHonors, StudentTestimonials, HowToHonors, Requirements
      },
      head () {
    return {
      title: 'BYU Honors Program | Prospective Students',
      meta: [
        { hid: 'description', name: 'description', content: 'About our company Nuxt.js' }
      ],
    }
  },
  data (){
    return {
      video_source: "",
    }
  },
  methods: {
    showModal () {
      this.$refs.prospectiveModal.show();
      this.video_source = "https://www.youtube.com/embed/yLMgdCnYMG0"
    },
    onHidden () {
      this.video_source = ""
    }
  }
}
</script>

<style scoped>
.videoContainer {
    position: relative;
    width: 100%;
    height: 0;
    padding-bottom: 56.25%;
}
.video {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
}

.a-link {
  font-size: 20px !important;
}


</style>

<template>
<div>
  <!--Main Hero and Nav-->
  <main-hero></main-hero>
  <navigation></navigation>
  <!--Our Story-->
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
import MainHero from '../../components/about/main.vue'
import Navigation from '../../components/about/nav.vue'
import OurStory from '../../components/about/story.vue'
import Directory from '../../components/about/directory.vue'
import Affiliations from '../../components/about/affiliations.vue'
import Resources from '../../components/about/resources.vue'
import Contact from '../../components/about/contact.vue'

export default {
    name: 'About',
    components: {
      MainHero, Navigation, OurStory, Directory, Affiliations, Resources, Contact
    },
      head () {
    return {
      title: 'BYU Honors Program | About',
      meta: [
        { hid: 'description', name: 'description', content: 'About our company Nuxt.js' }
      ]
    }
  }
}
</script>
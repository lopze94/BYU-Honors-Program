<template>
    <div>
        <hero v-bind:hero="this.hero1"></hero>
        <edit-stories v-if="loggedIn"></edit-stories>
        <stories></stories>
        <spotlight></spotlight>
 
        <hero v-bind:hero="this.hero2"></hero>
    </div>
</template>

<script>
import Stories from '../components/Stories.vue'
import Spotlight from '../components/Spotlight.vue'
import EditStories from '../components/EditStories.vue'
export default {
    name: 'HomePage',
    components:{Stories, Spotlight, EditStories},

    data(){
        return{
            hero1: {
            title: 'Make Unexpected Connections',
            lead: 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Distinctio eum delectus earum repellendus vel incidunt sit commodi necessitatibus aut eius.',
            imgpath: '/img/maeser_building_spring.jpg',
            position: 'full-screen transparent-overlay',
            link: '',
            linkText: 'Enroll Now',
            showLink: false
            },
            hero2: {
            title: 'Make Unexpected Connections',
            lead: '',
            imgpath: '/img/join.jpg',
            position: 'full-screen',
            link: '/prospectivestudents',
            linkText: 'Join Now',
            showLink: true
            }

        }
    },
  head () {
    return {
      title: 'BYU Honors Program | Home',
      meta: [
        { hid: 'description', name: 'description', content: 'About our company Nuxt.js' }
      ]
    }
  },
  computed: {
     loggedIn: function() {
       return this.$store.getters.loggedIn;
     },
   },
}
</script>


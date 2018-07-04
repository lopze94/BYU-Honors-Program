<template>
    <div>
      <h1 class="d-none">Welcome to the BYU Honors Program Homepage</h1>
        <stories-component></stories-component>
        <spotlight></spotlight>

    </div>
</template>

<script>
import StoriesComponent from '../components/StoriesComponent.vue'
import Spotlight from '../components/Spotlight.vue'

export default {
    name: 'HomePage',
    components:{StoriesComponent, Spotlight},

    data(){
        return{
            hero1: {
            title: 'Make Unexpected Connections',
            description: 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Distinctio eum delectus earum repellendus vel incidunt sit commodi necessitatibus aut eius.',
            image_path: '/img/maeser_building_spring.jpg',
            position: 'full-screen transparent-overlay',
            link: '/renderstory',
            link_text: 'Enroll Now',
            show_link: true
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


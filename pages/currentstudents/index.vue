<template>
<div>
  <!--div id="popover" class="bg-light rounded">
<nav class="nav nav-pills nav-fill">
  <a class="nav-item nav-link active" href="#">Active</a>
  <a class="nav-item nav-link" href="#">Link</a>
  <a class="nav-item nav-link" href="#">Link</a>
  <a class="nav-item nav-link disabled" href="#">Disabled</a>
</nav>
</div-->
  <hero v-bind:hero="this.hero[0]"></hero>
    <div class="container">
        <h2>Current Students</h2>
        <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Omnis magni natus aliquam voluptatibus ut, ipsam quos soluta alias, tempora quam mollitia? Excepturi architecto eos fugit assumenda sequi obcaecati, illo consequatur!</p>

        <nav class="nav nav-pills nav-fill">
  <a class="nav-item nav-link" href="#">Active</a>
  <a class="nav-item nav-link" href="#">Link</a>
  <a class="nav-item nav-link" href="#">Link</a>
  <a class="nav-item nav-link disabled" href="#">Disabled</a>
</nav>
        <deadlines></deadlines>
    </div>
</div>
</template>

<script>
import Deadlines from '../../components/currentstudents/Deadlines.vue'


export default {
    name: 'CurrentStudents',
    components: {
      Deadlines,
    },
      head () {
    return {
      title: 'BYU Honors Program | Current Students',
      meta: [
        { hid: 'description', name: 'description', content: 'About our company Nuxt.js' }
      ]
    }
  },
  data () {
    return {
      hero: [
          {
            title: 'Make Unexpected Connections',
            description: 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Distinctio eum delectus earum repellendus vel incidunt sit commodi necessitatibus aut eius.',
            image_path: '/img/maeser_building_spring.jpg',
            position: 'full-screen transparent-overlay',
            show_link: false
            },
            {
                          title: 'Make Unexpected Connections',
            description: 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Distinctio eum delectus earum repellendus vel incidunt sit commodi necessitatibus aut eius.',
            image_path: '/img/maeser_building_spring.jpg',
            position: 'full-screen transparent-overlay',
            link: '/renderstory',
            link_text: 'Enroll Now',
            show_link: true
            }
      ]
    }
  }
}
</script>

<style scoped>
#popover{
    position: fixed;
  bottom: 0;
  width: 100%;
  z-index: 1000000;
   box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.10);
}
</style>

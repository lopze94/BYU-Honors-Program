<template>
    <div>
      <h1 class="d-none">Faculty Home</h1>
      <hero v-bind:hero="this.mainHero"></hero>
      <h2>Faculty</h2>
    </div>
</template>

<script>
export default {
    name: 'Faculty',
    data (){
      return {
            mainHero: {
            title: 'Connect With Our Faculty',
            description: 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Distinctio eum delectus earum repellendus vel incidunt sit commodi necessitatibus aut eius.',
            image_path: '/img/faculty_main_hero.jpg',
            position: 'full-screen transparent-overlay',
            link: '/directory#faculty',
            link_text: 'View Directory',
            show_link: true
            }
      }
    },
    head () {
    return {
      title: 'BYU Honors Program | Faculty',
      meta: [
        { hid: 'description', name: 'description', content: 'About our company Nuxt.js' }
      ]
    }
  }
}
</script>
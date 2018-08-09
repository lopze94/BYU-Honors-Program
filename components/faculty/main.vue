<template>
    <div>
        <h1 class="d-none">Honors Faculty</h1>
        <global-hero v-bind:hero="hero"></global-hero>
    </div>
</template>

<script>
export default {
    name: 'MainHero',
    data () {
        return {
            hero: {
            title: 'Connect With Our Faculty',
            description: 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Distinctio eum delectus earum repellendus vel incidunt sit commodi necessitatibus aut eius.',
            image_path: '/img/faculty_main_hero.jpg',
            }
        }
    }
}
</script>

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
            description: 'Distinguished faculty from across the university engage in innovative teaching, mentored research, and shared learning experiences.',
            image_path: '/img/faculty_main_hero.jpg',
            }
        }
    }
}
</script>

<template>
    <div id="contact">
        <h1 class="d-none">About BYU Honors Program</h1>
        <global-hero v-bind:hero="hero"></global-hero>
    </div>
</template>

<script>
export default {
    name: 'MainHero',
    data () {
        return {
            hero: {
                title: 'Contact Us',
                image_path: '/img/cambridge_program.jpg',
                description: '(801) 400-8794'
            }
        }
    }
}
</script>
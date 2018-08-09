<template>
    <div>
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
                title: 'About Honors Program',
                image_path: '/img/cambridge_program.jpg',
                description: '',
                link: '/stories',
                link_text: 'Our Story'
            }
        }
    }
}
</script>
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
                image_path: '/img/about/main_hero.jpg',
                description: '',
                link: '#story',
                link_text: 'Our Story'
            }
        }
    }
}
</script>
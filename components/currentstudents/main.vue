<template>
    <div>
        <h1 class="d-none">Current Students</h1>
        <global-hero v-bind:hero="hero"></global-hero>
    </div>
</template>

<script>
export default {
    name: 'MainHero',
    data () {
        return {
            hero: {
                title: 'Stay Informed!',
                image_path: '/img/current/main_hero.jpg',
                description: 'Get to know the requirements, download forms, check important deadlines, learn about events, and explore opportunities.',
            }
        }
    }
}
</script>

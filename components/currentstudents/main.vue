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
                title: 'Welcome Back!',
                image_path: '/img/current/main_hero.jpg',
                description: 'Check important deadlines, download forms, and find out about future events and new opportunities.',
                link: '',
                link_text: 'Watch video'
            }
        }
    }
}
</script>

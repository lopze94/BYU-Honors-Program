<template>
    <global-hero :hero="hero"></global-hero>
</template>

<script>
export default {
    name: "MainHero",
    data () {
        return {
            hero: {
                title: 'Cambridge Study Abroad',
                image_path: '/img/current/cambridge_program.jpg',
            }
        }
    }
}
</script>

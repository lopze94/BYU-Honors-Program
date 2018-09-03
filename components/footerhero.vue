<template>
    <div>
        <h1 class="d-none">Honors Faculty</h1>
        <global-hero v-bind:hero="hero"></global-hero>
    </div>
</template>

<script>
export default {
    name: 'FooterHero',
    data () {
        return {
            hero: {
            title: 'Explore the Honors Program',
            link: "/prospectivestudents",
            link_text:"Learn More",
            image_path: '/img/maeser-statue.jpg',
            }
        }
    }
}
</script>

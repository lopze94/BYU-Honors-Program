<template>
    <div id="directory">
        <global-hero v-bind:hero="hero"></global-hero>
    </div>
</template>

<script>
export default {
    name: 'FacultyDirectory',
    data () {
        return {
            hero: {
                title: 'Honors Directory',
                description: 'find who you\'re looking for',
                image_path: '/img/maeser_building_spring.jpg',
                link: '/directory',
                link_text: 'Go to Directory'
            }
        }
    }
}
</script>


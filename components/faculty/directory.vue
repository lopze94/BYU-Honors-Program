<template>
    <div id="directory" class="jumptarget">
        <global-hero v-bind:hero="hero"></global-hero>
    </div>
</template>

<script>
export default {
    name: 'FacultyDirectory',
    data () {
        return {
            hero: {
                title: 'Explore the Directory',
                description: 'Find who you\'re looking for.',
                image_path: '/img/maeser_building_spring.jpg',
                link: '/directory#faculty',
                link_text: 'Go to Directory'
            }
        }
    }
}
</script>


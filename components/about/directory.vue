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
                title: 'Honors Directory',
                description: 'find who you\'re looking for',
                image_path: '/img/about/directory_hero.jpg',
                link: '/directory',
                link_text: 'Go to Directory'
            }
        }
    }
}
</script>


<template>
    <div id="forms">
        <global-hero v-bind:hero="hero"></global-hero>
    </div>
</template>

<script>
export default {
    name: 'HonorsForms',
    data () {
        return {
            hero: {
                title: 'Looking for Forms?',
                description: 'Click the link below to see them all',
                image_path: '/img/advisor.jpg',
                link: '/forms',
                link_text: 'Honors Forms'
            }
        }
    }
}
</script>

<template>
    <div id="application">
        <global-hero :hero="hero"></global-hero>
    </div>
</template>

<script>
export default {
    name: "Application",
    data () {
        return {
            hero: {
                title: 'Experience Cambridge',
                description: 'Visit our official website to apply.',
                image_path: '/img/current/apply_cambridge.jpg',
                link: 'https://kennedy.byu.edu/cambridge/',
                link_text: 'Apply Now'
            }
        }
    }
}
</script>
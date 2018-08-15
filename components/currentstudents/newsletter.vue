<template>
    <global-hero :hero="hero" id="newsletter" class="jumptarget"></global-hero>
</template>

<script>
export default {
    name: "Newsletter",
    data (){
        return {
            hero: {
                title: 'Join Our Newsletter',
                image_path: '/img/current/newsletter.jpg',
                link: 'javascript: void 0',
                link_text: 'Subscribe'
            }
        }
    }
}
</script>

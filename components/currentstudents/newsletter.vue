<template>
    <div id="contact" class="jumptarget">
        <h1 class="d-none">About BYU Honors Program</h1>
        <global-hero v-bind:hero="hero"></global-hero>
    </div>
</template>

<script>
export default {
    name: 'ContactUs',
    data () {
        return {
            hero: {
                title: 'Need More Help?',
                image_path: '/img/about/contact_hero.jpg',
                description: '102 MSRB<br>M-F | 8am - 5pm<br>(801) 422-5497<br>honors@byu.edu',
                link: "mailto:honors@byu.edu",
                link_text: "Contact Us"
            }
        }
    }
}
</script>

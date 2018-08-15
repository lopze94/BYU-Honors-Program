<template>
    <div id="contact" class="jumptarget">
        <h1 class="d-none">About BYU Honors Program</h1>
        <global-hero v-bind:hero="hero"></global-hero>
    </div>
</template>

<script>
export default {
    name: 'MainHero',
    data () {
        return {
            hero: {
                title: 'Contact Us',
                image_path: '/img/about/contact_hero.jpg',
                description: '102 MSRB<br>M-F | 8am - 5pm<br>(801) 422-5497<br>honors@byu.edu'
            }
        }
    }
}
</script>
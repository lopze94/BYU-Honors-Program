<template>
    <div>
        <h1 class="d-none">Honors Faculty</h1>
        <global-hero v-bind:hero="hero"></global-hero>
    </div>
</template>

<script>
export default {
    name: 'MainHero',
    data () {
        return {
            hero: {
            title: 'Honors Program Forms',
            description: 'Find forms for scholarship applications, leadership experience, thesis proposals and more.',
            image_path: '/img/global/student_forms.jpg',
            }
        }
    }
}
</script>

<template>
    <div>
        <h1 class="d-none">BYU + Cambridge</h1>
        <main-hero></main-hero>
        <about></about>

        <timeline></timeline>

        <questions></questions>
        <application></application>
    </div>
</template>

<script>
    import MainHero from '../../components/currentstudents/cambridge/main.vue'
    import About from '../../components/currentstudents/cambridge/about.vue'
    import WhyCambridge from '../../components/currentstudents/cambridge/why.vue'
    import Timeline from '../../components/currentstudents/cambridge/timeline.vue'
    import Funding from '../../components/currentstudents/cambridge/funding.vue'
    import Application from '../../components/currentstudents/cambridge/application.vue'
    import Questions from '../../components/currentstudents/cambridge/faq.vue'
    import Testimonials from '../../components/currentstudents/cambridge/testimonials.vue'
    
    export default {
        name: "CambridgeProgram",
        components: {
            MainHero,
            About,
            WhyCambridge,
            Timeline,
            Funding,
            Application,
            Questions,
            Testimonials
        }
    };
</script>
 
<template>
    <div class="row">
        <div class="col-sm  text-center text-muted">
            <video :width="width" :height="height" controls class="shadow">
                <source src="/vid/intro-to-honors.mp4" type="video/mp4">
                 Your browser does not support the video tag.
            </video>
            <p class="h5">Intro to the Honors Program</p>
        </div>
        <div class="col-sm  text-center text-muted">
            <video :width="width" :height="height" controls class="shadow">
                <source src="/vid/tour-with-spencer-magleby.mp4" type="video/mp4">
                 Your browser does not support the video tag.
            </video>
            <p class="h5">Tour with the Associate Dean</p>
        </div>
        <div class="col-sm  text-center text-muted">
            <video :width="width" :height="height" controls class="shadow">
                <source src="/vid/meeting-with-advisors.mp4" type="video/mp4">
                 Your browser does not support the video tag.
            </video>
            <p class="h5">Meeting with an Honors Advisor</p>
        </div>
        <div class="col-sm  text-center text-muted">
            <video :width="width" :height="height" controls class="shadow">
                <source src="/vid/myths-and-faqs.mp4" type="video/mp4">
                 Your browser does not support the video tag.
            </video>
            <p class="h5">Mythbusting and FAQs</p>
        </div>
    </div>
</template>

<script>
export default {
    name: "Videos",
    data () {
        return {
            width: 250,
            height: this.width * (16/9)
        }
    }
}
</script>

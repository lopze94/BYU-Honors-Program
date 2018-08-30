<template>
    <div class="container">
        <h2 class="py-3">Application Submited!</h2>
        <h5>NetID: {{netid}}</h5>
        <p>Email: {{email}}
        <br>Graduation: {{graduation|| "N/A"}}</p>
        <h3>Thank you!</h3>
        <router-link to="/prospectivestudents" class="btn btn-honors">Go to Prospective Students</router-link>
    </div>
</template>

<script>
export default {
    name: "EnrollmentConfirmation",
    data () {
        return {
            netid: this.$route.query.netid,
            email: this.$route.query.email,
            graduation: this.$route.query.grad,
        }
    },
}
</script>
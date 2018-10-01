<template>
    <div class="container">
        <h2 class="py-3">Appointment Scheduled!</h2>
        <h5>{{name}}, your appointment was scheduled for <span class="text-primary">{{date}} at {{time}}</span>.</h5>
        <p>We've sent a confirmation message to the following email: <span class="text-primary">{{email}}</span>. Don't forget to add it to your calendar.</p>
        <p>We will let you know if we have a conflict with your appoinment as soon as possible.</p>
        <h3>Thank you!</h3>
    </div>
</template>

<script>
export default {
    name: "AppointmentConfirmation",
    data () {
        return {
            name: this.$route.query.name,
            email: this.$route.query.email,
            date: this.$route.query.date,
            time: this.$route.query.time

        }
    },
    created () {
        console.log(this.$route.query);
        
    }
}
</script>


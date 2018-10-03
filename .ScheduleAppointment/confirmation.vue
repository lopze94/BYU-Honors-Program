<template>
    <div class="container">
        <h2 class="py-3">Appointment Requested!</h2>
        <h5>{{name}}, your appointment is scheduled for <span class="text-primary">{{date}} at {{time}}</span>.</h5>
        <p>We will send a confirmation to the following email address: <span class="text-primary">{{email}}</span>. Our advisors are students like you. For this reason, we want to make sure we have an advisor available for you at your requested date. We will let you know if we have a conflict with your appoinment as soon as possible.</p>
        <h3>Thank you!</h3>
    </div>
</template>

<script>
export default {
  name: "AppointmentConfirmation",
  head() {
    return {
      title: "Appointment Requested for " + this.$route.query.name,
      meta: [
        {
          hid: "description",
          name: "description",
          content: "Appointment request message."
        }
      ]
    };
  },
  data() {
    return {
      name: this.$route.query.name,
      email: this.$route.query.email,
      date: this.$route.query.date,
      time: this.$route.query.time
    };
  }
};
</script>


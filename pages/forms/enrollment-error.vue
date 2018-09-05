<template>
    <div class="container">
        <h2 class="py-3">Ups! Something went wrong</h2>
        <div class="alert alert-danger" role="alert">
 Honors Online Enrollment failed: please, email <a :href="'mailto:honors@byu.edu?subject=Honors Enrollment for '+user.netid+'&body='+emailBody">honors@byu.edu</a> to enroll.
</div>
    </div>
</template>

<script>
export default {
  name: "EnrollmentError",
  data() {
    return {
      user: this.$route.query,
      emailBody: ""
    };
  },
  created() {
    this.emailBody = `NetID: ${this.user.netid} \n
Email: ${this.user.email} \n
Graduation: ${this.user.grad} \n
Source: ${this.user.how || "N/A"}`;
    this.emailBody = encodeURIComponent(this.emailBody);
  }
};
</script>

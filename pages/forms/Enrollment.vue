<template>
  <div>
    <div class="container">
      <h2 class="py-3">Online Enrollment</h2>
      <form v-on:submit.prevent="submit" ref="recaptcha">
        <div class="row">
          <div class="form-group col">
            <label for="firstName">First Name</label>
            <input class="form-control" id="firstName" placeholder="Enter first name" v-model="first_name" required>
          </div>
          <div class="form-group col">
            <label for="lastName">Last Name</label>
            <input class="form-control" id="lastName" placeholder="Enter last name" v-model="last_name" required>
          </div>
          <div class="form-group col">
            <label for="graduation">Graduation</label>
            <input class="form-control" id="graduation" placeholder="Enter Month YYYY" v-model="graduation">
          </div>
        </div>
        <div class="form-group">
          <div class="g-recaptcha" data-sitekey="6Lf63mgUAAAAAGTys36dAaksgtKe7rgU5XiwBgxF"></div>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
      </form>
    </div>
  </div>
</template>

<script>
  export default {
    name: "Enrollment",
    data() {
      return {
        first_name: '',
        last_name: '' 
      };
    },
    methods: {
      submit: function() {
        this.$store
          .dispatch("onlineEnrollment", {
            first_name: this.first_name,
            last_name: this.last_name
          })
          .then(data => {
            this.$refs.recaptcha.reset();
          });
      }
    }
  };
</script>

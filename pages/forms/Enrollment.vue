<template>
  <div>
    <div class="container">
      <h2 class="py-3">Online Enrollment</h2>
      <form v-on:submit.prevent="submitApplication" ref="recaptcha">
        <div class="row">
    <div class="form-group col-lg-4 col-xs-12">
        <label for="lastName">Student's NetID</label>
        <input class="form-control" id="netID" placeholder="Enter NetID" v-model="formData.netid" aria-describedby="netIdHelp" required>
        <small id="netIdHelp" class="form-text text-muted">NetID Example: johndoe94</small>
    </div>
    <div class="form-group col-lg-4 col-xs-12">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="inputEmail1" aria-describedby="emailHelp" placeholder="Enter email" v-model="formData.email" required>
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
          <div class="form-group col-lg-4 col-xs-12">
            <label for="graduation">Graduation</label>
            <input class="form-control" id="graduation" placeholder="Month YYYY" v-model="formData.planned_grad">
          </div>
        </div>
                  <div class="form-group">
            <label for="graduation">How did you hear about the BYU Honors Program?</label>
            <input class="form-control" id="graduation" placeholder="Enter answer" v-model="formData.source">
          </div>
        <div class="form-group">
          <div class="g-recaptcha" data-sitekey="6Lf63mgUAAAAAGTys36dAaksgtKe7rgU5XiwBgxF"></div>
            <small class="text-muted">If the reCaptcha did not load, click "Reset" or reload the page before submitting and start over.</small>

        </div>
        <button type="submit" class="btn btn-honors mr-2">Submit</button>
        <button class="btn btn-secondary rounded-0" v-on:click.prevent="resetForm">Reset</button>

      </form>
    </div>
  </div>
</template>

<script>
import axios from "axios";
export default {
  name: "Enrollment",
  data() {
    return {
      captchaPassed: false,
      formData: {
        netid: "",
        email: "",
        planned_grad: "",
        source: ""
      }
    };
  },
  methods: {
    verifyCaptcha: async function() {
      let captcha = document.querySelector("#g-recaptcha-response").value;
      let response = await axios.post("/api/captcha", { captcha: captcha });
      if (
        response.data.success === undefined ||
        response.data.success === false
      ) {
        this.captchaPassed = response.data.success;
        return alert(response.data.msg);
      }
      return (this.captchaPassed = response.data.success);
    },
    submitApplication: async function() {
      await this.verifyCaptcha();
      if (this.captchaPassed) {
         this.sendMail()
          return this.$router.push(
              `/forms/enrollment-confirmation?
          netid=${this.formData.netid}
          &email=${this.formData.email}
          &grad=${this.formData.planned_grad}`
            );
      }
    },
    sendMail: function() {
      this.$store.dispatch("sendMailNotification", {
        confirmation: {
          to: this.formData.email,
          from: "honors@byu.edu",
          subject: "Welcome to the Honors Program!",
          text: "Welcome to the BYU Honors Program",
          html: `this is a test with your info ${this.formData.netid}, ${this.formData.email}, ${this.formData.planned_grad}, and ${this.formData.source}`,
          templateId: "122380f8-cd2e-45bc-a5cf-b73161e4a58d"
        },
        notification: {
          to: "honors@byu.edu",
          from: this.formData.email,
          subject: `${this.formData.netid} enrolled to the Honors Program!`,
          text: "New enrollment application",
          html: `this is a test with your info ${this.formData.netid}, ${this.formData.email}, ${this.formData.planned_grad}, and ${this.formData.source}`,
          templateId: "122380f8-cd2e-45bc-a5cf-b73161e4a58d",
        }
      });
    },
    resetForm: function() {
      this.$router.go("/forms/enrollment");
    }
  }
};
</script>

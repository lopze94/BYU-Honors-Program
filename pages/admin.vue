<template>
  <div class="container">
    <h1 class="py-5">Admin Login</h1>
    <b-form @submit="onSubmit" @reset="onReset" v-if="show">
        <b-form-group id="name"
                    label="Name:"
                    label-for="name">
        <b-form-input id="namein"
                      type="name"
                      v-model="form.name"
                      required
                      placeholder="Enter admin name">
        </b-form-input>
      </b-form-group>
      <b-form-group id="adminEmail"
                    label="Email address:"
                    label-for="adminEmail"
                    description="">
        <b-form-input id="emailin"
                      type="email"
                      v-model="form.email"
                      required
                      placeholder="Enter admin email">
        </b-form-input>
      </b-form-group>
      <b-form-group id="password"
                    label="Admin Password:"
                    label-for="password">
        <b-form-input id="passwordin"
                      type="password"
                      v-model="form.password"
                      required
                      placeholder="Admin Password">
        </b-form-input>
      </b-form-group>
      <b-button type="submit" variant="primary" class="mr-2">Submit</b-button>
      <b-button type="reset" variant="danger">Reset</b-button>
    </b-form>
  </div>
</template>

<script>
export default {
  data () {
    return {
      form: {
        email: '',
        password: '',
      },
      show: true
    }
  },
  methods: {
    onSubmit (evt) {
      evt.preventDefault();
      alert(JSON.stringify(this.form));
    },
    onReset (evt) {
      evt.preventDefault();
      /* Reset our form values */
      this.form.email = '';
      this.form.name = '';
      /* Trick to reset/clear native browser form validation state */
      this.show = false;
      this.$nextTick(() => { this.show = true });
    }
  }
}
</script>


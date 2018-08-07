<template>
    <div>
        <div class="container">
            <h2 class="py-3">Online Enrollment</h2>
            <form v-on:submit.prevent="submit" ref="recaptcha">
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
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
    data () {
      return {
        name: 'Josue'
      }
    },
    methods: {
      submit: function() {
        this.$store.dispatch('onlineEnrollment',{
	        name: this.name,
       }).then(data => {
         this.$refs.recaptcha.reset();
       });
      },
  }
}
</script>

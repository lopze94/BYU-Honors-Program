<template>
  <a href="https://commerce.cashnet.com/webhnr" id="banner">
    <div class="bg-img py-4">
      <div class="container">
        <div class="row row align-items-center">
          <div class="col-md-6 text-center text-md-left">
            <h4 class="text-white">Register for the Honors Conference here!</h4>
          </div>
          <div class="col-md-6 text-center text-md-right">
            <img src="/img/check.gif" alt="apply now" width="40px">
          </div>
        </div>
      </div>
    </div>
  </a>
</template>

<script>
export default {
  name: "ConferenceBanner"
};
</script>

<style scoped>
a {
  text-decoration: none;
}
.bg-img {
  background-color: #41ad49;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  transition-property: opacity;
  transition-duration: 1s;
  -webkit-transition-property:opacity;
  -webkit-transition-duration: 1s;

  opacity: 1;
  transform: scale(1.5%, 1.5);
}
.bg-img:hover {
  opacity: 0.8;
  cursor: pointer;
}
.container:hover {
  cursor: pointer;
}
</style>
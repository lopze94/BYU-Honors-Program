<template>
  <div>
      <byu-header home-url="/" id="gototop">
    <span slot="site-title">Honors Program</span>
    <byu-menu slot="nav" collapsed>
        <router-link to="/prospectivestudents">Prospective Students</router-link>
        <router-link to="/currentstudents">Current Students</router-link>
        <router-link to="/faculty">Faculty</router-link>
        <router-link to="/about">About</router-link>
    </byu-menu>
</byu-header>
  </div>
</template>

<script>
export default {
  name: "SiteHeader"

};
</script>
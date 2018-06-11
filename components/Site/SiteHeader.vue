<template>
  <div>
      <byu-header home-url="/">
    <span slot="site-title">Honors Program</span>
    <span slot="site-title" class="subtitle">Undergraduate Education</span>
    <!--byu-search slot="search" action="https://www.google.com/#q=$1" method="get" placeholder="Search"></byu-search>
    <byu-user-info slot="user">
        <a slot="login" href="#login">Sign In</a>
        <a slot="logout" href="#logout">Sign Out</a>
    </byu-user-info-->
    <byu-menu slot="nav" collapsed>
        <router-link to="/prospectivestudents">Prospective Students</router-link>
        <!--router-link to="/experience">Experience</router-link-->
        <router-link to="/currentstudents">Current Students</router-link>
        <router-link to="/faculty">Faculty</router-link>
        <router-link to="/alumni">Alumni</router-link>
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
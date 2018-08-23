<template>
  <div>
    <!--Main Hero and Nav-->
    <main-hero></main-hero>
    <navigation :navigation="navigation"></navigation>
    <!--Faculty Participation-->
    <participate></participate>
    <!--Faculty Spotlight-->
    <spotlight v-bind:category="2" id="spotlight" class="jumptarget"></spotlight>
    <!--Unexpected Connections-->
    <unexpected-connections></unexpected-connections>
    <!--Faculty Resources-->
    <faculty-resources></faculty-resources>
    <!--Faculty Directory-->
    <faculty-directory></faculty-directory>
  </div>
</template>

<script>
  import MainHero from "../../components/faculty/main.vue";
  import FacultyDirectory from "../../components/faculty/directory.vue";
  import Participate from "../../components/faculty/participate.vue";
  import FacultyResources from "../../components/faculty/resources.vue";
  import UnexpectedConnections from "../../components/faculty/unexpectedconnections.vue";
  
  export default {
    name: "Faculty",
    components: {
      MainHero,
      FacultyDirectory,
      Participate,
      FacultyResources,
      UnexpectedConnections
    },
    data() {
      return {
        navigation: [{
            href: '#spotlight',
            text: 'Spotlight'
          },
          {
            href: '#participate',
            text: 'Participate'
          },
          {
            href: '#resources',
            text: 'Resources'
          },
          {
            href: '#directory',
            text: 'Directory'
          }
        ]
      }
    },
    head() {
      return {
        title: "BYU Honors Program | Faculty",
        meta: [{
          hid: "description",
          name: "description",
          content: "About our company Nuxt.js"
        }]
      };
    }
  };
</script>
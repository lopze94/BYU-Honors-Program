<template>
<div>
  <byu-hero-banner id="hero" v-bind:image-source="hero.image_path" class="dark-image full-screen transparent-overlay">
    <span slot="headline">{{hero.title | decodeTitle}}</span>
    <span slot="intro-text">
      <div class="bg-white py-1 mb-3" v-if="this.id"></div>
      <div class="h6" v-if="this.id">
       by {{hero.author}} | {{hero.created | formatDate}}
      </div>
      <div v-if="!this.id">
      {{hero.description}}
      </div>
      </span>
    <a slot="read-more" v-bind:href="hero.link" class="h5" v-if="!id">{{hero.link_text}}</a>
</byu-hero-banner>
</div>
</template>

<script>
var moment = require("moment");
export default {
  name: "Mission",
  props: ["hero"],
  data() {
    return {
      id: this.$route.params.id
    };
  },
  filters: {
    formatDate: function(dateInput) {
      return moment(dateInput).format("MMMM DD, YYYY");
    },
    decodeTitle: function(title) {
      return decodeURIComponent(title);
    }
  }
};
</script>

<template>
    <div>
          <h1 class="d-none">Prospective Students</h1>
    <byu-hero-banner id="hero" image-source="/img/prospective/main_hero.jpg" class="dark-image full-screen transparent-overlay">
    <span slot="headline">Experience Honors</span>
    <span slot="intro-text">Learn about the BYU Honors Program, read student experiences, check the requirements, and more.</span>
    <a slot="read-more" @click="showModal" class="a-link">Watch Video</a>
</byu-hero-banner>
    <b-modal ref="prospectiveModal" centered hide-footer hide-header title="Our Mission" size="lg" @hidden="onHidden">
      <div class="videoContainer">
      <iframe v-bind:src="this.video_source" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen class="video"></iframe>
      </div>
    </b-modal>
    </div>
</template>

<script>
export default {
    name: 'Main',
      data (){
    return {
      video_source: "",
    }
  },
  methods: {
    showModal () {
      this.$refs.prospectiveModal.show();
      this.video_source = "https://www.youtube.com/embed/mNXvUGded7U"
    },
    onHidden () {
      this.video_source = ""
    }
  }
}
</script>

<style>
.videoContainer {
    position: relative;
    width: 100%;
    height: 0;
    padding-bottom: 56.25%;
}
.video {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
}

.a-link {
  font-size: 20px !important;
}
</style>

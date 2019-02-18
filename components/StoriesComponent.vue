<template>
  <div>
    <!--hero v-bind:hero="stories[0]" v-if="stories[0]"></hero-->
  
    <byu-hero-banner id="hero" v-bind:image-source="stories[0].image_path" class="dark-image full-screen transparent-overlay" v-if="stories[0]">
      <span slot="headline">Make Unexpected Connections</span>
      <span slot="intro-text">
                      {{stories[0].title}}
                      </span>
      <a slot="read-more" v-bind:href="stories[0].link" class="h5">{{stories[0].link_text}}</a>
    </byu-hero-banner>
  
    <div class="container pt-3">
      <h2 class="py-3">Experience Honors</h2>
    </div>
  
    <div class="container pt-4">
      <div class="card-deck">
        <a v-for="(story, index) in featuredstories" :key="index" class="card border-0 mx-2 rounded-0" v-bind:href="story.link" v-if="story.category!=4">
          <div class="card-header bg-honors text-white text-uppercase rounded-0" style="font-size: 14px;">
            {{story.category | replaceCategory}}
          </div>
          <img class="card-img rounded-0" v-bind:src="story.image_path" v-bind:alt="story.subtitle">
          <div class="card-body">
            <h5 class="card-title">{{story.title}}</h5>
            <p class="card-text overflow-text">{{story.description}}</p>
          </div>
          <div class="card-footer border-0 bg-transparent">
            <small class="text-muted">{{story.created | formatDate}}</small>
          </div>
        </a>
      </div>
      <div class="text-muted text-right mt-3">
        <router-link to="/stories" class="text-muted">See all stories</router-link>
      </div>
    </div>
  </div>
</template>

<script>
  var moment = require('moment');
  import ConferenceBanner from '../components/Site/conferenceBanner.vue'

  import axios from 'axios';
  
  export default {
    name: 'StoriesComponent',
    data() {
      return {
        featuredstories: []
      }
    },
    components: {
 ConferenceBanner
    },
    created: function() {
      this.$store.dispatch('getStories');
      this.getFeaturedStories();
    },
    computed: {
      stories: function() {
        return this.$store.getters.stories;
      }
    },
    filters: {
      formatDate: function(dateInput) {
        return moment(dateInput).format('MMMM DD, YYYY');
      },
      replaceCategory: function(catNum) {
        let catString = '';
        switch (catNum) {
          case 0:
            catString = 'Academic Excellence';
            break;
          case 1:
            catString = 'Community of Scholars';
            break;
          case 2:
            catString = 'Interdisciplinary Thinking';
            break;
          case 3:
            catString = 'Skills of Inquiry';
            break;
        };
        return catString;
      }
    },
    methods: {
      getFeaturedStories: function() {
        axios.get("/api/featuredstories").then(response => {
          this.featuredstories = response.data.stories;
        }).catch(err => {
          console.log("getFeaturedStories failed:", err);
        });
      }
    }
  }
</script>

<style scoped>
  a {
    color: inherit;
    text-decoration: none;
  }
  
  a:hover {
    text-decoration: none;
    cursor: pointer;
    color: #0057B8;
  }
  
  .overflow-text {
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    /* fallback */
    max-height: 48px;
    /* fallback */
    -webkit-line-clamp: 2;
    /* number of lines to show */
    -webkit-box-orient: vertical;
  }
  
  .card {
    box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.10);
  }
  
  .card:hover {
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  }
  
  .bg-honors {
    background: #002E5D;
  }
</style>

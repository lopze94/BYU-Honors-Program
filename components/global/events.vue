<template>
    <div class="container jumptarget mb-3" id="events" ssr-only>
        <h2 class="py-3">Upcoming Events</h2>


<div class="card-deck mb-4">
<a class="card border-0 rounded-0 shadow mx-2" v-for="(event, i) in currentEvents" :key="i" v-if="currentEvents[0]" :href="event.FullUrl" target="_blank">

    <img class="card-img-top rounded-0" :src="event.ImgUrl" :alt="event.ImgAlt">
    <div class="card-body">
      <h5 class="card-title">{{event.Title}}</h5>
      <p class="card-text overflow-text">
        {{event.Description}}
      </p>
    </div>
          <div class="card-footer bg-honors border-0 rounded-0">
          <p class="card-text text-white h5 text-center">
            {{event.StartDateTime | formatDate}}
            <br>{{event.StartDateTime | formatTime}}
          </p>
      </div>
</a>
</div>

    <div class="container text-muted text-right mt-3">
        <a class="text-muted" href="https://calendar.byu.edu/tags/byu-honors-program">See all events</a>
    </div>
    </div>
</template>

<script>
import axios from "axios";
import moment from "moment";
export default {
  name: "Events",
  data() {
    return {
      calendar: []
    };
  },
  created() {
    this.getCalendar();
  },
  filters: {
    formatDate: function(date) {
      return moment(date).format("MMMM DD");
    },
    formatTime: function(time) {
      return moment(time).format("LT");
    },
    formatDay: function(day) {
      return moment(day).format("dddd");
    }
  },
  computed: {
    currentEvents: function() {
      let events = [];
      for (let index = 0; index < 4; index++) {
        if (this.calendar[index]) events.push(this.calendar[index]);
      }
      return events;
    }
  },
  methods: {
    getCalendar: function() {
      let today = moment(new Date()).format("YYYY-MM-DD");
      let temp = new Date();
      temp.setDate(temp.getDate() + 40);
      let max = moment(temp).format("YYYY-MM-DD");
      axios
        .get(
          `https://calendar.byu.edu/api/Events.json?event[min][date]=${today}&event[max][date]=${max}&categories=1100`
        )
        .then(response => {
          this.calendar = response.data;
        })
        .catch(error => {
          console.log("getCalendar Failed: " + error);
        });
    }
  }
};
</script>

<style scoped>
a {
  text-decoration: none;
  color: black;
}
a.shadow:hover {
  color: #0057b8;
  cursor: pointer;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19) !important;
}

.bg-honors {
  background: #002e5d;
}

.overflow-text {
  overflow: hidden;
  text-overflow: ellipsis;
  display: -webkit-box;
  /* fallback */
  max-height: 72px;
  /* fallback */
  -webkit-line-clamp: 3;
  /* number of lines to show */
  -webkit-box-orient: vertical;
}

.card-img-top{
    height: 250px;
    object-fit: cover;
}
</style>
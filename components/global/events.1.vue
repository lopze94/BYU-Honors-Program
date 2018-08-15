<template>
    <div class="container jumptarget" id="events">
        <h2 class="py-3">Upcoming Events</h2>
        <div v-for="(event, index) in events.slice(0,3)" class="card mx-sm-5 my-2 border-0" :key="index" v-on:click="showToggle(event)" v-bind:title="'Show more about '+ event.first_name+' '+event.last_name">
            <div class="">
    
                <div class="row">
                    <div class="col-sm-12 col-md-4 col-lg-2">
                        <img class="card-img-top px-5 px-sm-2 py-2" v-bind:src="event.ImgUrl" :alt="event.ImgAlt">
                    </div>
                    <div class="col-md-8 col-lg-10 py-3 px-5">
                        <h5 class="card-title">{{event.Title}}</h5>
                        <h6 class="card-subtitle mb-2 text-muted font-weight-normal">{{event.StartDateTime | formatDate}}
                            <span v-if="dayEvent(event.AllDay)"> | All Day</span>
                            <span v-else> | {{event.StartDateTime | formatTime}} - {{event.EndDateTime | formatTime}}</span>
                            <span> | {{event.LocationName}}</span>
                        </h6>
    
                        <p class="card-text overflow-text" v-html="event.Description">{{event.Description}}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    import axios from 'axios'
    var moment = require('moment');
    
    export default {
        name: 'Events',
        data() {
            return {
                events: []
            }
        },
        filters: {
            formatDate: function(dateInput) {
                return moment(dateInput).format('MMMM DD');
            },
            formatTime: function(dateInput) {
                return moment(dateInput).format('h:mma');
            }
        },
        created() {
            this.getEvents();
        },
        methods: {
            getEvents: function() {
                let today = moment(new Date()).format('YYYY-MM-DD');
                let temp = new Date();
                temp.setDate(temp.getDate() + 25);
                let max = moment(temp).format('YYYY-MM-DD');
                axios.get("https://calendar.byu.edu/api/Events.json?categories=9+10+7+49&event[min][date]=" + today + "&event[max][date]=" + max)
                    .then((response) => {
                        this.events = response.data;
                    }, (error) => {
                        this.loading = false;
                    })
            },
            dayEvent: function(allDay) {
                let allDayEvent = ''
                switch (allDay) {
                    case "false":
                        allDayEvent = false;
                        break;
                    case "true":
                        allDayEvent = true;
                        break;
                }
                return allDayEvent
            }
        }
    }
</script>

<style scoped>
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
        cursor: pointer;
    }
</style>



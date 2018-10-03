<template>
    <div class="container">
        <h2 class="py-3">Request Appointment</h2>
        <p>Fill out the form below to request an appointment. We will notify you once your appointment is confirmed.</p>
        <form v-on:submit.prevent="verifyCaptcha" class="pb-4">
            <div class="row">
    <div class="form-group col-md-4">
        <label for="firstName">First Name</label>
        <input class="form-control" id="firstName" placeholder="Enter first name" v-model="first_name" required>
    </div>

    <div class="form-group col-md-4">
        <label for="lastName">Last Name</label>
        <input class="form-control" id="lastName" placeholder="Enter last name" v-model="last_name">
    </div>
    <div class="form-group col-md-4">
        <label for="lastName">Student's NetID</label>
        <input class="form-control" id="lastName" placeholder="Enter NetID" v-model="netId" aria-describedby="netIdHelp" required>
        <small id="netIdHelp" class="form-text text-muted">NetID Example: johndoe94</small>
    </div>
</div>
<div class="row">
    <div class="form-group col-md-6">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" v-model="email" required>
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
      <div class="form-group col-md-6">
    <label for="controlSelectforTime">What can we help you with?</label>
    <select class="form-control" v-model="help" aria-describedby="questionHelp">
        <option selected>Choose one...</option>
      <option v-for="(option, i) in helpOptions" :key="i">{{option}}</option>
    </select>
     <small id="questionHelp" class="form-text text-muted">Check the <a href="/about/faq" target="_blank">FAQ page</a> before selecting "General Questions."</small>
  </div>
</div>

  <div class="form-group">
    <label for="exampleInputEmail1">Select a Date</label>
    <br>
    <button v-if="!selected" v-for="date in available_dates" class="btn btn-primary mr-2 my-1 rounded-0" v-on:click.prevent="selectDate(date)" v-bind:key="date.getDate()">{{date | formatDate}}</button>
    <div v-if="selectedDate" class="btn btn-honors mr-2 my-1">{{selectedDate | formatDate}}</div>
    <button v-if="selectedDate" class="btn btn-secondary mr-2 my-1 rounded-0" v-on:click.prevent="unselect">Choose Another Date</button>
  </div>

    <div class="form-group" v-if="showTime">
    <label for="controlSelectforTime">Select a Time</label>
    <select class="form-control col-sm-3" v-model="selectedTime" required>
      <option v-for="(slot, i) in timeSlots" v-bind:value="slot" :key="i">{{slot.text}}</option>
    </select>
  </div>
      <div div class="alert alert-info" role="alert" v-if="selectedTime">Your appointment will be on {{selectedTime.value | formatAppointment}}.</div>
              <div class="form-group">
              
          <div class="g-recaptcha" data-sitekey="6Lf63mgUAAAAAGTys36dAaksgtKe7rgU5XiwBgxF"></div>
            <small class="text-muted">If the reCaptcha did not load, click "Reset" or reload the page before submitting and start over.</small>
        </div>
    <button class="btn btn-honors mr-2" v-if="selectedTime" type="submit">Request Appointment</button>
    <button v-else type="submit" class="btn btn-honors mr-2" disabled>Request Appointment</button>
        <button class="btn btn-secondary rounded-0" v-on:click.prevent="resetForm">Reset</button>
        </form>
    </div>
</template>

<script>
import moment from "moment";
import axios from "axios";
import { log } from "util";

export default {
  name: "ScheduleAppointment",
  head() {
    return {
      title: "BYU Honors Program | Appointments",
      meta: [
        {
          hid: "description",
          name: "description",
          content: "About our company Nuxt.js"
        }
      ]
    };
  },
  data() {
    return {
      captchaPassed: false,
      available_dates: [],
      first_name: "",
      last_name: "",
      netId: "",
      email: "",
      selectedDate: "",
      selected: false,
      timeSlots: [],
      selectedTime: "",
      showTime: false,
      help: "Choose one...",
      helpOptions: [
        "Thesis information",
        "Commitment interview",
        "Honors classes",
        "General questions"
      ]
    };
  },
  created() {
    this.showToday();
  },
  filters: {
    formatDate: function(dateInput) {
      return moment(dateInput).format("ddd, MMMM DD");
    },
    formatHour: function(dateInput) {
      return moment(dateInput).format("LT");
    },
    formatAppointment: function(dateInput) {
      return moment(dateInput).format("dddd, MMMM DD [at] LT");
    }
  },
  methods: {
    confirmationPage: function() {
      let date = moment(this.selectedTime.value).format("MMMM DD, YYYY");
      let time = moment(this.selectedTime.value).format("LT");
      this.$router.push(
        `/scheduleappointment/confirmation?name=${this.first_name}&email=${
          this.email
        }&date=${date}&time=${time}`
      );
    },
    showToday: function() {
      var currentDate = new Date();
      let dates_array = [];
      var i;
      for (i = 0; i < 22; i++) {
        let day = moment(currentDate).format("dddd");
        if (day == "Saturday" || day == "Sunday") {
        } else {
          let newDate = new Date(currentDate);
          dates_array.push(newDate);
        }
        currentDate.setDate(currentDate.getDate() + 1);
      }
      this.available_dates = dates_array;
    },
    setTimeSlots: function(date) {
      let tempDate = new Date(date);
      tempDate.setHours(8);
      tempDate.setMinutes(0);
      tempDate.setSeconds(0);
      tempDate.setMilliseconds(0);
      let halfHour = 30 * 60 * 1000;
      for (let i = 0; i < 18; i++) {
        let newDate = new Date(tempDate);
        let formatedHours = moment(newDate).format("LT");
        this.timeSlots.push({ value: newDate, text: formatedHours });
        tempDate.setTime(tempDate.getTime() + halfHour);
      }
    },
    selectDate: function(date) {
      this.selected = true;
      this.setTimeSlots(date);
      this.showTime = true;
      this.selectedDate = date;
    },
    unselect: function() {
      this.selectedDate = "";
      this.selectedTime = "";
      this.showTime = false;
      this.timeSlots = [];
      this.selected = false;
    },
    escapeHTML: function(unsafe) {
      return unsafe
        .replace(/&/g, "&amp;")
        .replace(/</g, "&lt;")
        .replace(/>/g, "&gt;")
        .replace(/"/g, "&quot;")
        .replace(/'/g, "&#039;");
    },
    verifyCaptcha: async function() {
      let captcha = document.querySelector("#g-recaptcha-response").value;
      let response = await axios.post("/api/captcha", { captcha: captcha });
      if (
        response.data.success === undefined ||
        response.data.success === false
      ) {
        this.captchaPassed = response.data.success;
        return alert(response.data.msg);
      }
      this.captchaPassed = response.data.success;
      this.first_name = this.escapeHTML(this.first_name);
      this.last_name = this.escapeHTML(this.last_name);
      this.netId = this.escapeHTML(this.netId);
      this.email = this.escapeHTML(this.email);
      this.sendMail();
      this.confirmationPage();
    },
    sendMail: function() {
      let full_name = this.first_name + " " + this.last_name;
      let formatedDate = moment(this.selectedTime.value).format(
        "dddd, MMMM DD, YYYY [at] LT"
      );
      this.$store.dispatch("sendMailNotification", {
        confirmation: {
          to: this.email,
          from: "honors@byu.edu",
          subject: this.first_name + ", this is your appointment request.",
          text: "Appointment Request",
          html:
            "You requested an appointment for <strong>" +
            moment(this.selectedTime.value).format(
              "dddd, MMMM DD, YYYY [at] LT"
            ) +
            "</strong>. We will let you know if we have a conflict with your appointment as soon as possible.",
          templateId: "122380f8-cd2e-45bc-a5cf-b73161e4a58d",
          substitutions: {
            name: this.first_name,
            help: this.help
          }
        },
        notification: {
          to: "honors@byu.edu",
          from: this.email,
          subject: full_name + " requested a new appointment!",
          text: "Appointment confirmation",
          html:
            "<p>Appointment is on " +
            moment(this.selectedTime.value).format(
              "dddd, MMMM DD, YYYY [at] LT"
            ) +
            ".</p>" +
            "<br><br><b>Full Name</b>: " +
            full_name +
            "<br><b>NetID</b>: " +
            this.netId +
            "<br><b>Email</b>: " +
            this.email +
            "<br><b>Help</b>: " +
            this.help,
          templateId: "122380f8-cd2e-45bc-a5cf-b73161e4a58d",
          substitutions: {
            name: this.first_name,
            help: this.help
          }
        }
      });
    },
    resetForm: function() {
      this.$router.go("/scheduleappointment");
    }
  }
};
</script>

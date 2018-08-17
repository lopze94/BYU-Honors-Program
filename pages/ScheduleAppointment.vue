<template>
    <div class="container">
        <h2 class="py-3">Schedule Appointment</h2>
        <form v-on:submit.prevent="sendMail" class="pb-4">
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
    <button v-if="!selected" v-for="date in available_dates" class="btn btn-info mr-2 my-1" v-on:click.prevent="selectDate(date)" v-bind:key="date.getDate()">{{date | formatDate}}</button>
    <div v-if="selectedDate" class="btn btn-success mr-2 my-1">{{selectedDate | formatDate}}</div>
    <button v-if="selectedDate" class="btn btn-secondary mr-2 my-1" v-on:click.prevent="unselect">Choose Another Date</button>
  </div>

    <div class="form-group" v-if="showTime">
    <label for="controlSelectforTime">Select a Time</label>
    <select class="form-control col-sm-3" v-model="selectedTime" required>
      <option v-for="(slot, i) in timeSlots" v-bind:value="slot" :key="i">{{slot.text}}</option>
    </select>
  </div>
      <div div class="alert alert-info" role="alert" v-if="selectedTime">Your appointment will be on {{selectedTime.value | formatAppointment}}.</div>
    <button class="btn btn-primary mr-2" v-if="selectedTime" type="submit">Schedule Appointment</button>
    <button v-else type="submit" class="btn btn-primary mr-2" disabled>Schedule Appointment</button>
        <button class="btn btn-secondary" v-on:click.prevent="resetForm">Reset</button>
        </form>

    </div>
</template>

<script>
import moment from 'moment'


export default {
    name: 'ScheduleAppointment',
    data () {
        return {
            available_dates: [],
            first_name: '',
            last_name: '',
            netId: '',
            email: '',
            selectedDate: '',
            selected: false,
            timeSlots: [],
            selectedTime: '',
            showTime: false,
            help: 'Choose one...',
            helpOptions: [
                'Thesis information',
                'Commitment interview',
                'Honors classes',
                'General questions'
            ]
        }
    },
    created () {
        this.showToday();
    },
    filters: {
        formatDate: function(dateInput) {
        return moment(dateInput).format('ddd, MMMM DD');
    },
    formatHour: function(dateInput) {
        return moment(dateInput).format('LT');
    },
        formatAppointment: function(dateInput) {
        return moment(dateInput).format('dddd, MMMM DD [at] LT');
    }
    },
    methods: {
        showToday: function(){
            var currentDate = new Date();
            let dates_array = [];
            var i;
            for (i = 0; i < 22; i++) { 
            let day = moment(currentDate).format('dddd');
            if (day == 'Saturday' || day == 'Sunday'){
                
            }
            else{
                let newDate = new Date(currentDate);
                dates_array.push(newDate);
            }
            currentDate.setDate(currentDate.getDate() + 1);

            
            }
            this.available_dates = dates_array;
            
        },
        setTimeSlots: function (date){
            let tempDate = new Date(date);
            tempDate.setHours(8);
            tempDate.setMinutes(0);
            tempDate.setSeconds(0);
            tempDate.setMilliseconds(0);
            let halfHour = 30 * 60 * 1000;
            for (let i = 0; i < 18; i++) {
                let newDate = new Date(tempDate);
                let formatedHours = moment(newDate).format('LT');
                this.timeSlots.push({value: newDate, text: formatedHours});
                tempDate.setTime(tempDate.getTime() + halfHour);
            }

        },
        selectDate: function (date){
            this.selected = true;
            this.setTimeSlots(date);
            this.showTime = true;
            this.selectedDate = date;
        },
        unselect: function (){
            this.selectedDate = '';
            this.selectedTime = '';
            this.showTime = false;
            this.timeSlots = [];
            this.selected = false;
        },
        sendMail: function() {
            let full_name = this.first_name + " " + this.last_name;
            let formatedDate = moment(this.selectedTime.value).format('dddd, MMMM DD, YYYY [at] LT');
       this.$store.dispatch('sendMailNotification',{
        confirmation: {
            to: this.email,
            from: 'honors@byu.edu',
            subject: this.first_name + ', this is your appointment confirmation.',
            text: 'Appointment confirmation',
            html: 'Remember, your appointment is on <strong>'+ moment(this.selectedTime.value).format('dddd, MMMM DD, YYYY [at] LT') + '</strong>.',
            templateId: '122380f8-cd2e-45bc-a5cf-b73161e4a58d',
            substitutions: {
                name: this.first_name,
                help: this.help
                }
            },
        notification: {
            to: [this.email],
            from: 'honors@byu.edu',
            subject: this.first_name + ' scheduled a new apppointment',
            text: full_name + ' scheduled an appointment! Here\'s the information: \n',
            html: 'Date of the appointment is on <strong style="color:#0057B8;">'+ formatedDate +'</strong>'+
            '<table style=\"width:100%\"><tr><th>Name</th><th>NetID</th><th>Email</th></tr>' + 
            '  <tr><td>'+full_name+'</td> <td>'+this.netId+'</td><td>'+this.email+'</td></tr></table>',
            templateId: '122380f8-cd2e-45bc-a5cf-b73161e4a58d',
            substitutions: {
                name: full_name,
                help: this.help,
                date: formatedDate
                }
            },
        })
        },  
        resetForm: function(){
            this.first_name = '';
            this.last_name = '';
            this.netId = '';
            this.email = '';
           this.selectedDate = '';
            this.selected = false;
            this.timeSlots = [];
            this.selectedTime = '';
            this.showTime = false;
            this.help = 'Choose one...';
        }
    }
}
</script>

<template>
    <div class="container">
        <h2 class="py-3">Appointment Scheduler</h2>
        <form v-on:submit.prevent="sendMail">
            <div class="row">
                <div class="form-group col">
        <label for="firstName">First Name</label>
        <input class="form-control" id="firstName" placeholder="Enter first name" v-model="first_name" required>
    </div>

    <div class="form-group col">
        <label for="lastName">Last Name</label>
        <input class="form-control" id="lastName" placeholder="Enter last name" v-model="last_name" required>
    </div>

</div>
              <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" v-model="email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Select a Date</label>
    <br>
    <div v-if="!selected" v-for="date in available_dates" class="btn btn-outline-primary mr-2 my-1" v-on:click="selectDate(date)">{{date | formatDate}}</div>
    <div v-if="selectedDate" class="btn btn-success mr-2 my-1">{{selectedDate | formatDate}}</div>
    <div v-if="selectedDate" class="btn btn-secondary mr-2 my-1" v-on:click="unselect">Choose Another Date</div>
  </div>
    <button class="btn btn-primary" type="submit">Schedule Appointment</button>
        </form>

    </div>
</template>

<script>
import moment from 'moment'


export default {
    name: 'SendMail',
    data () {
        return {
            available_dates: [],
            first_name: '',
            last_name: '',
            email: '',
            city: 'Guatemala',
            selectedDate: '',
            selected: false
        }
    },
    created () {
        this.showToday();
    },
    filters: {
        formatDate: function(dateInput) {
        return moment(dateInput).format('ddd, MMMM DD');
    }},
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
        selectDate: function (date){
            this.selected = true;
            this.selectedDate = date;
        },
        unselect: function (){
            this.selectedDate = ''
            this.selected = false;
        },
 sendMail: function() {
       this.$store.dispatch('sendMailNotification',{
      msg: {
  to: this.email,
  from: 'honors@byu.edu',
  subject: this.first_name + " " + this.last_name + ' has scheduled an appointment.',
  text: 'and easy to do anywhere, even with Node.js',
  html: 'Remember, <strong>'+ moment(this.selectedDate).format('MMMM DD, YYYY') + '</strong> is your date.',
  templateId: 'a779f412-8ecf-4934-886a-1ff446264ac7',
  substitutions: {
      name: this.first_name + " " + this.last_name,
      city: this.city,
      date: this.selectedDate
  }
}
    })
}
}
}
</script>

<template>
    <div class="container pb-3">
        <h2 class="py-3">Honors Coordinators</h2>
        <p class="d-block d-md-none">Select your Honors Coordinator to reveal their contact information.</p>
        <table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">Department</th>
      <th scope="col">Professor Name</th>
      <th scope="col" class="d-none d-md-table-cell">Phone</th>
      <th scope="col" class="d-none d-md-table-cell">Email</th>
      <th scope="col" class="d-none d-md-table-cell">Office</th>
    </tr>
  </thead>
  <tbody>
    <tr v-for="(item, i) in coordinators" :key="i"  data-toggle="modal" data-target="#exampleModal" @click="setModalData(item)">
      <th scope="row">{{item.department}}</th>
      <td>{{item.first}} {{item.last}}</td>
      <td class="d-none d-md-table-cell">{{item.phone | formatPhone}}</td>
      <td class="d-none d-md-table-cell text-lowercase">{{item.email}}</td>
      <td class="d-none d-md-table-cell">{{item.office}}</td>
    </tr>
  </tbody>
</table>
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">{{modalData.name}}</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <span class="text-primary h6">{{modalData.department}}</span>
          <br>{{modalData.phone | formatPhone}}
          <br>{{modalData.email}}
          <br>{{modalData.office}}
      </div>
    </div>
  </div>
</div>
    </div>
</template>

<script>
import axios from "axios";
export default {
  name: "Coordinators",
  data() {
    return {
      coordinators: [],
      modalData: {
          department: '',
          name: '',
          phone: '',
      }
    };
  },
  created() {
    this.getCoordinators();
  },
  filters: {
    formatPhone: function(phone) {
      let phoneArr = phone.match(/^(\d{3})(\d{3})(\d{4})$/);
      if (phoneArr) {
      let formatted = `(${phoneArr[1]}) ${phoneArr[2]}-${phoneArr[3]}`;

        return formatted;
      }
    }
  },
  methods: {
    getCoordinators: function() {
      axios
        .get("/api/coordinators")
        .then(response => {
          this.coordinators = response.data.coordinators;
        })
        .catch(error => {
          console.log("getCoordinators Failed: " + error);
        });
    },
    setModalData: function (item) {
        this.modalData.name = item.first + " " + item.last;
        this.modalData.department = item.department;
        this.modalData.phone = item.phone
        this.modalData.email = item.email
        this.modalData.office = item.office
    }
  }
};
</script>

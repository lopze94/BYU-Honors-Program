<template>
  <div class="container">
      <h3>Students by College</h3>
    <bar-chart :chart-data="datacollection"
    :options="options"
    :width="350"
  :height="500">
  </bar-chart>
  </div>
</template>

<script>
import BarChart from "./xsBarChart.js";

export default {
  components: {
    BarChart
  },
  data() {
    return {
      datacollection: null,
      options: {
        responsive: true,
        maintainAspectRatio: true,
        legend: {
          display: false
        },
        scales: {
          yAxes: [
            {
              gridLines: {
                display: false,
                color: "rgba(0,0,0,0)"
              },
              ticks: {
                display: false,
                max: 250
              }
            }
          ],
          xAxes: [
            {
              gridLines: {
                display: false
              },
              ticks: {
                maxRotation: 90,
                minRotation: 90
              }
            }
          ]
        }
      }
    };
  },
  mounted() {
    this.fillData();
  },
  methods: {
    fillData() {
      this.datacollection = {
        labels: [
          "Education",
          "Engineering and Technology",
          "Family, Home, and Social Sciences",
          "Fine Arts and Communications",
          "Humanities",
          "International and Area Studies",
          "Life Sciences",
          "Marriott School of Business",
          "Nursing",
          "Physical and Mathematical Sciences",
          "Student Life"
        ],
        datasets: [
          {
            label: "Students by College",
            backgroundColor: [
              "#41ad49",
              "#002e52",
              "#383839",
              "#46587f",
              "#c5ad64",
              "#41ad49",
              "#002e52",
              "#383839",
              "#46587f",
              "#c5ad64",
              "#41ad49"
            ],
            data: [10, 128, 230, 97, 101, 31, 128, 109, 14, 143, 95]
          }
        ]
      };
    }
  }
};
</script>

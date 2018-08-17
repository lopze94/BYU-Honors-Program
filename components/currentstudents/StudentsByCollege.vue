<template>
<div>
  <div class="container">
      <h3>Students by College</h3>
  </div>
  <div class="container pl-sm-0 pl-md-3">
    <bar-chart :chart-data="datacollection"
    :options="options"
    :width="500"
    :height="200"
    >
    </bar-chart>
  </div>
</div>
</template>

<script>
import BarChart from "./BarChart.js";

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
          xAxes: [
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
          yAxes: [
            {
              gridLines: {
                display: false
              }
            }
          ]
        },
        hover: {
          animationDuration: 0
        },
        animation: {
          duration: 1,
          onComplete: function() {
            var chartInstance = this.chart,
              ctx = chartInstance.ctx;

            ctx.font = Chart.helpers.fontString(
              Chart.defaults.global.defaultFontSize,
              Chart.defaults.global.defaultFontStyle,
              Chart.defaults.global.defaultFontFamily
            );
            ctx.textAlign = "left";
            ctx.textBaseline = "middle";

            this.data.datasets.forEach(function(dataset, i) {
              ctx.fillStyle = "#292929";
              var meta = chartInstance.controller.getDatasetMeta(i);
              meta.data.forEach(function(bar, index) {
                var data = dataset.data[index];
                ctx.fillText(data, bar._model.x + 5, bar._model.y);
              });
            });
          }
        },
        tooltips: {
          enabled: false
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

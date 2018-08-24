<template>
    <div class="container" id="timeline">
        <h2 class="py-3">Timeline of Events</h2>
        <p>
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Excepturi animi quos dicta optio voluptas explicabo qui possimus eveniet corrupti dolore laborum repellendus nesciunt, nam deserunt?
        </p>
        <light-timeline :items='items' v-if="show"></light-timeline>

    </div>
</template>

<script>
export default {
  name: "Timeline",
  data() {
    return {
      show: false,
      items: [
        {
          tag: "1st Week of School",
          color: "#0057B8",
          type: "circle",
          content:
            "Establish budget for the program and how much can be allocated per student."
        },
        {
          tag: "2nd Week of School",
          color: "#0057B8",
          type: "circle",
          content:
            "Info session about the program in general - Thursday at 11:00 and 5:00"
        },
        {
          tag: "3rd Week of School",
          color: "#0057B8",
          type: "circle",
          content:
            "Info session with Geeta about the program and any questions the students might have for her- Thursday at 11:00"
        },
        {
          tag: "Dec 1, 2018",
          color: "#dc3545",
          type: "circle",
          content:
            "Final deadline for both applications, BYU and Cambridge, this includes funding, the budget should already be set at this point and they should know how much money they are applying for and the scholarship notification will be given to them by December 15 - want to notify everyone and then we can send the information to the Kennedy Center to help with payments on accounts"
        },
        {
          tag: "2nd Week December",
          color: "#0057B8",
          type: "circle",
          content:
            "Final meeting before end of semester to help everyone pick housing and classes- should we have them all live in the same place? And what band of housing should we require of them?"
        },
        {
          tag: "1st Week of Prep Course ",
          color: "#0057B8",
          type: "circle",
          content:
            "They should have their courses solidified and sent in to us so that we can have the course listings available and ready to go the third week of the prep course"
        }
      ]
    };
  },
  created () {
    this.show = true;
  },
};
</script>
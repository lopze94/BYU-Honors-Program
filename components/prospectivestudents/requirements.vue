<template>
    <div class="container jumptarget" id="requirements">
        <h2 class="py-3">Requirements<span v-if="selected">: {{selected}}</span></h2>
                <p>
            This section provides a brief overview of the requirements to graduate with University Honors. The staff in the Honors Program
            Advisement Center, 102 MSRB, (801) 422-5497, is available on a walk-in basis to answer questions about the program.
            </p>
            <p>
            To graduate with University Honors, a student must be an admitted daytime student who attains a 3.0 or higher GPA
            and completes all of the requirements below:
        </p>
        <courses v-if="courses"></courses>
        <leadership v-if="leadership"></leadership>
        <thesis v-if="thesis"></thesis>
        <div v-if="!(courses||leadership||thesis)">
        </div>
            <div class="card-deck mb-3" v-if="!(courses||leadership||thesis)">
                <div class="card border-0 rounded-0" v-on:click="selectCard(0)">
                    <img class="card-img-top rounded-0" src="/img/global/courses-card.jpg" alt="Honors Courses">
                    <div class="card-img-overlay text-white">
                        <table style="height: 100%;width: 100%;">
                            <tbody>
                                <tr>
                                    <td class="align-middle h5 text-center text-uppercase">Courses</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="card border-0 rounded-0" v-on:click="selectCard(1)">
                    <img class="card-img-top rounded-0" src="/img/global/leadership.jpg" alt="Be a Leader">
                    <div class="card-img-overlay text-white">
                        <table style="height: 100%;width: 100%;">
                            <tbody>
                                <tr>
                                    <td class="align-middle h5 text-center text-uppercase">Leadership</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="card border-0 rounded-0" v-on:click="selectCard(2)">
                    <img class="card-img-top rounded-0" src="/img/global/thesis.jpg" alt="Defend your thesis">
                    <div class="card-img-overlay text-white">
                        <table style="height: 100%;width: 100%;">
                            <tbody>
                                <tr>
                                    <td class="align-middle h5 text-center text-uppercase">Thesis</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        <nav class="nav nav-pills nav-justified" v-if="courses||leadership||thesis">
            <div class="col-sm-6 col-lg-3">
                <a class="nav-item nav-link rounded-0" :class="{active: courses}"  v-on:click="selectCard(0)">Courses</a>
            </div>
            <div class="col-sm-6 col-lg-3">
                <a class="nav-item nav-link rounded-0" :class="{active: leadership}"  v-on:click="selectCard(1)">Leadership</a>
            </div>
            <div class="col-sm-6 col-lg-3">
                <a class="nav-item nav-link rounded-0" :class="{active: thesis}"  v-on:click="selectCard(2)">Thesis</a>
            </div>
            <div class="col-sm-6 col-lg-3">
                <a class="nav-item nav-link text-muted rounded-0" v-on:click="reset">Return</a>
            </div>
        </nav>
    </div>
</template>

<script>
import Courses from "./requirements/courses.vue"
import Leadership from "./requirements/leadership.vue"
import Thesis from "./requirements/thesis.vue"

export default {
  name: "Requirements",
  components: {
      Courses, Leadership, Thesis
  },
  data() {
  return {
      selected: "",
      courses: false,
      leadership: false,
      thesis: false,
      left: {
        text: "",
        select: ""
      },
      right: {
        text: "",
        select: ""
      }
    };
  },
  methods: {
    selectCard: function(selection) {
      this.reset();
      switch (selection) {
        case 0:
          this.selected = "Courses";
          this.courses = true;
          break;
        case 1:
          this.selected = "Leadership";
          this.leadership = true;
          break;
        case 2:
          this.selected = "Thesis";
          this.thesis = true;
          break;
      }
    },
    reset: function() {
      this.selected = "";
      this.courses = false;
      this.leadership = false;
      this.thesis = false;
    }
  }
};
</script>

<style scoped>
.badge:hover{
    cursor: pointer;
}
.active {
  background: #002e5d !important;
  color: white !important;
}
a.nav-link:hover{
    background: #F2F2F2;
}
a:hover {
  cursor: pointer;
}
.card {
  box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.1);
}

.card:hover {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  cursor: pointer;
}
</style>
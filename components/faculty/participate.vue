<template>
    <div class="container pb-sm-3 pb-lg-4 pb-xl-5 jumptarget" id="participate">
        <h2 class="py-3">Participate<span v-if="selected">: {{selected}}</span></h2>
        <nav class="nav nav-pills nav-justified pb-3" v-if="teach||mentor||share">
            <div class="col-sm-6 col-lg-3">
                <a class="nav-item nav-link rounded-0" :class="{active: teach}"  v-on:click="selectCard(0)">Teach</a>
            </div>
            <div class="col-sm-6 col-lg-3">
                <a class="nav-item nav-link rounded-0" :class="{active: mentor}"  v-on:click="selectCard(1)">Mentor</a>
            </div>
            <div class="col-sm-6 col-lg-3">
                <a class="nav-item nav-link rounded-0" :class="{active: share}"  v-on:click="selectCard(2)">Share</a>
            </div>
            <div class="col-sm-6 col-lg-3">
                <a class="nav-item nav-link text-muted rounded-0" v-on:click="reset">Return</a>
            </div>
        </nav>
        <teach v-if="teach"></teach>
        <mentor v-if="mentor"></mentor>
        <share v-if="share"></share>
        <div v-if="!(teach||mentor||share)">
           <p>
               The Honors Program is the place for faculty to connect! <b>Connect</b> with engaged students to inspire learning in and out of the classroom. <b>Connect</b> with other faculty to foster excellence in teaching and research.  <b>Connect</b> ideas across disciplines to expand thinking.  We invite you to join the Honors Program community and explore the unexpected ways you can <b>connect</b>!
           </p>
        </div>
            <div class="card-deck" v-if="!(teach||mentor||share)">
                <div class="card border-0 rounded-0" v-on:click="selectCard(0)">
                    <img class="card-img-top rounded-0" src="/img/faculty/teach.jpg" alt="Teach in Honors">
                    <div class="card-img-overlay text-white">
                        <table style="height: 100%;width: 100%;">
                            <tbody>
                                <tr>
                                    <td class="align-middle h5 text-center text-uppercase">Teach</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="card border-0 rounded-0" v-on:click="selectCard(1)">
                    <img class="card-img-top rounded-0" src="/img/faculty/mentor.jpg" alt="Mentor in Honors">
                    <div class="card-img-overlay text-white">
                        <table style="height: 100%;width: 100%;">
                            <tbody>
                                <tr>
                                    <td class="align-middle h5 text-center text-uppercase">Mentor</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="card border-0 rounded-0" v-on:click="selectCard(2)">
                    <img class="card-img-top rounded-0" src="/img/faculty/share.jpg" alt="Share in Honors">
                    <div class="card-img-overlay text-white">
                        <table style="height: 100%;width: 100%;">
                            <tbody>
                                <tr>
                                    <td class="align-middle h5 text-center text-uppercase">Share</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        <nav class="nav nav-pills nav-justified" v-if="teach||mentor||share">
            <div class="col-sm-6 col-lg-3">
                <a class="nav-item nav-link rounded-0" :class="{active: teach}"  v-on:click="selectCard(0)">Teach</a>
            </div>
            <div class="col-sm-6 col-lg-3">
                <a class="nav-item nav-link rounded-0" :class="{active: mentor}"  v-on:click="selectCard(1)">Mentor</a>
            </div>
            <div class="col-sm-6 col-lg-3">
                <a class="nav-item nav-link rounded-0" :class="{active: share}"  v-on:click="selectCard(2)">Share</a>
            </div>
            <div class="col-sm-6 col-lg-3">
                <a class="nav-item nav-link text-muted rounded-0" v-on:click="reset">Return</a>
            </div>
        </nav>
    </div>
</template>

<script>
import Teach from "./participate/teach.vue";
import Mentor from "./participate/mentor.vue";
import Share from "./participate/share.vue";

export default {
  name: "HonorsStory",
  components: {
    Teach,
    Mentor,
    Share
  },
  data() {
    return {
      selected: "",
      teach: false,
      mentor: false,
      share: false,
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
          this.selected = "Teach";
          this.teach = true;
          break;
        case 1:
          this.selected = "Mentor";
          this.mentor = true;
          break;
        case 2:
          this.selected = "Share";
          this.share = true;
          break;
      }
    },
    reset: function() {
      this.selected = "";
      this.teach = false;
      this.mentor = false;
      this.share = false;
    }
  }
};
</script>

<style scoped>
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

<template>
    <div class="container" id="mission">
        <h2 class="py-3">Our Mission</h2>
        <p>
            The Honors Program mission is to develop student-scholars from across the university 
            who will become broad thinkers, creative problem solvers, and influential leaders.
        </p>
        <p>
            This mission is achieved by cultivating:
        </p>
        <div class="card-columns" v-bind:class="{threecol: open}">
            <div class="card border-0 my-2" v-on:click="show0=!show0">
                <img class="card-img" src="/img/about/academic_excellence.jpg" alt="Academic Excellence: BYU Student graduating">
                <div class="card-img-overlay text-white" v-if="!show0">
                    <table style="height: 100%; width: 100%;">
                        <tbody>
                            <tr>
                                <td class="align-middle h5 text-center text-uppercase">Academic Excellence</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="card-body" v-if="show0">
                    <h5 class="card-title">Academic Excellence</h5>
                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    <p class="card-text"><small class="text-muted">Academic Excellence Stories</small></p>
                </div>
            </div>
            <div class="card  border-0 my-2" v-on:click="show1=!show1">
                <img class="card-img" src="/img/about/community_of_scholars.jpg" alt="Community of Scholars">
                <div class="card-img-overlay text-white" v-if="!show1">
                    <table style="height: 100%;width: 100%;">
                        <tbody>
                            <tr>
                                <td class="align-middle h5 text-center text-uppercase">Community of Scholars</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="card-body" v-if="show1">
                    <h5 class="card-title">Community of Scholars</h5>
                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    <p class="card-text"><small class="text-muted">Community Stories</small></p>
                </div>
            </div>
            <div class="card border-0 my-2" v-on:click="show2=!show2">
                <img class="card-img" src="/img/about/interdisciplinary_thinking.jpg" alt="Interdisciplinary Thinking">
                <div class="card-img-overlay text-white">
                    <table style="height: 100%;width: 100%;" v-if="!show2">
                        <tbody>
                            <tr>
                                <td class="align-middle h5 text-center text-uppercase">Interdisciplinary Thinking</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="card-body" v-if="show2">
                    <h5 class="card-title">Interdisciplinary Thinking</h5>
                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    <p class="card-text"><small class="text-muted">Interdisciplinary Stories</small></p>
                </div>
            </div>
            <div class="card border-0 my-2" v-on:click="show3=!show3">
                <img class="card-img" src="/img/about/skills_of_inquiry.jpg" alt="Skills of Inquiry">
                <div class="card-img-overlay text-white">
                    <table style="height: 100%;width: 100%;" v-if="!show3">
                        <tbody>
                            <tr>
                                <td class="align-middle h5 text-center text-uppercase">Skills of Inquiry</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="card-body" v-if="show3">
                    <h5 class="card-title">Skill of Inquiry</h5>
                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    <p class="card-text"><small class="text-muted">Inquiry Stories</small></p>
                </div>
            </div>
        </div>
        <div class="text-center">
            <span class="badge badge-primary mr-1" v-on:click="show0=show1=show2=show3=true" v-if="!show0||!show1||!show2||!show3">Expand All</span>
            <span class="badge badge-secondary" v-on:click="show0=show1=show2=show3=false" v-if="show0||show1||show2||show3">Hide All</span>
        </div>
    </div>
</template>

<script>
export default {
  name: "Mission",
  data() {
    return {
      show0: false,
      show1: false,
      show2: false,
      show3: false,
      windowWidth: 0,
    };
  },
  mounted() {
    this.windowWidth = window.innerWidth;
    this.$nextTick(() => {
      window.addEventListener("resize", () => {
        this.windowWidth = window.innerWidth;
      });
    });
  },
  watch: {
    windowWidth(newWidth, oldWidth) {
    }
  },
  computed: {
    count: function() {
      let one = this.show0 ? 1 : 0;
      let two = this.show1 ? 1 : 0;
      let three = this.show2 ? 1 : 0;
      let four = this.show3 ? 1 : 0;
      return one + two + three + four;
    },
    open: function(){
        if (this.windowWidth >= 1200 && (this.count === 1 || this.count ===2)){
            console.log("Big");
            
            return true;
        }
        else {
            return false;
        }
    }
  },
};
</script>

<style scoped>
@media (max-width: 575.98px) {
  .card-columns {
    column-count: 1;
  }
}
@media (min-width: 576px) and (max-width: 1199.98px) {
  .card-columns {
    column-count: 2;
  }
}
@media (min-width: 1200px) {
  .card-columns {
    column-count: 4;
  }
}

.threecol{
    column-count: 3 !important;
}

.card {
  box-shadow: 0 2px 6px 0 rgba(0, 0, 0, 0.2);
}

.card:hover {
  box-shadow: 0 3px 8px 0 rgba(0, 0, 0, 0.4);
  cursor: pointer;
}
</style>

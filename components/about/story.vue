<template>
    <div class="container pb-sm-3 pb-lg-4 pb-xl-5 jumptarget" id="story">
        <h2 class="py-3">Our Story<span v-if="selected">: {{selected}}</span></h2>
        <history v-if="history"></history>
        <karl-maeser v-if="karl"></karl-maeser>
        <robert-thomas v-if="robert"></robert-thomas>
        <div v-if="!(history||karl||robert)">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloremque totam quos placeat asperiores atque distinctio doloribus voluptatem? Perspiciatis aliquam ea labore inventore illo. Nulla, quia dignissimos blanditiis voluptates assumenda quae?</p>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugiat necessitatibus ducimus aspernatur consequuntur, itaque, at maiores neque, et pariatur incidunt sint? Possimus fuga, quia cum quas, illum dolore est itaque ab ducimus reprehenderit
                neque harum labore quos quisquam accusamus illo? Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ratione, at?</p>
        </div>
            <div class="card-deck" v-if="!(history||karl||robert)">
                <div class="card border-0 rounded-0" v-on:click="selectCard(0)">
                    <img class="card-img-top rounded-0" src="/img/about/honors_history.jpg" alt="Honors History">
                    <div class="card-img-overlay text-white">
                        <table style="height: 100%;width: 100%;">
                            <tbody>
                                <tr>
                                    <td class="align-middle h5 text-center text-uppercase">Honors History</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="card border-0 rounded-0" v-on:click="selectCard(1)">
                    <img class="card-img-top rounded-0" src="/img/about/karl_maeser.jpg" alt="Karl G. Maeser">
                    <div class="card-img-overlay text-white">
                        <table style="height: 100%;width: 100%;">
                            <tbody>
                                <tr>
                                    <td class="align-middle h5 text-center text-uppercase">Karl G. Maeser</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="card border-0 rounded-0" v-on:click="selectCard(2)">
                    <img class="card-img-top rounded-0" src="/img/about/robert_thomas.jpg" alt="Robert K. Thomas">
                    <div class="card-img-overlay text-white">
                        <table style="height: 100%;width: 100%;">
                            <tbody>
                                <tr>
                                    <td class="align-middle h5 text-center text-uppercase">Robert K. Thomas</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        <nav class="nav nav-pills nav-justified" v-if="history||karl||robert">
            <div class="col-sm-6 col-lg-3">
                <a class="nav-item nav-link rounded-0" :class="{active: history}"  v-on:click="selectCard(0)">Honors History</a>
            </div>
            <div class="col-sm-6 col-lg-3">
                <a class="nav-item nav-link rounded-0" :class="{active: karl}"  v-on:click="selectCard(1)">Karl G. Maeser</a>
            </div>
            <div class="col-sm-6 col-lg-3">
                <a class="nav-item nav-link rounded-0" :class="{active: robert}" v-on:click="selectCard(2)">Robert K. Thomas</a>
            </div>
            <div class="col-sm-6 col-lg-3">
                <a class="nav-item nav-link text-muted" v-on:click="reset">Return</a>
            </div>
        </nav>
    </div>
</template>

<script>
import History from "./story/history.vue";
import KarlMaeser from "./story/karlmaeser.vue";
import RobertThomas from "./story/robertthomas.vue";

export default {
  name: "HonorsStory",
  components: {
    History,
    KarlMaeser,
    RobertThomas
  },
  data() {
    return {
      selected: "",
      history: false,
      karl: false,
      robert: false,
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
          this.selected = "Honors History";
          this.history = true;
          break;
        case 1:
          this.selected = "Karl G. Maeser";
          this.karl = true;
          break;
        case 2:
          this.selected = "Robert K. Thomas";
          this.robert = true;
          break;
      }
    },
    reset: function() {
      this.selected = "";
      this.history = false;
      this.karl = false;
      this.robert = false;
    }
  }
};
</script>

<style scoped>
.active {
  background: #002e5d !important;
  color: white !important;
}
.card {
  box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.1);
}

.card:hover {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  cursor: pointer;
}
</style>


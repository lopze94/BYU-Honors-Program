<template>
    <div class="container pb-sm-3 pb-lg-4 pb-xl-5" id="story">
        <h2 class="py-3">Our Story<span v-if="selected">: {{selected}}</span></h2>
        <history v-if="history"></history>
        <karl-maeser v-if="karl"></karl-maeser>
        <robert-thomas v-if="robert"></robert-thomas>
    
        <a href="#story"><div class="card-deck" v-if="!(history||karl||robert)">
            <div class="card border-0" v-on:click="selectCard(0)">
                <img class="card-img-top" src="/img/about/honors_history.jpg" alt="Honors History">
                <div class="card-img-overlay text-white">
                    <table style="height: 100%;width: 100%;" v-if="!show2">
                        <tbody>
                            <tr>
                                <td class="align-middle h5 text-center text-uppercase">Honors History</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="card border-0" v-on:click="selectCard(1)">
                <img class="card-img-top" src="/img/about/karl_maeser.jpg" alt="Karl G. Maeser">
                <div class="card-img-overlay text-white">
                    <table style="height: 100%;width: 100%;" v-if="!show2">
                        <tbody>
                            <tr>
                                <td class="align-middle h5 text-center text-uppercase">Karl G. Maeser</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="card border-0" v-on:click="selectCard(2)">
                <img class="card-img-top" src="/img/about/robert_thomas.jpg" alt="Robert K. Thomas">
                <div class="card-img-overlay text-white">
                    <table style="height: 100%;width: 100%;" v-if="!show2">
                        <tbody>
                            <tr>
                                <td class="align-middle h5 text-center text-uppercase">Robert K. Thomas</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div></a>
        <a href="#story"><nav class="nav nav-pills nav-justified pb-2" v-if="history||karl||robert">
            <button class="nav-item nav-link btn btn-outline-primary m-1" v-on:click="selectCard(left.select)">{{left.text}}</button>
            <button class="nav-item nav-link btn btn-outline-primary m-1" v-on:click="selectCard(right.select)">{{right.text}}</button>
            <button class="nav-item nav-link btn btn-secondary m-1" v-on:click="reset">Return</button>
        </nav></a>
    </div>
</template>

<script>
    import History from './story/history.vue'
    import KarlMaeser from './story/karlmaeser.vue'
    import RobertThomas from './story/robertthomas.vue'
    
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
                    text: '',
                    select: ''
                },
                right: {
                    text: '',
                    select: ''
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
                        this.left.text = "Karl G. Maeser";
                        this.left.select = 1;
                        this.right.text = "Robert K. Thomas";
                        this.right.select = 2;
                        break;
                    case 1:
                        this.selected = "Karl G. Maeser";
                        this.karl = true;
                        this.left.text = "Honors History";
                        this.left.select = 0;
                        this.right.text = "Robert K. Thomas";
                        this.right.select = 2;
                        break;
                    case 2:
                        this.selected = "Robert K. Thomas";
                        this.robert = true;
                        this.left.text = "Honors History";
                        this.left.select = 0;
                        this.right.text = "Karl G. Maeser";
                        this.right.select = 1;
                        break;
                }
            },
            reset: function() {
                this.selected = '';
                this.history = false;
                this.karl = false;
                this.robert = false;
            }
        },
    };
</script>

<style scoped>
    a{
        text-decoration: none;
    }
    .card {
        box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.1);
    }
    
    .card:hover {
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        cursor: pointer;
    }
</style>


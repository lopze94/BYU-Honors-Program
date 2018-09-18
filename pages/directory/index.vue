<template>
<div class="container">
  <h1 class="d-none">Honors Program Directory</h1>
  <h2 class="py-3">Honors Program Directory</h2>
 <ul class="nav nav-pills nav-fill my-3" id="pills-tab" role="tablist">
  <li class="nav-item">
    <a class="nav-link rounded-0" v-bind:class="{active: this.tabs[0]}" id="pills-all-tab" data-toggle="pill" href="#pills-all" role="tab" aria-controls="pills-all" v-bind:aria-selected="this.tabs[0]">All</a>
  </li>
  <li class="nav-item">
    <a class="nav-link rounded-0" v-bind:class="{active: this.tabs[1]}" id="pills-admimistration-tab" data-toggle="pill" href="#pills-administration" role="tab" aria-controls="pills-administration" v-bind:aria-selected="this.tabs[1]">Administration</a>
  </li>
  <li class="nav-item">
    <a class="nav-link rounded-0" v-bind:class="{active: this.tabs[2]}" id="pills-faculty-tab" data-toggle="pill" href="#pills-faculty" role="tab" aria-controls="pills-faculty" v-bind:aria-selected="this.tabs[2]">Faculty</a>
  </li>
      <li class="nav-item rounded-0">
    <a class="nav-link" v-bind:class="{active: this.tabs[4]}" id="pills-advisor-tab" data-toggle="pill" href="#pills-advisor" role="tab" aria-controls="pills-advisor" v-bind:aria-selected="this.tabs[4]">Advisors</a>
  </li>
</ul>
<div class="tab-content" id="pills-tabContent">
  <div class="tab-pane fade" v-bind:class="{active: this.tabs[0], show: this.tabs[0]}" id="pills-all" role="tabpanel" aria-labelledby="pills-all-tab">

 <div v-if="dataLoaded">
  <div v-if="directory" v-for="(contact) in directory" class="card mx-sm-5 my-2 border-0" v-bind:key="contact.id" 
  v-on:click="showToggle(contact)" v-bind:title="'Show more about '+ contact.first_name+' '+contact.last_name">
  <div class="card-body">

<div class="row">
  <div class="col-sm-12 col-md-4 col-lg-2">
    <img class="card-img-top rounded-circle px-5 px-sm-2 py-2" v-bind:src="contact.image_path" v-bind:alt="'Portrait of ' + contact.first_name +' '+ contact.last_name" v-if="contact.image_path">
    <img class="card-img-top rounded-circle px-5 px-sm-2 py-2" src="/img/spotlight/default.jpg" v-else>
  </div>
  <div class="col-md-8 col-lg-10">
    <h5 class="card-title">{{contact.first_name}} {{contact.last_name}} <span class="badge badge-primary" v-if="contact.coordinator">Coordinator</span> 
    <span class="badge badge-secondary ml-1" v-if="contact.advisor">Advisor</span><span class="badge badge-secondary ml-1" v-if="contact.faculty"></span></h5>
    <h6 class="card-subtitle mb-2 text-muted font-weight-normal">{{contact.title}}<span v-if="contact.department&&contact.title">,</span> {{contact.department}} <span v-if="contact.college&&contact.title"> | </span>{{contact.college}}</h6>
    <p class="card-text overflow-text why-honors" v-html="contact.description" v-if="!contact.show_more">{{contact.description}}</p>
    <p class="card-text" v-html="contact.description" v-else>{{contact.description}}</p>
  <p class="card-text text-muted">{{contact.phone}} | {{contact.email}} | {{contact.office}}</p>
  </div>
</div>

  </div>
</div>

    </div>

  </div>
  <div class="tab-pane fade" v-bind:class="{active: this.tabs[1], show: this.tabs[1]}" id="pills-administration" role="tabpanel" aria-labelledby="pills-administration-tab">

 <div v-if="dataLoaded">
  <div v-if="contact.admin" v-for="(contact) in directory" class="card mx-sm-5 my-2 border-0" v-bind:key="contact.id" 
  v-on:click="showToggle(contact)" v-bind:title="'Show more about '+ contact.first_name+' '+contact.last_name">
  <div class="card-body">

<div class="row">
  <div class="col-sm-12 col-md-4 col-lg-2">
    <img class="card-img-top rounded-circle px-5 px-sm-2 py-2" v-bind:src="contact.image_path" v-bind:alt="'Portrait of ' + contact.first_name +' '+ contact.last_name">
  </div>
  <div class="col-md-8 col-lg-10">
    <h5 class="card-title">{{contact.first_name}} {{contact.last_name}} <span class="badge badge-primary" v-if="contact.coordinator">Coordinator</span> <span class="badge badge-secondary ml-1" v-if="contact.advisor">Advisor</span></h5>
    <h6 class="card-subtitle mb-2 text-muted font-weight-normal">{{contact.title}}<span v-if="contact.department">,</span> {{contact.department}}  | {{contact.college}}</h6>
    <p class="card-text overflow-text" v-html="contact.description" v-if="!contact.show_more">{{contact.description}}</p>
    <p class="card-text" v-html="contact.description" v-else>{{contact.description}}</p>
  <p class="card-text text-muted">{{contact.phone}} | {{contact.email}} | {{contact.office}}</p>
  </div>
</div>

  </div>
</div>

    </div>

  </div>
  <div class="tab-pane fade" v-bind:class="{active: this.tabs[2], show: this.tabs[2]}" id="pills-faculty" role="tabpanel" aria-labelledby="pills-faculty-tab">

 <div v-if="dataLoaded">
  <div v-if="contact.faculty" v-for="(contact) in directory" class="card mx-sm-5 my-2 border-0" v-bind:key="contact.id" 
  v-on:click="showToggle(contact)" v-bind:title="'Show more about '+ contact.first_name+' '+contact.last_name">
  <div class="card-body">

<div class="row">
  <div class="col-sm-12 col-md-4 col-lg-2">
    <img class="card-img-top rounded-circle px-5 px-sm-2 py-2" v-bind:src="contact.image_path" v-bind:alt="'Portrait of ' + contact.first_name +' '+ contact.last_name">
  </div>
  <div class="col-md-8 col-lg-10">
    <h5 class="card-title">{{contact.first_name}} {{contact.last_name}} <span class="badge badge-primary" v-if="contact.coordinator">Coordinator</span><span class="badge badge-secondary ml-1" v-if="contact.advisor">Advisor</span> </h5>
    <h6 class="card-subtitle mb-2 text-muted font-weight-normal">{{contact.title}}<span v-if="contact.department">,</span> {{contact.department}}  | {{contact.college}}</h6>
    <p class="card-text overflow-text" v-html="contact.description" v-if="!contact.show_more">{{contact.description}}</p>
    <p class="card-text" v-html="contact.description" v-else>{{contact.description}}</p>
  <p class="card-text text-muted">{{contact.phone}} | {{contact.email}} | {{contact.office}}</p>
  </div>
</div>

  </div>
</div>

    </div>

  </div>

    <div class="tab-pane fade" v-bind:class="{active: this.tabs[4], show: this.tabs[4]}" id="pills-advisor" role="tabpanel" aria-labelledby="pills-advisor-tab">

 <div v-if="dataLoaded">
  <div v-if="contact.advisor" v-for="(contact) in directory" class="card mx-sm-5 my-2 border-0" v-bind:key="contact.id" 
  v-on:click="showToggle(contact)" v-bind:title="'Show more about '+ contact.first_name+' '+contact.last_name">
  <div class="card-body">

<div class="row">
  <div class="col-sm-12 col-md-4 col-lg-2">
    <img class="card-img-top rounded-circle px-5 px-sm-2 py-2" v-bind:src="contact.image_path" v-bind:alt="'Portrait of ' + contact.first_name +' '+ contact.last_name">
  </div>
  <div class="col-md-8 col-lg-10">
    <h5 class="card-title">{{contact.first_name}} {{contact.last_name}} <span class="badge badge-primary" v-if="contact.coordinator">Coordinator</span> <span class="badge badge-secondary ml-1" v-if="contact.advisor">Advisor</span></h5>
    <h6 class="card-subtitle mb-2 text-muted font-weight-normal">{{contact.title}}<span v-if="contact.department">,</span> {{contact.department}}  | {{contact.college}}</h6>
    <p class="card-text overflow-text" v-html="contact.description" v-if="!contact.show_more">{{contact.description}}</p>
    <p class="card-text" v-html="contact.description" v-else>{{contact.description}}</p>
  <p class="card-text text-muted">{{contact.phone}} | {{contact.email}} | {{contact.office}}</p>
  </div>
</div>

  </div>
</div>

    </div>

  </div>
</div> 
</div>
   
</template>

<script>
function resolveAfter2Seconds() {
  return new Promise(resolve => {
    setTimeout(() => {
      resolve(true);
    }, 500);
  });
}

export default {
  name: "TeachingFaculty",
  props: ["category"],
  data() {
    return {
      dataLoaded: false,
      showMore: false,
      tabs: [true, false, false, false, false]
    };
  },
  created: function() {
    this.asyncCall();
    this.$store.dispatch("getFaculty");
    this.asyncCall();
    this.selectedTab();
  },
  computed: {
    directory: function() {
      return this.$store.getters.directory;
    }
  },
  methods: {
    async asyncCall() {
      //console.log('calling');
      this.dataLoaded = await resolveAfter2Seconds();

      //console.log(this.dataLoaded);
      // expected output: "resolved"
    },
    showToggle: function(contact) {
      contact.show_more = !contact.show_more;
    },
    selectedTab: function() {
      var urlHash = this.$route.hash;
      var category = urlHash.substring(urlHash.indexOf("#") + 1);
      switch (category) {
        case "administration":
          this.tabs[0] = false;
          this.tabs[1] = true;
          break;
        case "faculty":
          this.tabs[0] = false;
          this.tabs[2] = true;
          break;
        case "coordinators":
          this.tabs[0] = false;
          this.tabs[3] = true;
          break;
        case "advisors":
          this.tabs[0] = false;
          this.tabs[4] = true;
          break;
      }
    }
  }
};
</script>

<style scoped>
a.active {
  background: #002e5d !important;
  color: white !important;
  border-color: #002e5d !important;
  border-radius: 0px;
}

.overflow-text {
  overflow: hidden;
  text-overflow: ellipsis;
  display: -webkit-box; /* fallback */
  max-height: 48px; /* fallback */
  -webkit-line-clamp: 2; /* number of lines to show */
  -webkit-box-orient: vertical;
}

.card {
  box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.1);
}

.card:hover {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  cursor: pointer;
}
</style>

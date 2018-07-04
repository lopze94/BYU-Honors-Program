<template>
<div>
<h2>Faculty Directory</h2>
<div class="container">

 <div v-if="dataLoaded">
  <div v-if="contact.faculty" v-for="(contact) in directory" class="card mx-sm-5 my-2 border-0" v-bind:key="contact.id" 
  v-on:click="showToggle(contact)" v-bind:title="'Show more about '+ contact.first_name+' '+contact.last_name">
  <div class="card-body">

<div class="row">
  <div class="col-sm-12 col-md-4 col-lg-2">
    <img class="card-img-top rounded-circle px-5 px-sm-2 py-2" v-bind:src="contact.image_path" v-bind:alt="'Portrait of ' + contact.first_name +' '+ contact.last_name">
  </div>
  <div class="col-md-8 col-lg-10">
    <h5 class="card-title">{{contact.first_name}} {{contact.last_name}} <span class="badge badge-primary" v-if="contact.coordinator">Coordinator</span> <span class="badge badge-secondary ml-1" v-if="contact.advisor">Advisor</span> </h5>
    <h6 class="card-subtitle mb-2 text-muted font-weight-normal">{{contact.title}}, {{contact.department}}  | {{contact.college}}</h6>
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
    name: 'TeachingFaculty',
    props: ["category"],
    data (){
        return {
            dataLoaded: false,
            showMore: false
        }
    },
    head (){
      return {
       
          title: 'Faculty | Directory',
          meta: {

          }
      }
    },
    created: function() {
         this.asyncCall();
        this.$store.dispatch('getFaculty');
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
  console.log(this.dataLoaded);
  // expected output: "resolved"
},
  showToggle: function (contact){
    contact.show_more = !contact.show_more;
  }
    }
}
</script>

<style scoped>
.overflow-text {
   overflow:hidden;
   text-overflow: ellipsis;
   display: -webkit-box;  /* fallback */
   max-height: 48px;      /* fallback */
   -webkit-line-clamp: 2; /* number of lines to show */
   -webkit-box-orient: vertical;
}

.card{
    box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.10);
}

.card:hover{
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    cursor: pointer;
}

</style>

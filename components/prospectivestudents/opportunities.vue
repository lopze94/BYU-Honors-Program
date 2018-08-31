<template>
    <div class="container mb-3 mb-xl-5 jumptarget" id="opportunities">
        <h2 class="py-3">First-Year Opportunities</h2>
        <div class="container mb-4">
        <a class="row my-3 shadow" v-for="(item, i) in share" :key="i" :href="item.link" target="_blank">
    <div class="col col-12 col-lg-6 px-0 mb-sm-3 mb-md-0">
        <img :src="item.img" :alt="item.title" class="w-100">
    </div>
    
    <div class="col col-12 col-lg-6 px-4 px-sm-3 px-xl-5 mt-3">
        <table style="height: 100%;">
  <tbody>
    <tr>
      <td class="align-middle">
        <h3>{{item.title}}</h3>
        <p>{{item.description}}</p>
      </td>
    </tr>
  </tbody>
</table>

    </div>
</a>
        </div>
    </div>
</template>

<script>
export default {
  name: "FirstOpportunities",
  data() {
    return {
      ishover: false,
      share: [
        {
          img: "/img/prospective/first-year-experience.jpg",
          link: "https://fye.byu.edu/",
          title: "First-Year Experience",
          description: `Your BYU experience starts here! New Student Orientation is a three day event where everything is free for you-- food, byu bling, prizes, entertainment, and training by professionals and mentors.`
        },
        {
          img: "/img/prospective/late-summer-honors.jpg",
          link: "https://latesummerhonors.byu.edu/",
          title: "Late Summer Honors",
          description: `Late Summer Honors offers you an experience in one of 12 honors short courses, taught by some of BYU's best professors, and participation in seminars, demonstrations, field trips, activities, and special events. Expect the Unexpected in the BYU Honors Program and begin making connections early!`
        }
      ]
    };
  }
};
</script>

<style scoped>
a {
  text-decoration: none;
  color: black;
}
a.shadow:hover {
  color: #0057b8;
  cursor: pointer;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19) !important;
}
</style>
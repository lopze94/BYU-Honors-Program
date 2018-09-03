<template>
    <div class="container jumptarget" id="scholarships">
        <h2 class="py-3">Scholarships</h2>
        <p>
Honors students can apply to these scholarships during the Winter semester for the subsequent Fall semester.   
        </p>
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
  name: "Opportunities",
  data() {
    return {
      ishover: false,
      share: [
        {
          img: "/img/current/khona-scholarship.jpg",
          link: "/forms/opportunities/Khona-Application.pdf",
          title: "Khona Scholarship",
          description: `This scholarship is for Honors students who are majoring in Business and are currently working on their thesis.`
        },
                {
          img: "/img/current/robert-thomas-scholarship.jpg",
          link: "/forms/opportunities/RKT-Application-2019-20.pdf",
          title: "Robert K. Thomas Scholarship",
          description: `This scholarship is named after the founder of the BYU Honors Program.  It’s for all Honors students who are currently working on their theses. `
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
  color: #0057b8 !important;
  cursor: pointer;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19) !important;
}
</style>
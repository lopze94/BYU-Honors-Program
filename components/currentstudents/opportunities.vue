<template>
    <div class="container jumptarget" id="opportunities">
        <h2 class="py-3">Opportunities in Honors</h2>
        <p>
            The Honors Program offers many wonderful opportunities to our Honors students. Click a card to learn more about it or download an application for that specific opportunity.    
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
          img: "/img/current/cambridge-programme.jpg",
          link: "https://kennedy.byu.edu/cambridge/",
          title: "Cambridge Programme",
          description: `The Pembroke-King’s Programme (PKP) is a full six-week direct enrollment summer term at the University of Cambridge for Honors student only.`
        },
        {
          img: "/img/current/honors-program-student-advisor.jpg",
          link: "/forms/opportunities/Application-HONRS-Advisor.pdf",
          title: "Honors Program Student Advisor",
          description: `Any student who has taken HONRS 120 and one of the Honors unexpected connection classes is invited to apply to be an Honors advisor.  `
        },
        {
          img: "/img/current/honors-student-leadership-council.jpg",
          link: "/forms/opportunities/Application-HSLC.pdf",
          title: "Honors Student Leadership Council",
          description: `Any committed Honors students can apply to be a member of the student council during the winter semester. If you are selected, you will start in the fall semester.  `
        },
        {
          img: "/img/current/honors-teaching-assitant.jpg",
          link: "/forms",
          title: "Honors Teaching Assistant",
          description: `If you are interested in becoming a Teaching Assistant in one of the Honors classes, please click this card to download an application.`
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

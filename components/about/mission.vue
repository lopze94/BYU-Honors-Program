<template>
    <div class="container jumptarget" id="mission">
        <h2 class="py-3">Our Mission</h2>
        <p>
            We aim to develop student-scholars from across the university 
            who will become broad thinkers, creative problem solvers, and influential leaders by cultivating:
        </p>
<div class="container mb-4">
        <div class="row my-3 shadow" v-for="(item, i) in share" :key="i" target="_blank">
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
</div>
        </div>
    </div>
</template>

<script>
export default {
  name: "Opportunities",
  data() {
    return {
      share: [
        {
          img: "/img/about/academic_excellence.jpg",
          title: "Academic Excellence",
          description: `Demonstrating high achievement in and out of the classroom.`
        },
        {
          img: "/img/about/community_of_scholars.jpg",
          title: "Community of Scholars",
          description: `Building friendship, leadership, and learning across the campus.`
        },
        {
          img: "/img/about/interdisciplinary_thinking.jpg",
          title: "Interdisciplinary Thinking",
          description: `Exploring connections between ideas, disciplines, and people.`
        },
        {
          img: "/img/about/skills_of_inquiry.jpg",
          title: "Skills of Inquiry",
          description: `Interrogating ideas through hands-on research and experience.`
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
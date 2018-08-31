<template>
    <div>
        <p>
            Opportunities to share your ideas and research with students and other faculty abound in the Honors Program!  
        </p>
        <div class="container mb-4">
<div class="row my-3 shadow" v-for="(item, i) in share" :key="i">
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
  name: "Share",
  data() {
    return {
      share: [
        {
          img: "/img/faculty/chocolate-milk-discussions.jpg",
          title: "Chocolate Milk Discussions",
          description: `Every Friday at noon in the Honors Reading Room, we invite a faculty member for an informal chat 
                        about their ongoing research with interested students and other faculty.  It’s a chance to talk, connect, and spark 
                        interests – all while enjoying BYU chocolate milk!`
        },
        {
          img: "/img/faculty/disciple-scholar-lectures.jpg",
          title: "Disciple Scholar Lectures",
          description: `Once a month, faculty guest presents their insights, learning and ideas about life as a disciple-scholar. 
          BYU faculty share unique experiences combining scholarship in their field with principles of faith. We invite members of 
          the BYU community to join us for these inspiring lectures.`
        },
        {
          img: "/img/faculty/honors-thesis-poster-session.jpg",
          title: "Honors Thesis Poster Session",
          description: `In March, honors students present their culminating thesis work in a poster session at the WSC.  Students, faculty, 
          administrators, and parents are welcome to mix and mingle, enjoy refreshments, and learn about the amazing mentored research happening 
          in the Honors Program.`
        },
        {
          img: "/img/faculty/honors-conference.jpg",
          title: "Honors Conference",
          description: `Join us in February as our Honors students present their work in a variety of sessions and panels focused on the Great 
          Question Essay, Honors Thesis research, preparation for graduate work, interview techniques, and other topics.  `
        },
        {
          img: "/img/faculty/faculty-and-student-socials.jpg",
          title: "Faculty & Student Socials",
          description: `Watch our events calendar for other lectures, activities, socials, dinners and events!  `
        }
      ]
    };
  }
};
</script>

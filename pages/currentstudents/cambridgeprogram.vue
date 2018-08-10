<template>
    <div>
        <hero v-bind:hero="this.hero0"></hero>
        <div class="container">
            <h2 class="py-3">Cambridge Program</h2>
            <p>
                The University of Cambridge offers international students the rare opportunity to study in and explore an internationally renowned university. The program is jointly facilitated by two colleges in the university: King’s College and Pembroke College, making it the Pembroke-King’s Programme or PKP. 
            </p>
            <p>
                It is a six-week direct enrollment program in which students take Cambridge style courses taught by Cambridge professors and engage in mentored research and extracurricular activities. In addition to being taught at one of the best universities in the world, students are engaging and learning from the many other students in the program who come from across the globe with different values, perspectives, and beliefs. 
            </p>
            <p>
                Immersion into the Cambridge life includes not only academics, but also lead activities led by Cambridge students that are integral parts of Cambridge college life. These include punting, football, choral performances, botanic garden walks, museum tours, and visiting the pub where Watson and Crick discussed DNA. It is a truly unique opportunity.
            </p>
    <h2>Why You Should Go?</h2>
        </div>
    </div>
</template>
 <script>
export default {
  name: "Cambridge Program",
  data() {
    return {
      hero0: {
        title: "",
        subtitle: "",
        description: "",
        text: "",
        image_path: "/img/cambridge_program.jpg",
        link_text: "",
        link: ""
      },
      imageData: "",
      imagePreview: false,
      file: ""
    };
  }
};
</script>
 
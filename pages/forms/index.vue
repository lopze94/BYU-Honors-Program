<template>
    <div>
        <!--Main Hero and Nav-->
        <main-hero></main-hero>
        <navigation :navigation="navigation"></navigation>
        <student-forms></student-forms>
        <faculty-forms></faculty-forms>
    </div>
</template>

<script>
import MainHero from "../../components/forms/main.vue";
import StudentForms from "../../components/forms/studentforms.vue";
import FacultyForms from "../../components/forms/facultyforms.vue";
export default {
  name: "Forms",
  components: {
    MainHero,
    StudentForms,
    FacultyForms
  },
  data() {
    return {
      navigation: [
        {
          href: "#student-forms",
          text: "Students"
        },
        {
          href: "#faculty-forms",
          text: "Faculty"
        }
      ]
    };
  }
};
</script>

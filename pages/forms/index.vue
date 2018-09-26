<template>
    <div>
        <!--Main Hero and Nav-->
        <main-hero></main-hero>
        <student-forms></student-forms>
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
};
</script>

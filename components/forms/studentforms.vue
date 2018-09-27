<template>
    <div class="container" id="student-forms">
        <h2 class="py-3">Honors Program Forms</h2>
        <p>
            Click any of the following forms to download a PDF version.
        </p>
        <h3>Funding</h3>
        <div class="list-group mb-3">
            <a v-for="(form, i) in generalForms" :href="form.link" class="list-group-item list-group-item-action flex-column align-items-start" target="_blank" :key="i">
                <div class="d-flex w-100 justify-content-between">
                    <h5 class="mb-1">{{form.title}}</h5>
                </div>
            </a>
        </div>
        <h3>Required Forms</h3>
        <div class="list-group mb-3">
            <a v-for="(form, i) in requiredForms" :href="form.link" class="list-group-item list-group-item-action flex-column align-items-start" target="_blank" :key="i">
                <div class="d-flex w-100 justify-content-between">
                    <h5 class="mb-1">{{form.title}}</h5>
                </div>
            </a>
        </div>
        <h3>Opportunities Forms</h3>
        <div class="list-group mb-3">
            <a v-for="(form, i) in opportunitiesForms" :href="form.link" class="list-group-item list-group-item-action flex-column align-items-start" target="_blank" :key="i">
                <div class="d-flex w-100 justify-content-between">
                    <h5 class="mb-1">{{form.title}} <span class="badge badge-success" v-if="form.paid">Paid</span></h5>
                </div>
            </a>
        </div>
        <h3>Scholarship Forms</h3>
        <div class="list-group mb-3">
            <a v-for="(form, i) in scholarshipForms" :href="form.link" class="list-group-item list-group-item-action flex-column align-items-start" target="_blank" :key="i">
                <div class="d-flex w-100 justify-content-between">
                    <h5 class="mb-1">{{form.title}}</h5>
                </div>
            </a>
        </div>
        <h3>Thesis Resources</h3>
        <div class="list-group mb-3">
            <a v-for="(form, i) in thesisResources" :href="form.link" class="list-group-item list-group-item-action flex-column align-items-start" target="_blank" :key="i">
                <div class="d-flex w-100 justify-content-between">
                    <h5 class="mb-1">{{form.title}}</h5>
                </div>
            </a>
        </div>
    </div>
</template>

<script>
export default {
  name: "StudentForms",
  data() {
    return {
      generalForms: [
        {
          title: "Honors Conference Funding Request",
          link: "/forms/Honors-Conference-Funding-Request.pdf"
        }
      ],
      requiredForms: [
        {
          title: "Leadership Development Experience",
          link:
            "/forms/opportunities/Leadership-Development-Experience-Form-2018.pdf"
        },
        {
          title: "Thesis Proposal Submission",
          link: "/forms/thesis/Thesis_Proposal_Submission_Form_2018.pdf"
        },
        {
          title: "Thesis Submission",
          link: "/forms/thesis/Honors_Thesis_Submission_Form_2018.pdf"
        },
        {
          title: "Thesis Defense Information",
          link: "/forms/thesis/Honors_Thesis_Defense_Information_Form_2018.pdf"
        }
      ],
      opportunitiesForms: [
        {
          title: "Honors Advisor",
          link: "/forms/opportunities/Application-HONRS-Advisor.pdf",
          paid: true
        },
        {
          title: "HONRS 120 TA",
          link: "/forms/opportunities/Application-HONRS-120-TA.pdf",
          paid: true
        },
        {
          title: "Unexpected Connections TA",
          link: "/forms/opportunities/Application-UnexpectConnect-TA.pdf",
          paid: true
        },
        {
          title: "HSLC Application",
          link: "/forms/opportunities/Application-HSAC.pdf",
          paid: false
        }
      ],
      scholarshipForms: [
        {
          title: "Khona Scholarship",
          link: "/forms/opportunities/Khona-Application.pdf"
        },
        {
          title: "Robert K. Thomas Scholarship",
          link: "/forms/opportunities/RKT-Application-2019-20.pdf"
        }
      ],
      thesisResources: [
        {
          title: "Thesis Formatting Guidelines",
          link: "/forms/thesis/Thesis-Formatting-Guidelines-2018.pdf"
        },
        {
          title: "Honors Thesis Binding via BYU Print and Mail Services",
          link: "/forms/thesis/Honors-Thesis-Binding.pdf"
        },
        {
          title: "ScholarsArchive Instructions",
          link: "/forms/thesis/ScholarsArchives-Instructions.pdf"
        }
      ]
    };
  }
};
</script>

<style>
a:hover {
  cursor: pointer;
}
</style>

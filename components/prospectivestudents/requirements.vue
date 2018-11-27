<template>
    <div class="container jumptarget" id="requirements">
        <h2 class="py-3">Requirements</h2>
        <p>
            This section provides a brief overview of the requirements to graduate with University Honors. The staff in the Honors Program
            Advisement Center, 102 MSRB, (801) 422-5497, is available on a walk-in basis to answer questions about the program.
            </p>
            <p>
            To graduate with University Honors, a student must be an admitted daytime student who attains a 3.0 or higher GPA
            and completes all of the requirements below:
        </p>
        <div class="row">
            <div class="col-sm-6 col-lg-4">
                <h4>Courses</h4>
                <p>Complete all of the following:
                <ul>
                    <li><b>HONRS 120</b>: Introduction to Honors Great Questions</li>
                    <li>Any <b>three </b><i>Unexpected Connections</i> courses <span class="badge badge-primary" data-toggle="modal" data-target="#coursesModal">Courses List</span></li>
                    <li><b>HONRS 320</b>: Great Questions Tutorial (NOT a Thesis Class)</li>
                </ul>
                </p>
            </div>
            <div class="col-sm-6 col-lg-4">

                <h4>Leadership Experience</h4>
                <p>Complete <b>one</b> of the following options:
                    <ul>
                        <li>Leadership-Related Experience <span class="text-primary">(Ballard Center, United Way, Women Services
                                & Resources)</span></li>
                        <li>Study Abroad, Field Study, or Internship</li>
                        <li>Honors Student Leadership Council (HSLC)</li>
                    </ul>
                </p>
            </div>
            <div class="col-sm-12 col-lg-4">
                <h4>Honors Thesis</h4>
                <p>
                    Complete an original <b>research project or creative work</b> that is mentored by a faculty member.
                    <ul>
                        <li>Complete a <b>Thesis Proposal</b></li>
                        <li><b>Defend</b> your Thesis and Pass</li>
                    <li>After successfully defending your thesis, you will <b>publish</b> your work or project.</li>
                    </ul>
                </p>
            </div>
        </div>
        <!-- Modal -->
<div class="modal fade" id="coursesModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Unexpected Connections Courses</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
               <img src="/img/prospective/courses.jpg" alt="courses list" class="img-fluid">
      </div>
    </div>
  </div>
</div>
    </div>
</template>

<script>
export default {
  name: "Requirements"
};
</script>

<style scoped>
.badge:hover{
    cursor: pointer;
}
</style>
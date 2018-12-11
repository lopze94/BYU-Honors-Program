<template>
    <div>
         <h4>Courses</h4>
                <p>Complete all of the following:
                <ul>
                    <li><b>HONRS 120</b>: Introduction to Honors Great Questions</li>
                    <li>Any <b>three </b><span class="badge badge-primary" data-toggle="modal" data-target="#coursesModal">Unexpected Connections</span> courses</li>
                    <li><b>HONRS 320</b>: Great Questions Tutorial (NOT a Thesis Class)</li>
                </ul>
                </p>
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
               <img src="/img/global/courses-list.jpg" alt="courses list" class="img-fluid">
      </div>
    </div>
  </div>
</div>
    </div>
</template>

<script>
export default {
    name: "Courses"
}
</script>

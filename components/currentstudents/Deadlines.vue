<template>
  <div class="container jumptarget pb-4" id="deadlines">
    <h2 class="py-3">Deadlines</h2>
    <p>Please, select your graduation date to view the deadlines.</p>
    <div class="row">
      <div class="col-sm-12 col-md-4 pb-3">
        <div class="list-group" id="list-tab" role="tablist">
          <a class="list-group-item list-group-item-action active" id="list-april-list" data-toggle="list" href="#list-april" role="tab" aria-controls="april">April 2019</a>
          <a class="list-group-item list-group-item-action" id="list-june-list" data-toggle="list" href="#list-june" role="tab" aria-controls="june">June 2019</a>
          <a class="list-group-item list-group-item-action" id="list-august-list" data-toggle="list" href="#list-august" role="tab" aria-controls="august">August 2019</a>
          <a class="list-group-item list-group-item-action" id="list-december-list" data-toggle="list" href="#list-december" role="tab" aria-controls="december">December 2018</a>
        </div>
      </div>
      <div class="col-sm-12 col-md-8">
        <div class="tab-content" id="nav-tabContent">
          <div v-for="(list, i) in deadlines" :key="i" class="tab-pane fade show" :id="'list-'+list.graduation" role="tabpanel" :aria-labelledby="'list-'+list.graduation+'-list'">
            <table class="table table-hover table-borderles rounded table-sm">
              <caption>Graduating in {{list.graduation | capitalize}} 2019</caption>
              <thead class="thead-light">
                <tr>
                  <th scope="col">Event</th>
                  <th scope="col">Deadline</th>
                </tr>
              </thead>
              <tbody>
                <tr v-for="(event, j) in events" :key="j" data-toggle="modal" :data-target="'#event-'+j+'-modal'">
                  <th scope="row">
                    {{event.title}}
                  </th>
                  <td>{{event.date[i]}}</td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
    <!-- Modal -->
    <div v-for="(event, index) in events" :key="index" class="modal fade" :id="'event-'+index+'-modal'" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalCenterTitle">{{event.title}}</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            {{event.info}}
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
  export default {
    name: "Deadlines",
    data() {
      return {
        deadlines: [{
            graduation: 'april',
          },
          {
            graduation: 'june',
          },
          {
            graduation: 'august',
          },
          {
            graduation: 'december',
          }
        ],
        events: [{
            title: 'Deadline to Apply for Graduation',
            date: ['November 15', 'February 15', 'April 15', 'September 15'],
            info: 'Last day to apply for graduation. Go to byu.edu ➙ myBYU ➙ School ➙ Apply for Graduation'
          },
          {
            title: 'Great Question Essay (HONRS 320)',
            date: ['By the end of junior year (at least two semesters prior to graduation).*', 'By the end of junior year (at least two semesters prior to graduation).*', 'By the end of junior year (at least two semesters prior to graduation).*', 'By the end of junior year (at least two semesters prior to graduation).*'],
            info: 'Deadline to take the Great Question Essay class.'
          },
          {
            title: 'Thesis Proposal Submitted*',
            date: ['September 28', 'November 9', 'January 11', 'May 4'],
            info: 'Deadline to submit Thesis Proposal to our office (unless you will use your capstone project as your thesis, but you\'ll need to communicate that to Honors Advisement by this date).'
          },
          {
            title: 'Experiential Learning',
            date: ['February 22', 'April 12', 'June 3', 'November 2'],
            info: 'Last day to submit Experiential Learning Approval Form and typed evaluation to our office.'
          },
          {
            title: 'Great Works Portfolio',
            date: ['February 22', 'April 12', 'June 3', 'November 2'],
            info: 'Last day to submit Great Works Portfolio to our office.  *Applies only to students with GW pre-authorization.'
          },
          {
            title: 'Thesis Defense Information Form*',
            date: ['February 22', 'April 12', 'June 3', 'November 2'],
            info: 'Last day to schedule thesis defense and submit Thesis Defense Information Form to our office.'
          },
          {
            title: 'Thesis Submission Form*',
            date: ['March 8', 'May 10', 'June 28', 'November 30'],
            info: 'Last day to hold thesis defense and to submit completed Thesis Submission Form to our office. Title submitted on this form will be printed in the commencement program.'
          },
          {
            title: 'Thesis Final',
            date: ['March 15', 'June 3', 'July 5', 'December 7'],
            info: 'Last day for all completed agreed qualifications and email a PDF copy of your finalized thesis to our office.'
          },
          {
            title: 'Thesis Publication',
            date: ['March 15', 'June 3', 'July 5', 'December 7'],
            info: 'Last day to upload correctly formatted versions of your thesis to BYU Print and Mail Services.'
          },
        ]
      }
    },
    filters: {
      capitalize: function(string) {
        return string.charAt(0).toUpperCase() + string.slice(1);
      }
    }
  }
</script>
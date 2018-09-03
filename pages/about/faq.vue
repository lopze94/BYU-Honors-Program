<template>
    <div class="container">
        <h2 class="py-3">Honors FAQ</h2>
        <p>
            For any questions that are not answered here, please email us at honors@byu.edu or call us at (801) 422-5497. You can also schedule an appointment to talk with one of our advisors <router-link to="/scheduleappointment">here</router-link>.
        </p>
        <div class="accordion pb-4" id="accordionExample">
            <div class="card" v-for="(question, i) in questions" :key="i">
                <div class="card-header" id="headingOne">
                    <h5 class="mb-0">
                        <button class="btn btn-link" type="button" data-toggle="collapse" :data-target="'#collapse-'+i" aria-expanded="false" :aria-controls="'collapse-'+i">
                            {{question.title}}
                         </button>
                    </h5>
                </div>
    
                <div :id="'collapse-'+i" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
                    <div class="card-body" v-html="question.answer">
                        {{question.answer}}
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        name: "FAQ",
        data() {
            return {
                questions: [{
                        title: 'What is the Honors Program?',
                        answer: 'The Honors Program provides a rich and challenging experience for capable and motivated undergraduate students. Its purpose is to broaden and deepen the educational experience of students, to develop the intellectual integrity and moral character that define disciple-scholarship. An Honors education is not merely a more intensive general education or a more strenuous program in a major. Rather, it grounds students in broader interdisciplinary inquiry that strengthens leadership and encourages the integration of faith, intellect, and character.'
                    },
                    {
                        title: 'Why choose an Honors Education?',
                        answer: '<p>\"University Honors\" is a distinction awarded to graduates of BYU who have met the Honors Program requirements. This prestigious designation is recorded on the university diploma, on the official transcript of grades, and in the University Commencement program. It is widely recognized as an indication of exceptional academic achievement and marks the highest baccalaureate distinction BYU awards.</p><p>A BYU Honors education benefits students by: <br><ul><li>broadening and deepening the educational experience</li><li>increasing students\' awareness of disciplines beyond their home major with an interdisciplinary approach</li><li>exploring questions which develop habits of lifelong learning</li><li>making connections, and using facts and sound reasoning to develop an understanding of the world</li><li>developing the intellectual integrity and moral character that define disciple-scholarship</li></ul></p>'
                    },
                    {
                        title: 'Is there a GPA requirement to join the Honors Program?',
                        answer: 'No, there is no GPA requirement.'
                    },
                    {
                        title: 'How do I enroll and commit?',
                        answer: 'The BYU Honors Program is open enrollment, so anyone who wants to join can. All you have to do is fill out the enrollment form online. Then schedule a time to do a commitment interview with one of our Honors Advisors.'
                    },
                    {
                        title: 'Is there Honors Housing?',
                        answer: 'No. There is not Honors Housing. Honors students may choose to live where they so desire.'
                    },
                    {
                        title: 'This program seems different than what I have heard about before. Why is that?',
                        answer: 'In 2014, the University launched new program and curriculum requirements for Honors. The new program is designed to better prepare students for the demands they will face in their post baccalaureate careers to integrate knowledge from diverse sources and disciplines, rather than taking a collection of unrelated, discipline-specific courses. Instead, the new Honors core curriculum emphasizes an interdisciplinary approach to address the broad, significant questions that have animated human civilization for centuries. The program is also designed to better integrate work students are already doing in their home disciplines, reduce time to graduation, and use University resources more efficiently.'
                    },
                    {
                        title: 'What are the requirements to graduate with Honors?',
                        //Edit link ----------------------------->
                        answer: 'The requirement checklist to graduate with University Honors is found by clicking <a href="https://www.google.com">here</a>.'
                    },
                    {
                        title: 'What class should I take my first semester?',
                        answer: 'We recommend that all incoming freshman take <b>HONRS 120: Freshman Honors</b> their first or second semester. This will introduce you to the Honors Program and is part of the required course load.'
                    },
                    {
                        title: 'Can I sign up for HONRS 120 without being an enrolled Honors student?',
                        answer: 'Yes. The purpose of 120 is for students to be introduced to the Honors Program.'
                    },
                    {
                        title: 'Do my AP credits count toward my total Honors credits?',
                        answer: 'No, they do not.'
                    },
                    {
                        title: 'Can transfer / late joining students do the Honors Program?',
                        answer: 'Transfer / late joining students are more than welcome to join the Honors Program. You will just have a little less time to fulfill the requirements than incoming freshman but it definitely is possible.'
                    },
                    {
                        title: 'Are the requirements different for transfer / late joining students?',
                        answer: 'No. The requirements for transfer/late joining students are the same.'
                    },
                    {
                        title: 'What does it mean to graduate with Honors?',
                        answer: 'University Honors is the highest academic distinction awarded to undergraduates at BYU. Those who graduate with Honors are recognized at graduation, receive an Honors Diploma and medallion, and have their Honors Thesis title put on their transcript.'
                    },
                    {
                        title: 'Am I graduating with a Latin distinction? (For example summa cum laude?)',
                        answer: 'Latin distinctions are determined by GPA alone in the separate colleges and are not affiliated with the Honors Program. If a student is interested in knowing whether they are graduating with Latin distinctions, they should contact their college advisement center.'
                    }
                ]
            }
        }
    }
</script>

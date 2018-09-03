<template>
    <div class="container" id="faq">
        <h2 class="py-3">Cambridge FAQs</h2>

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
        name: "Questions",
        data() {
            return {
                questions: [{
                        title: 'Can I use this to start my Honors Thesis?',
                        answer: 'Yes, you can. In fact, we encourage students to use the directed research option at Cambridge to begin their work on their Honors Thesis. It is a time when you can dedicate a significant amount of time to your own research.'
                    },
                    {
                        title: 'Where do I live?',
                        answer: 'Students live in student housing at the University of Cambridge.'
                    },
                    {
                        title: 'What do the program costs include?',
                        answer: 'The program costs include BYU tuition, Cambridge tuition, housing at Cambridge, international healthcare coverage, and about 14 meals a week while at Cambridge.'
                    },
                    {
                        title: 'Is there funding available?',
                        answer: 'The Honors program will be providing scholarships based on financial need of up to $2500-3000. International Study Programs also offers a scholarship for the program that is based on financial need. Any tuition grants or scholarships that a student has can also count towards the cost of the program. Additionally, students should talk to their departments about funding options for the programs.'
                    },
                    {
                        title: 'When should I apply?',
                        answer: 'Students should apply as soon as they can after the application opens in October. The deadline to apply is <span class=\"text-primary\">December 1st</span>. Students will need a letter of recommendation in order to apply.'
                    },
                    {
                        title: 'What are the requirements?',
                        answer: 'The basic requirements are as follows: <b>3.5+ GPA</b>, be in major for at least <b>two semesters</b>, be an <b>Honors</b> Program student, and be <b>18 years</b> of age or older.'
                    }
                ]
            }
        }
    }
</script>

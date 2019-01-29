<template>
    <div>
                <h4>Honors Thesis</h4>
                <p>
                    Complete an original <b>research project or creative work</b> that is mentored by a faculty member.
                    <ul>
                        <li><b>Submit</b> a Thesis Proposal</li>
                        <li><b>Defend</b> your Thesis and pass</li>
                        <li><b>Publish</b> your work or project after successfully defending your thesis</li>
                    </ul>
                </p>
                <h5 class="text-secondary">Thesis Proposal Samples</h5>

                <ul>
                    <li v-for="(item, i) in thesis" :key="i">
            {{item.category}} | <a :href="'/uploads/'+item.pdf+'.pdf'"  target="_blank" >{{item.title}}</a>
                    </li>
                </ul>
    </div>
</template>

<script>
export default {
name: "Thesis",
data () {
    return {
        thesis: [
            {
                title: "Auditing Companies with Poor Internal Control",
                pdf: "AccountingProposal",
                category: "Accounting"
            },
            {
                title: "Clustering Healthcare Costs by Disease",
                pdf: "AppliedStatistics",
                category: "Applied Statistics"
            },
            {
                title: "The Allegory of Good and Bad Government",
                pdf: "ArtHistory",
                category: "Art History"
            },
            {
                title: "Nicotiana Attenuata",
                pdf: "BioinformaticsThesisProposal",
                category: "Bioinformatics"
            },
            {
                title: "Development and Validation of Molecular Dynamics Simulation for FLiNak",
                pdf: "ChemicalEngineering",
                category: "Chemical Engineering"
            },
            {
                title: "Telling The Story of a Forgotten Martyr: Step One",
                pdf: "ClassicalStudies",
                category: "Classical Studies"
            },
            {
                title: "The Use of Mass Media in the Lives of Juvenile Delinquents",
                pdf: "Communications",
                category: "Communications"
            },
            {
                title: "Adaptable ICSHK with Irregular QAM Constellations",
                pdf: "ComputerEngineering",
                category: "Computer Engineering"
            },
            {
                title: "Finding Scheherazade",
                pdf: "English",
                category: "English"
            },
            {
                title: "The Effects of Mergers and Acquisitions on the Short-Term Volatility of Security Prices",
                pdf: "FinanceProposal",
                category: "Finance"
            },
            {
                title: "A Translation of and Reflection on \"No Hay Isla Feliz\"",
                pdf: "InterdisciplanaryHumanites",
                category: "Interdisciplanary Humanites"
            },
            {
                title: "Populism and Political Palimpest: France\'s Revolutionary Political Culture",
                pdf: "InternationalRelationsThesisProposal",
                category: "International Relations Thesis Proposal"
            },
            {
                title: "Accepting Konglish: Emerging Conceptions of Korean Linguistic Identity",
                pdf: "Linguistics",
                category: "Linguistics"
            },
            {
                title: "Dynamic Coalescence as a Mathematical Model of Leadership and Empirical Evidence of the Value of Strategic Sacrifice",
                pdf: "Mathematics",
                category: "Mathematics"
            },
            {
                title: "Evolution of MG AZ31 Twin Activation with Strain: A Machine Learning Study",
                pdf: "MechanicalEngineering",
                category: "Mechanical Engineering"
            },
            {
                title: "Passanger Seat and An Examination of Female Power in the Thriller",
                pdf: "MediaArts",
                category: "Media Arts"
            },
            {
                title: "Sacred Sounds: A Compassionate Listening Guide to Musical Worship",
                pdf: "Music-1",
                category: "Music"
            },
            {
                title: "A Fascination with Our Dead: Addressing the Discord Between Modern Music and Museum Culture",
                pdf: "Music-2",
                category: "Music"
            },
            {
                title: "The Effect of Student Emotional Maturity on Their Perception of Test Question Fairness",
                pdf: "NeuroscienceThesisProposal",
                category: "Neuroscience"
            },
            {
                title: "College Students\' Report of Canned Foods and Their Current Understanding",
                pdf: "NutritionalScienceThesisProposal",
                category: "Nutritional Science"
            },
            {
                title: "The Effect of Overexpression of IRF5 on B-Cell Inflamatory and Co-Stimulatory Activity",
                pdf: "PDBioThesisProposal",
                category: "Physiology and Developmental Biology"
            },
            {
                title: "Order in Chaos: An Algorithmic Approach to Flocking Behavior",
                pdf: "Physics",
                category: "Physics"
            }
        ]
    }
}
}
</script>

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
            }
        ]
    }
}
}
</script>

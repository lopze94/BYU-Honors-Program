<template>
    <div class="container jumptarget" id="how">
        <h2 class="py-3">How to Join Honors Program?</h2>
        <p>Joining the Honors Program is easy as [insert pun here]. Complete the following two steps and you'll be on your way to graduate with BYU Honors. Congratulations!</p>
        <div class="card-deck">
            <a class="card border-0 text-color rounded-0" href="/scheduleappointment">
                <img class="card-img rounded-0" src="/img/online_enrollment.jpg" alt="Card image">
    
                <div class="card-img-overlay text-white">
                    <table style="height: 100%;width: 100%;">
                        <tbody>
                            <tr>
                                <td class="align-middle">
                                      <h5 class="text-center text-uppercase">
                                        Honors Enrollment
                                    </h5>
                                    <p class="mb-0 d-sm-none d-md-block">
                                        Complete the Honors Enrollment Form online.
                                    </p>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </a>
            <a class="card border-0 text-color rounded-0" href="/scheduleappointment">
                <img class="card-img rounded-0" src="/img/prospective/commitment_interview.jpg" alt="Card image">
                <div class="card-img-overlay text-white">
                    <table style="height: 100%;width: 100%;">
                        <tbody>
                            <tr>
                                <td class="align-middle">
                                    <h5 class="text-center text-uppercase">
                                        Commitment Interview
                                    </h5>
                                    <p class="mb-0 d-sm-none d-md-block">
                                        Meet with one of our advisors to complete the Commitment Interview.
                                    </p>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </a>
        </div>
    </div>
</template>

<script>
    export default {
        name: 'How'
    }
</script>

<style scoped>
    .card {
        box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.3), 0 6px 20px 0 rgba(0, 0, 0, 0.10);
    }
    
    .card:hover {
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.3), 0 6px 20px 0 rgba(0, 0, 0, 0.25);
        cursor: pointer;
    }
    
    .text-color {
        color: #f0f0f0;
        text-shadow: 0 0 5px rgba(0, 0, 0, 0.25);
    }
    
    .text-color:hover {
        color: #fff;
        text-shadow: 0 0 5px black;
    }
</style>


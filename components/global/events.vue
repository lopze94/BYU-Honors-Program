<template>
    <div class="container jumptarget" id="events" ssr-only>
        <h2 class="py-3">Upcoming Events</h2>

<div class="col col-xl-6 offset-xl-3">
     <byu-calendar categories="1100" days="130" display="5" limit="3">
                </byu-calendar>
</div>
           


    </div>
</template>

<script>
    export default {
        name: "Events"
    }
</script>

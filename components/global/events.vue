<template>
    <div class="container jumptarget" id="events" ssr-only>
        <h2 class="py-3">Upcoming Events</h2>
        <byu-calendar categories="1100" days="90" display="4" limit="3">
        </byu-calendar>
    </div>
</template>

<script>
    export default {
        name: "Events"
    }
</script>

<template>
    <div class="container jumptarget" id="events" ssr-only>
        <h2 class="py-3">Upcoming Events</h2>
        <div class="row">
            <div class="col-xs-12 col-md-6">
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque, pariatur deleniti minima enim rerum quidem alias molestias sunt eaque reiciendis nam eos? Maiores animi impedit voluptate dolorem nam, omnis aliquid beatae delectus totam ad ducimus ipsam
                architecto voluptatibus praesentium quaerat.
            </div>
            <div class="col-xs-12 col-md-6">
                <byu-calendar categories="1100" days="130" display="3" limit="3">
                </byu-calendar>
            </div>
    
        </div>
    </div>
</template>

<script>
    export default {
        name: "Events"
    }
</script>

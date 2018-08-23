<template>
    <div class="container jumptarget" id="events" ssr-only>
        <h2 class="py-3">Upcoming Events</h2>
        <div class="row">
            <div class="col-xs-12 col-md-6">
                <table style="height: 100%;width: 100%;">
                    <tbody>
                        <tr>
                            <td class="align-middle">
                                <p>
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Sint laboriosam ab mollitia sunt dolorem laborum!
                                </p>
                                <p>
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Libero explicabo impedit a sapiente beatae adipisci quas reiciendis, labore quae quasi vitae iste possimus eos dicta. Quidem, consectetur temporibus, at suscipit adipisci deleniti ratione, ut necessitatibus
                                    error cumque doloribus debitis dolore.
                                </p>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="col-xs-12 col-md-6">
                <byu-calendar categories="1100" days="130" display="4" limit="3">
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

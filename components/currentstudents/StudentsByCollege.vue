<template>
    <div>
        <my-line v-if="showLine" :data="lineData" :options="options"/>
    </div>
</template>

<script>
    export default {
        data() {
            return {
                showLine: false
            }
        },
        mounted() {
            this.showLine = true // showLine will only be set to true on the client. This keeps the DOM-tree in sync.
        },
        asyncData() {
            const lineData = [{
                label: 'Nuxt.js Commit Activity',
                backgroundColor: '#41b883',
                data: [12,23,54]
            }] // some data
            const options = {responsive: false, maintainAspectRatio: false} // some options
            return {
                lineData,
                options
            }
        }
    }
</script>
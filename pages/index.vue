<template>
    <div>
        <hero v-bind:title="title" v-bind:lead="lead" image="@/static/img/homehero.jpg"></hero>
    </div>
</template>

<script>
export default {
    name: 'HomePage',
    data(){
        return{
            title: 'Make Unexpected Connections',
            lead: 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Distinctio eum delectus earum repellendus vel incidunt sit commodi necessitatibus aut eius.',
            imgpath: '/static/img/homehero.jpg'
        }
    }
}
</script>


<template>
<div class="container pt-3">
    <nav class="nav justify-content-center">
        <a v-for="(link, index) in navigation" :key="index"
        class="nav-item nav-link btn btn-outline-secondary m-1" v-bind:href="link.href">{{link.text}}</a>
    </nav> 
</div>
</template>

<script>
export default {
  name: "Navigation",
  props: ["navigation"]
};
</script>
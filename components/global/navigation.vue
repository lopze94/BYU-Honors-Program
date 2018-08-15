<template>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark stickymenu">
        <div class="container">
            <a class="navbar-brand" href="#gototop">GO TO</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <div class="navbar-nav">
                    <a v-for="(link, index) in navigation" :key="index" class="nav-item nav-link" :href="link.href">{{link.text}}</a>
                </div>
            </div>
        </div>
    </nav>
</template>

<script>
    export default {
        name: "Navigation",
        props: ["navigation"]
    };
</script>

<style scoped>
    button:focus {
        outline: 0;
    }
    
    .stickymenu {
        position: sticky !important;
        top: 0px;
        z-index: 4000;
    }
</style>

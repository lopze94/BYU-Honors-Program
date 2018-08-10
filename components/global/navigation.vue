<template>
    <div class="stickymenu">
        <nav class="navbar navbar-expand-lg navbar-light bg-light ">
            <div class="container">
                <div class="navbar-brand">GO TO</div>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                  </button>
                <div class="container collapse navbar-collapse" id="navbarText">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item" v-for="(link, index) in navigation" :key="index">
                            <a class="nav-link btn btn-light" :href="link.href">{{link.text}}</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!--nav class="nav justify-content-center">
                        <a v-for="(link, index) in navigation" :key="index" class="nav-item nav-link btn btn-outline-secondary m-1" v-bind:href="link.href">{{link.text}}</a>
                    </nav-->
    </div>
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

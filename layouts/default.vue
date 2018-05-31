<template>
  <div id="app">
    <site-header></site-header>
    <div class="page-content">
    <nuxt/>
    </div>
    <site-footer></site-footer>
  </div>
</template>

<style>
html,
body {
  font-family: "Gotham A", "Gotham B", Helvetica, sans-serif;
  height: 100%;
}

#app {

  display: flex;
      min-height: 100vh;
  flex-direction: column;

}

.page-content {
  flex-grow: 1;
}

h1 {
  font-family: "Vitesse A", "Vitesse B", Georgia, serif;
  font-weight: 400;
  text-align: center;
  color: #002e5d;
}
</style>

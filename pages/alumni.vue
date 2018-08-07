<template>
    <div class="container">
      <h1 class="d-none">Alumni Stuff</h1>
      <spotlight v-bind:category="1"></spotlight>
    </div>
</template>

<script>
export default {
    name: 'Alumni',
      head () {
    return {
      title: 'BYU Honors Program | Alumni',
      meta: [
        { hid: 'description', name: 'description', content: 'About our company Nuxt.js' }
      ]
    }
  }
}
</script>

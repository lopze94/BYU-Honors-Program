<template>
    <div class="container" id="testimonials">

    <h2 class="py-3">Student Testimonials</h2>
    <div class="card-deck">
      <div class="card border-0">
        <img class="card-img-top rounded-circle"  src="/img/testimonials/connor-lee-wen.jpg">
        <div class="card-body">
          <p class="card-text"><span class="h3 quote">"</span>I joined the Honors Program when I was a freshman after hearing that it offered an approach to 
          learning that encouraged thought and active learning. I haven't been disappointed! Honors courses continue to be my favourite classes on campus; 
          truly helping me making unexpected connections that have shaped the way I think to this day. An added bonus? Community. BYU never felt so personal.
          <span class="h3 quote">"</span></p> </div>
        <div class="card-footer border-0 bg-transparent">
            <h4 class="text-muted text-right">Connor Lee-Wen</h4>
        </div>
      </div>

      <div class="card border-0">
        <img class="card-img-top" src="/img/testimonials/tinesha-zandamela.jpg">
        <div class="card-body">
          <p class="card-text"><span class="h3 quote">"</span>Being part of the Honors Program has pushed me to be a better critical thinker and gave me the 
          opportunity to step outside my comfort zone. Writing my thesis, for example, has not only made me a better researcher and writer, but it has made me 
          a better listener and a more understanding person. The Honors Program helped me grow academically, personally, and spiritually.<span class="h3 quote">"</span></p> </div>
        <div class="card-footer border-0 bg-transparent">
            <h4 class="text-muted text-right">Tinesha Zandamela</h4>
        </div>
      </div>

       <div class="card border-0">
        <img class="card-img-top" src="/img/testimonials/micah-cozzens.jpg">
        <div class="card-body">
          <p class="card-text"><span class="h3 quote">"</span>I enjoyed learning to appreciate the contribution the sciences make to the humanities through interdisciplinary 
          classes such as "Literature and Disease" and "Nationalism and Geography.<span class="h3 quote">"</span></p> </div>
        <div class="card-footer border-0 bg-transparent">
            <h4 class="text-muted text-right">Micah Cozzens</h4>
        </div>
      </div>

    </div>
    </div>
</template>

<script>
export default {
    name: 'Testimonials'
}
</script>

<style scoped>
.quote{
    line-height: 24px;
}

.card{
    box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.10);
}

</style>


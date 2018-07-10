<template>
    <div class="container">

    <h2 class="py-3">Student Testimonials</h2>
    <div class="card-deck">
      <div class="card border-0">
        <img class="card-img-top" src="/img/josuelopez.jpg">
        <div class="card-body">
          <p class="card-text"><span class="h3 quote">"</span>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Impedit cum voluptas totam itaque vero explicabo 
          ea mollitia necessitatibus est dolorum a dolorem illum unde perferendis alias nisi expedita iure, autem nam consequuntur beatae, rem at suscipit
           magnam? Tenetur, sint obcaecati.<span class="h3 quote">"</span></p> </div>
        <div class="card-footer border-0 bg-transparent">
            <h4 class="text-muted text-right">Josue Lopez</h4>
        </div>
      </div>

      <div class="card border-0">
        <img class="card-img-top" src="/img/philipmorgan.jpg">
        <div class="card-body">
          <p class="card-text"><span class="h3 quote">"</span>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Impedit cum voluptas totam itaque vero explicabo 
          ea mollitia necessitatibus est dolorum a dolorem illum. <br> <br> Unde perferendis alias nisi expedita iure, autem nam consequuntur beatae, rem at suscipit
           magnam? Tenetur, sint obcaecati.<span class="h3 quote">"</span></p> </div>
        <div class="card-footer border-0 bg-transparent">
            <h4 class="text-muted text-right">Philip Morgan</h4>
        </div>
      </div>

       <div class="card border-0">
        <img class="card-img-top" src="/img/doohyunkwon.jpg">
        <div class="card-body">
          <p class="card-text"><span class="h3 quote">"</span>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Impedit cum voluptas totam itaque vero explicabo 
          ea mollitia. Unde perferendis alias nisi expedita iure, autem nam consequuntur beatae, rem at suscipit
           magnam? Tenetur, sint obcaecati.<span class="h3 quote">"</span></p> </div>
        <div class="card-footer border-0 bg-transparent">
            <h4 class="text-muted text-right">Doohyun Kwon</h4>
        </div>
      </div>

    </div>
    </div>
</template>

<script>
export default {
    name: 'StudentTestimonials'
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


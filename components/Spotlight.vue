<template>
<div>
    <byu-hero-banner id="hero" image-source="/img/philipmorgan.jpg" class="side-image my-5">
    <span slot="headline">Honors Spotlight</span>
    <span slot="intro-text"><b>Philip Morgan</b> | Finance
    <br>Lorem ipsum dolor sit amet consectetur adipisicing elit. Unde earum possimus itaque nihil. Architecto error porro ullam saepe suscipit enim. Atque dolore quia officiis, voluptate sunt hic repudiandae quaerat dicta.</span>
    <a slot="read-more" data-toggle="modal" data-target="#spotlightModal">
  Read More
</a>
</byu-hero-banner>
<!-- Button trigger modal -->

<!-- Modal -->
<div class="modal fade" id="spotlightModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title card-title" id="exampleModalLabel">Philip Morgan</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body border">
        <p class="h5">Finance
          <br>
          <span class="font-weight-normal text-muted">Strategy Minor</span>
          <br><span class="font-weight-normal text-muted">April 2018</span>
        </p>
<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit, quis! Ullam asperiores ab aut iusto quas inventore nesciunt perferendis explicabo. Impedit quibusdam quidem labore molestiae omnis quas doloremque dolorum minima dignissimos distinctio eveniet, et nobis totam. Hic molestias sint magnam.</p>
<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad ut explicabo facilis debitis repellat maxime qui sunt, atque incidunt porro?</p>
<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Deleniti, adipisci ipsam, expedita fuga asperiores doloribus cumque labore velit id repellendus et. Neque quam quidem maiores similique! Ratione excepturi vitae dolore quisquam eius harum beatae tenetur?</p>
<p class="h6">Future Plans</p>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Id in atque, recusandae quam, facere voluptates soluta natus eveniet optio tempora dicta alias adipisci ea praesentium.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
</div>

</template>

<script>
export default {
  name: "Spotlight"
};
</script>
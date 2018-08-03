<template>
  <div> 
<byu-footer>
    <byu-footer-column>
        <span slot="header">Contact</span>
        <p>
            BYU Honors Advisement Center
            <br> 102 MSRB
            <br> Provo, Utah 84602
            <br> (801) 422-5497
        </p>
        <byu-footer-action-button>
            <a href="https://www.google.com" slot="actiontext">Enrollment</a>
        </byu-footer-action-button>
    </byu-footer-column>
    <byu-footer-column>
        <span slot="header">Related Links</span>
        <a href="https://www.lds.org/?lang=eng">LDS.org</a>
        <a>BYU Alumni</a>
        <a>BYU Today</a>
        <a>BYU Magazine</a>
    </byu-footer-column>
    <byu-footer-column>
        <span slot="header">Connect With Us</span>
        <a>Feedback</a>
        <a>FAQ</a>
        <byu-social-media-links>
            <!--Note: These all have text that will be hidden. The text should be there to help screen readers.-->
            <a class="facebook" href="https://www.facebook.com/ByuHonors/">Facebook</a>
            <a class="instagram" href="https://www.instagram.com/byuHonors/">Instagram</a>
            <a class="twitter" href="https://twitter.com/byuhonorsprog">Twitter</a>
            <a class="linkedin" href="https://www.linkedin.com/company/byu-honors-program/">Linkedin</a>
            <a class="youtube" href="https://www.youtube.com/channel/UCMXWjBiqJgKRQ02Y8z34_Qg">YouTube</a>
        </byu-social-media-links>
        <a>Subscribe</a>
    </byu-footer-column>
</byu-footer>
  </div>
</template>

<script>
export default {
  name: "AppFooter"
};
</script>
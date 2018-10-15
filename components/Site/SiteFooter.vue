<template>
  <div> 
<byu-footer>
    <byu-footer-column>
        <span slot="header">Contact</span>
        <p>
            BYU Honors Program
            <br> 102 MSRB
            <br> Provo, Utah 84602
            <br> (801) 422-5497
        </p>
        <byu-footer-action-button>
            <a href="javascript: void (window.open('https://fmsecure.byu.edu/honorsDBPortal/enrollment.php', '_blank', 'width=800, height=600'));" slot="actiontext">Enrollment<font-awesome-icon icon="external-link-alt" class="ml-1"/></a>
        </byu-footer-action-button>
    </byu-footer-column>
    <byu-footer-column>
        <span slot="header">Related Links</span>
        <a href="https://www.byu.edu">Brigham Young University</a>
      <a href="" onclick="Calendly.showPopupWidget('https://calendly.com/byu-honors-program');return false;">Schedule Appointment</a>
      <router-link to="/directory">Honors Directory</router-link>

    </byu-footer-column>
    <byu-footer-column>
        <span slot="header">Connect With Us</span>
                <router-link to="/about/faq">Honors FAQ</router-link>
        <router-link to="/forms">Honors Forms</router-link>
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
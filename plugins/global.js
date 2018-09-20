import Vue from 'vue'
import SiteHeader from '../components/Site/SiteHeader.vue'
import SiteFooter from '../components/Site/SiteFooter.vue'
import Hero from '../components/Site/Hero.vue'
import Spotlight from '../components/Spotlight.vue'
import GlobalHero from '../components/global/globalhero.vue'
import Navigation from '../components/global/navigation.vue'
import Events from '../components/global/events.vue'
import { library } from '@fortawesome/fontawesome-svg-core'
import { faExternalLinkAlt } from '@fortawesome/free-solid-svg-icons'
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'

library.add(faExternalLinkAlt)

Vue.component('font-awesome-icon', FontAwesomeIcon)

Vue.component('SiteHeader', SiteHeader);
Vue.component('SiteFooter', SiteFooter);
Vue.component('Hero', Hero);
Vue.component('Spotlight', Spotlight);
Vue.component('GlobalHero', GlobalHero);
Vue.component('Navigation', Navigation);
Vue.component('Events', Events);





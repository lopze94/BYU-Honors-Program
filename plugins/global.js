import Vue from 'vue'
import SiteHeader from '../components/Site/SiteHeader.vue'
import SiteFooter from '../components/Site/SiteFooter.vue'
import Hero from '../components/Site/Hero.vue'
import Spotlight from '../components/Spotlight.vue'
import GlobalHero from '../components/global/globalhero.vue'


// file system setup


Vue.component('SiteHeader', SiteHeader);
Vue.component('SiteFooter', SiteFooter);
Vue.component('Hero', Hero);
Vue.component('Spotlight', Spotlight);
Vue.component('GlobalHero', GlobalHero);



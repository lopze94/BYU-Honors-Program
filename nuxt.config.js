const pkg = require('./package')
const axios = require('axios')
const webpack = require('webpack')

module.exports = {

  mode: 'universal',

  /*
   ** Headers of the page
   */
  head: {
    title: pkg.name,
    meta: [{
        charset: 'utf-8'
      },
      {
        name: 'viewport',
        content: 'width=device-width, initial-scale=1'
      },
      {
        hid: 'description',
        name: 'description',
        content: pkg.description
      },
      {
        name: 'theme-color',
        content: '#002E5D'
      }

    ],
    link: [{
        rel: 'icon',
        type: 'image/x-icon',
        href: '/favicon.ico'
      },
      {
        rel: 'shortcut icon',
        href: '/favicon.ico',
        type: 'image/x-icon'
      },
      {
        rel: 'stylesheet',
        href: 'https://cdn.byu.edu/byu-theme-components/latest/byu-theme-components.min.css'
      },
      {
        rel: 'stylesheet',
        href: 'https://cdn.byu.edu/byu-hero-banner/latest/byu-hero-banner.min.css'
      },
      {
        rel: 'stylesheet',
        href: 'https://cdn.byu.edu/byu-calendar-components/latest/byu-calendar.min.css'
      }
    ],
    script: [{
        async: 'true',
        src: 'https://cdn.byu.edu/byu-theme-components/latest/byu-theme-components.min.js'
      },
      {
        async: 'true',
        src: 'https://cdn.byu.edu/byu-hero-banner/latest/byu-hero-banner.min.js'
      },
      {
        src: 'https://code.jquery.com/jquery-3.3.1.slim.min.js',
        integrity: 'sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo',
        crossorigin: 'anonymous'
      },
      {
        src: 'https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js',
        integrity: 'sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ',
        crossorigin: 'anonymous'
      },
      {
        src: 'https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js',
        integrity: 'sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm',
        crossorigin: 'anonymous'
      },
      {
        src: 'https://www.google.com/recaptcha/api.js'
      },
      {
        src: '//cdn.byu.edu/byu-calendar-components/latest/byu-calendar.min.js'
      }
    ]
  },



  /*
   ** Customize the progress-bar color
   */
  loading: {
    color: '#FFFFFF'
  },

  /*
   ** Global CSS
   */
  css: [
    '@/assets/fonts.css'
  ],

  /*
   ** Plugins to load before mounting the App
   */
  plugins: [
    '~/plugins/global.js'
  ],

  /*
   ** Nuxt.js modules
   */
  modules: [
    // Doc: https://github.com/nuxt-community/axios-module#usage
    '@nuxtjs/axios',
    // Doc: https://bootstrap-vue.js.org/docs/
    'bootstrap-vue/nuxt',
    '@nuxtjs/proxy'
  ],
  /*
   ** Axios module configuration
   */
  axios: {
    // See https://github.com/nuxt-community/axios-module#options
  },

          proxy: {
            '/api': {
              target: 'http://127.0.0.1:3000',
              secure: false
            }
          },

              generate: {
                routes: function () {
                  return axios.get('http://127.0.0.1:3000/api/stories')
                    .then((res) => {
                      return res.data.stories.map((story) => {
                        return story.link
                      })
                    })
                }
              },
  /*
   ** Build configuration
   */
  build: {
    /*
     ** You can extend webpack config here
     */
    plugins: [
      new webpack.ProvidePlugin({
        '_': 'lodash'
        // ...etc.
      })
    ],
    extend(config, ctx) {
    }
  }
}


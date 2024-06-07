import './assets/main.scss'

import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
// Vuetify
import 'vuetify/styles'
import { createVuetify } from 'vuetify'
import * as components from 'vuetify/components'
import * as directives from 'vuetify/directives'
//masonry
import MasonryWall from '@yeger/vue-masonry-wall'
//axios
import axios from 'axios'
//recaptcha
import { VueReCaptcha } from 'vue-recaptcha-v3'

const vuetify = createVuetify({
  components,
  directives,
})

const app = createApp(App)

app.use(router)
app.use(vuetify)
app.use(MasonryWall)
app.use(axios)
app.use(VueReCaptcha, {
  siteKey: '6LewlPIpAAAAAEtkvHLRWPCDPRl0oicbbJwOXmHg',
  loaderOptions: {
    useRecaptchaNet: true
  }
})

app.mount('#app')


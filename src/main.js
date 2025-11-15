import { createApp } from 'vue'
import App from './App.vue'

// Import global styles
import './assets/css/reset.css'
import './assets/css/variables.css'
import './assets/css/global.css'

// Create and mount the app
const app = createApp(App)

// Mount to DOM
app.mount('#app')

import { createApp } from 'vue'
import { createRouter, createWebHistory } from 'vue-router'
import App from './App.vue'

// Pages
import OverviewPage from './pages/OverviewPage.vue'
import ThoughtsPage from './pages/ThoughtsPage.vue'
import ThoughtPostPage from './pages/ThoughtPostPage.vue'
import PortfolioPage from './pages/PortfolioPage.vue'
import ProjectDetailPage from './pages/ProjectDetailPage.vue'
import ResumePage from './pages/ResumePage.vue'

// Import global styles
import './assets/css/reset.css'
import './assets/css/variables.css'
import './assets/css/global.css'

const routes = [
  { path: '/', component: OverviewPage },
  { path: '/thoughts', component: ThoughtsPage },
  { path: '/thoughts/:slug', component: ThoughtPostPage },
  { path: '/portfolio', component: PortfolioPage },
  { path: '/portfolio/:slug', component: ProjectDetailPage },
  { path: '/resume', component: ResumePage },
]

const router = createRouter({
  history: createWebHistory(),
  routes,
})

const app = createApp(App)
app.use(router)
app.mount('#app')

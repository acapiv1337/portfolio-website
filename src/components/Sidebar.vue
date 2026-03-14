<template>
  <aside :class="['sidebar', { 'sidebar--open': isOpen }]">
    <div class="sidebar-header">
      <a href="/profile.jpg" target="_blank" rel="noopener noreferrer">
        <img src="/profile.jpg" alt="Muhammad Amirul Asyraf" class="sidebar-avatar" />
      </a>
      <p class="sidebar-name">Muhammad Amirul Asyraf bin Roslan</p>
    </div>

    <nav class="sidebar-nav">
      <div class="nav-group">
        <p class="nav-label">Navigate</p>
        <router-link
          v-for="item in navItems"
          :key="item.title"
          :to="item.url"
          :class="['nav-item', { active: isActive(item.url) }]"
          @click="emit('close')"
        >
          <component :is="item.icon" :size="16" />
          <span>{{ item.title }}</span>
        </router-link>
      </div>
    </nav>

    <div class="sidebar-footer">
      <a v-for="social in socials" :key="social.label" :href="social.href" :title="social.label" class="social-link">
        <component :is="social.icon" :size="22" />
      </a>
    </div>

    <div class="sidebar-bottom">
      <p class="created-text">© acapans™ {{ currentYear }}</p>
    </div>
  </aside>
</template>

<script setup>
import { useRoute } from 'vue-router'
import { Home, Briefcase, FileText, Github, Linkedin, Mail, Youtube } from 'lucide-vue-next'

defineProps({
  isOpen: {
    type: Boolean,
    default: false
  }
})

const emit = defineEmits(['close'])

const route = useRoute()
const currentYear = new Date().getFullYear()

const navItems = [
  { title: 'Overview', url: '/', icon: Home },
  { title: 'Portfolio', url: '/portfolio', icon: Briefcase },
  { title: 'Resume', url: '/resume', icon: FileText },
]

const socials = [
  { icon: Github, href: 'https://github.com/acapiv1337', label: 'GitHub' },
  { icon: Linkedin, href: 'https://linkedin.com/in/amirul-asyraf-roslan', label: 'LinkedIn' },
  { icon: Mail, href: 'mailto:amirlasyrf.00@gmail.com', label: 'Email' },
  { icon: Youtube, href: 'https://www.youtube.com/@muhammadamirulasyrafbinros1257', label: 'YouTube' },
]

const isActive = (url) => {
  return route.path === url
}
</script>

<style scoped>
.sidebar {
  width: 18rem;
  border-right: 1px solid var(--color-sidebar-border);
  background-color: var(--color-sidebar-bg);
  display: flex;
  flex-direction: column;
  padding: 1.5rem 0;
  overflow-y: auto;
  position: fixed;
  left: 0;
  top: 0;
  height: 100vh;
  z-index: 1000;
}

.sidebar-header {
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 1rem;
  padding: 1.5rem 1.25rem;
  text-align: center;
}

.sidebar-avatar {
  width: 11rem;
  height: 11rem;
  border-radius: 50%;
  object-fit: cover;
  flex-shrink: 0;
  border: 2px solid var(--color-sidebar-border);
}

.avatar-text {
  font-size: 0.75rem;
  font-weight: 600;
  color: var(--color-sidebar-bg);
  font-family: var(--font-family-mono);
}

.sidebar-name {
  font-size: 0.8rem;
  font-weight: 700;
  color: var(--color-sidebar-text-active);
  line-height: 1.3;
  white-space: nowrap;
  letter-spacing: 0.5px;
  margin: 0;
  font-family: 'Space Grotesk', var(--font-family-base);
}

.sidebar-role {
  font-size: 0.75rem;
  font-family: var(--font-family-mono);
  color: var(--color-sidebar-text);
  margin: 0;
}

.sidebar-nav {
  flex: 1;
  padding: 0 0.75rem;
  overflow-y: auto;
}

.nav-group {
  margin-bottom: 1.5rem;
}

.nav-label {
  font-size: 0.625rem;
  font-family: var(--font-family-mono);
  text-transform: uppercase;
  letter-spacing: 0.2em;
  color: var(--color-sidebar-text);
  padding: 0 1rem;
  margin-bottom: 0.5rem;
}

.nav-item {
  display: flex;
  align-items: center;
  gap: 0.75rem;
  padding: 0.5rem 1rem;
  border-radius: 0.375rem;
  color: var(--color-sidebar-text);
  text-decoration: none;
  font-size: 0.875rem;
  transition: all var(--transition-fast);
  border-right: 2px solid transparent;
}

.nav-item:hover {
  background-color: var(--color-sidebar-accent);
  color: var(--color-sidebar-text-active);
}

.nav-item.active {
  color: var(--color-sidebar-text-active);
  background-color: var(--color-sidebar-accent);
  border-right-color: var(--color-sidebar-text-active);
}

.sidebar-footer {
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 1.25rem;
  padding: 1rem 1.25rem;
  border-top: 1px solid var(--color-sidebar-border);
}

.social-link {
  display: flex;
  align-items: center;
  justify-content: center;
  color: var(--color-sidebar-text);
  transition: color var(--transition-fast);
  text-decoration: none;
}

.social-link:hover {
  color: var(--color-sidebar-text-active);
}

.sidebar-bottom {
  padding: 1rem 1.25rem;
  border-top: 1px solid var(--color-sidebar-border);
  margin-top: auto;
}

.created-text {
  font-size: 0.65rem;
  font-family: var(--font-family-mono);
  color: var(--color-sidebar-text);
  text-align: center;
  margin: 0;
  letter-spacing: 0.3px;
}

@media (max-width: 768px) {
  .sidebar {
    width: 16rem;
    transform: translateX(-100%);
    transition: transform 0.25s ease;
  }

  .sidebar--open {
    transform: translateX(0);
  }
}
</style>

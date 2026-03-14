<template>
  <div class="app-container">
    <Sidebar :is-open="sidebarOpen" @close="sidebarOpen = false" />
    <div v-if="sidebarOpen" class="sidebar-overlay" @click="sidebarOpen = false" />
    <div class="main-content">
      <header class="header">
        <div class="header-content">
          <button class="sidebar-toggle" @click="toggleSidebar">
            <Menu :size="20" />
          </button>
        </div>
      </header>
      <main class="main">
        <RouterView />
      </main>
    </div>
  </div>
</template>

<script setup>
import { ref } from 'vue'
import { Menu } from 'lucide-vue-next'
import Sidebar from './components/Sidebar.vue'

const sidebarOpen = ref(false)

const toggleSidebar = () => {
  sidebarOpen.value = !sidebarOpen.value
}
</script>

<style scoped>
.app-container {
  display: flex;
  min-height: 100vh;
  background-color: var(--color-background);
  color: var(--color-foreground);
}

.main-content {
  flex: 1;
  display: flex;
  flex-direction: column;
  overflow: hidden;
  margin-left: 18rem;
}

.header {
  height: 3rem;
  border-bottom: 1px solid var(--color-border);
  background-color: var(--color-background-soft);
  padding: 0 1.5rem;
  display: flex;
  align-items: center;
}

.header-content {
  display: flex;
  align-items: center;
  width: 100%;
}

.sidebar-toggle {
  display: none;
  background: none;
  border: none;
  color: var(--color-foreground-muted);
  cursor: pointer;
  padding: 0.5rem;
  transition: color var(--transition-fast);
}

.sidebar-toggle:hover {
  color: var(--color-foreground);
}

.main {
  flex: 1;
  overflow-y: auto;
  padding: 2rem;
}

.sidebar-overlay {
  display: none;
}

@media (max-width: 768px) {
  .main-content {
    margin-left: 0;
  }

  .sidebar-toggle {
    display: flex;
    align-items: center;
    justify-content: center;
  }

  .sidebar-overlay {
    display: block;
    position: fixed;
    inset: 0;
    background: rgba(0, 0, 0, 0.5);
    z-index: 999;
  }

  .main {
    padding: 1.25rem;
  }
}
</style>

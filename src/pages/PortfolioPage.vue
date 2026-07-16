<template>
  <div class="page-container">
    <div class="page-header">
      <h1>Portfolio<span class="dot">.</span></h1>
      <p class="subtitle">Things I've built, shipped, and open-sourced.</p>
    </div>

    <section v-for="section in sections" :key="section.label" class="section">
      <div class="section-header">
        <h2 class="section-title">{{ section.label }}</h2>
        <span class="section-count">{{ section.projects.length }}</span>
      </div>
      <div class="projects-grid">
        <router-link
          v-for="(project, i) in section.projects"
          :key="i"
          :to="`/portfolio/${project.slug}`"
          class="project-card"
        >
          <div class="card-header">
            <h3 class="project-title">{{ project.title }}</h3>
            <span :class="['project-status', project.status]">{{ project.status }}</span>
          </div>
          <p class="project-description">{{ project.description }}</p>
          <div class="tech-tags">
            <span v-for="tech in project.tech" :key="tech" class="tech-tag">{{ tech }}</span>
          </div>
        </router-link>
      </div>
    </section>
  </div>
</template>

<script setup>
import { computed } from 'vue'
import { projects } from '../data/projects.js'

const sections = computed(() => {
  const order = ['work', 'personal']
  const labels = { work: 'Work', personal: 'Personal Projects' }
  return order.map(key => ({
    label: labels[key],
    projects: projects.filter(p => p.category === key)
  })).filter(s => s.projects.length > 0)
})
</script>

<style scoped>
.page-container {
  max-width: 80rem;
  margin: 0 auto;
}

.page-header {
  margin-bottom: 2rem;
}

.page-header h1 {
  font-size: 1.5rem;
  font-weight: 600;
  margin-bottom: 0.25rem;
}

.dot {
  color: var(--color-primary);
}

.subtitle {
  font-size: 0.875rem;
  font-family: var(--font-family-mono);
  color: var(--color-foreground-muted);
}

.section {
  margin-bottom: 2.5rem;
}

.section:last-child {
  margin-bottom: 0;
}

.section-header {
  display: flex;
  align-items: center;
  gap: 0.75rem;
  margin-bottom: 1rem;
}

.section-title {
  font-size: 0.9375rem;
  font-weight: 500;
  color: var(--color-foreground);
  margin: 0;
}

.section-count {
  font-size: 0.75rem;
  font-family: var(--font-family-mono);
  color: var(--color-foreground-muted);
  background-color: var(--color-secondary);
  padding: 0.125rem 0.5rem;
  border-radius: 0.75rem;
}

.projects-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(20rem, 1fr));
  gap: 1rem;
}

.project-card {
  padding: 1.25rem;
  border-radius: 0.5rem;
  background-color: var(--color-card);
  border: 1px solid var(--color-border);
  transition: border-color var(--transition-fast);
  text-decoration: none;
  color: inherit;
  display: block;
  cursor: pointer;
}

.project-card:hover {
  border-color: rgba(0, 212, 255, 0.3);
}

.card-header {
  display: flex;
  align-items: flex-start;
  justify-content: space-between;
  gap: 1rem;
  margin-bottom: 0.75rem;
}

.project-title {
  font-size: 1rem;
  font-weight: 500;
  margin: 0;
  flex: 1;
}

.project-status {
  font-size: 0.75rem;
  font-family: var(--font-family-mono);
  padding: 0.25rem 0.5rem;
  border-radius: 0.25rem;
  white-space: nowrap;
}

.project-status.live {
  background-color: rgba(16, 185, 129, 0.1);
  color: var(--color-chart-2);
}

.project-status.building {
  background-color: rgba(245, 158, 11, 0.1);
  color: var(--color-chart-4);
}

.project-status.archived {
  background-color: var(--color-card-hover);
  color: var(--color-foreground-muted);
}

.project-description {
  font-size: 0.875rem;
  color: var(--color-foreground-muted);
  line-height: 1.5;
  margin: 0 0 1rem 0;
}

.tech-tags {
  display: flex;
  gap: 0.5rem;
  flex-wrap: wrap;
}

.tech-tag {
  font-size: 0.75rem;
  font-family: var(--font-family-mono);
  padding: 0.25rem 0.5rem;
  border-radius: 0.25rem;
  background-color: var(--color-secondary);
  color: var(--color-secondary-foreground);
}
</style>

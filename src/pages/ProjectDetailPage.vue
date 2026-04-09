<template>
  <div class="page-container">
    <div v-if="project">
      <router-link to="/portfolio" class="back-link">
        <ChevronLeft :size="14" />
        Back
      </router-link>

      <header class="project-header">
        <div class="project-meta">
          <span v-for="tech in project.tech" :key="tech" class="tech-tag">{{ tech }}</span>
          <span :class="['project-status', project.status]">{{ project.status }}</span>
        </div>
        <h1 class="project-title">{{ project.title }}</h1>
        <p class="project-description">{{ project.description }}</p>
      </header>

      <div v-if="project.content" class="project-body" v-html="renderedContent" />
    </div>

    <div v-else class="not-found">
      <p>Project not found.</p>
      <router-link to="/portfolio" class="back-link">
        <ChevronLeft :size="14" />
        Back to Portfolio
      </router-link>
    </div>
  </div>
</template>

<script setup>
import { computed } from 'vue'
import { useRoute } from 'vue-router'
import { marked } from 'marked'
import { ChevronLeft } from 'lucide-vue-next'
import { getProjectBySlug } from '../data/projects.js'

const route = useRoute()
const project = computed(() => getProjectBySlug(route.params.slug))
const renderedContent = computed(() => project.value?.content ? marked(project.value.content) : '')
</script>

<style scoped>
.page-container {
  max-width: 44rem;
  margin: 0 auto;
}

.back-link {
  display: inline-flex;
  align-items: center;
  gap: 0.25rem;
  font-size: 0.8rem;
  font-family: var(--font-family-mono);
  color: var(--color-foreground-muted);
  text-decoration: none;
  margin-bottom: 2rem;
  transition: color var(--transition-fast);
}

.back-link:hover {
  color: var(--color-primary);
}

.project-header {
  margin-bottom: 2.5rem;
  padding-bottom: 2rem;
  border-bottom: 1px solid var(--color-border);
}

.project-meta {
  display: flex;
  align-items: center;
  gap: 0.5rem;
  flex-wrap: wrap;
  margin-bottom: 1rem;
}

.tech-tag {
  font-size: 0.75rem;
  font-family: var(--font-family-mono);
  padding: 0.25rem 0.5rem;
  border-radius: 0.25rem;
  background-color: var(--color-secondary);
  color: var(--color-secondary-foreground);
}

.project-status {
  font-size: 0.75rem;
  font-family: var(--font-family-mono);
  padding: 0.25rem 0.5rem;
  border-radius: 0.25rem;
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

.project-title {
  font-size: 1.75rem;
  font-weight: 700;
  line-height: 1.3;
  margin: 0 0 0.75rem;
}

.project-description {
  font-size: 0.9375rem;
  color: var(--color-foreground-muted);
  line-height: 1.6;
  margin: 0;
}

.not-found {
  display: flex;
  flex-direction: column;
  gap: 1rem;
  color: var(--color-foreground-muted);
}

.project-body :deep(h1),
.project-body :deep(h2) {
  font-size: 1.125rem;
  font-weight: 600;
  margin: 2rem 0 0.75rem;
  color: var(--color-foreground);
}

.project-body :deep(h3) {
  font-size: 1rem;
  font-weight: 600;
  margin: 1.5rem 0 0.5rem;
  color: var(--color-foreground);
}

.project-body :deep(p) {
  font-size: 0.9375rem;
  line-height: 1.75;
  margin-bottom: 1.25rem;
  color: var(--color-foreground-muted);
}

.project-body :deep(ul),
.project-body :deep(ol) {
  padding-left: 1.5rem;
  margin-bottom: 1.25rem;
}

.project-body :deep(li) {
  font-size: 0.9375rem;
  line-height: 1.75;
  color: var(--color-foreground-muted);
  margin-bottom: 0.25rem;
}

.project-body :deep(strong) {
  color: var(--color-foreground);
  font-weight: 600;
}

.project-body :deep(code) {
  font-family: var(--font-family-mono);
  font-size: 0.8125rem;
  background-color: rgba(0, 212, 255, 0.08);
  color: var(--color-primary);
  padding: 0.1rem 0.35rem;
  border-radius: 0.25rem;
}

.project-body :deep(pre) {
  background-color: var(--color-sidebar-bg);
  border: 1px solid var(--color-border);
  border-radius: 0.5rem;
  padding: 1.25rem;
  overflow-x: auto;
  margin-bottom: 1.25rem;
}

.project-body :deep(pre code) {
  background: none;
  padding: 0;
  color: var(--color-foreground);
}

.project-body :deep(a) {
  color: var(--color-primary);
  text-decoration: underline;
  text-underline-offset: 3px;
}

.project-body :deep(hr) {
  border: none;
  border-top: 1px solid var(--color-border);
  margin: 2rem 0;
}
</style>

<template>
  <div class="page-container">
    <div v-if="post">
      <router-link to="/thoughts" class="back-link">
        <ChevronLeft :size="14" />
        Back
      </router-link>

      <header class="post-header">
        <div class="post-meta">
          <span class="date">{{ post.date }}</span>
          <span class="tag">{{ post.tag }}</span>
        </div>
        <h1 class="post-title">{{ post.title }}</h1>
      </header>

      <div class="post-body" v-html="renderedContent" />
    </div>

    <div v-else class="not-found">
      <p>Post not found.</p>
      <router-link to="/thoughts" class="back-link">
        <ChevronLeft :size="14" />
        Back to Thoughts
      </router-link>
    </div>
  </div>
</template>

<script setup>
import { computed } from 'vue'
import { useRoute } from 'vue-router'
import { marked } from 'marked'
import { ChevronLeft } from 'lucide-vue-next'
import { getPostBySlug } from '../data/posts.js'

const route = useRoute()
const post = computed(() => getPostBySlug(route.params.slug))
const renderedContent = computed(() => post.value ? marked(post.value.content) : '')
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

.post-header {
  margin-bottom: 2.5rem;
  padding-bottom: 2rem;
  border-bottom: 1px solid var(--color-border);
}

.post-meta {
  display: flex;
  align-items: center;
  gap: 0.75rem;
  margin-bottom: 1rem;
}

.date {
  font-size: 0.75rem;
  font-family: var(--font-family-mono);
  text-transform: uppercase;
  letter-spacing: 0.125em;
  color: var(--color-foreground-muted);
}

.tag {
  font-size: 0.75rem;
  font-family: var(--font-family-mono);
  padding: 0.25rem 0.5rem;
  border-radius: 0.25rem;
  background-color: rgba(0, 212, 255, 0.1);
  color: var(--color-primary);
}

.post-title {
  font-size: 1.75rem;
  font-weight: 700;
  line-height: 1.3;
  margin: 0;
}

.not-found {
  display: flex;
  flex-direction: column;
  gap: 1rem;
  color: var(--color-foreground-muted);
}

/* Markdown body styles */
.post-body :deep(h1) {
  display: none; /* title is already shown in header */
}

.post-body :deep(h2) {
  font-size: 1.125rem;
  font-weight: 600;
  margin: 2rem 0 0.75rem;
  color: var(--color-foreground);
}

.post-body :deep(h3) {
  font-size: 1rem;
  font-weight: 600;
  margin: 1.5rem 0 0.5rem;
  color: var(--color-foreground);
}

.post-body :deep(p) {
  font-size: 0.9375rem;
  line-height: 1.75;
  margin-bottom: 1.25rem;
  color: var(--color-foreground-muted);
}

.post-body :deep(ul),
.post-body :deep(ol) {
  padding-left: 1.5rem;
  margin-bottom: 1.25rem;
}

.post-body :deep(li) {
  font-size: 0.9375rem;
  line-height: 1.75;
  color: var(--color-foreground-muted);
  margin-bottom: 0.25rem;
}

.post-body :deep(strong) {
  color: var(--color-foreground);
  font-weight: 600;
}

.post-body :deep(code) {
  font-family: var(--font-family-mono);
  font-size: 0.8125rem;
  background-color: rgba(0, 212, 255, 0.08);
  color: var(--color-primary);
  padding: 0.1rem 0.35rem;
  border-radius: 0.25rem;
}

.post-body :deep(pre) {
  background-color: var(--color-sidebar-bg);
  border: 1px solid var(--color-border);
  border-radius: 0.5rem;
  padding: 1.25rem;
  overflow-x: auto;
  margin-bottom: 1.25rem;
}

.post-body :deep(pre code) {
  background: none;
  padding: 0;
  color: var(--color-foreground);
}

.post-body :deep(blockquote) {
  border-left: 3px solid var(--color-primary);
  padding-left: 1rem;
  margin: 1.5rem 0;
  color: var(--color-foreground-muted);
  font-style: italic;
}

.post-body :deep(a) {
  color: var(--color-primary);
  text-decoration: underline;
  text-underline-offset: 3px;
}

.post-body :deep(hr) {
  border: none;
  border-top: 1px solid var(--color-border);
  margin: 2rem 0;
}
</style>

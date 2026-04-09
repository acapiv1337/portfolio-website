<template>
  <div class="page-container">
    <div class="page-header">
      <h1>Thoughts<span class="dot">.</span></h1>
      <p class="subtitle">Personal notes on life, work, and interesting topics.</p>
    </div>

    <div class="thoughts-list">
      <router-link
        v-for="post in posts"
        :key="post.slug"
        :to="`/thoughts/${post.slug}`"
        class="thought-item"
      >
        <div class="item-meta">
          <span class="date">{{ post.date }}</span>
          <span class="tag">{{ post.tag }}</span>
        </div>
        <h3 class="thought-title">{{ post.title }}</h3>
        <p class="thought-excerpt">{{ post.excerpt }}</p>
      </router-link>
    </div>
  </div>
</template>

<script setup>
import { posts } from '../data/posts.js'
</script>

<style scoped>
.page-container {
  max-width: 56rem;
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

.thoughts-list {
  border-top: 1px solid var(--color-border);
}

.thought-item {
  display: block;
  padding: 1.5rem 0;
  border-bottom: 1px solid var(--color-border);
  cursor: pointer;
  transition: color var(--transition-fast);
  text-decoration: none;
  color: inherit;
}

.thought-item:hover .thought-title {
  color: var(--color-primary);
}

.item-meta {
  display: flex;
  align-items: center;
  gap: 0.75rem;
  margin-bottom: 0.5rem;
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

.thought-title {
  font-size: 1.125rem;
  font-weight: 500;
  margin: 0 0 0.375rem 0;
  transition: color var(--transition-fast);
}

.thought-excerpt {
  font-size: 0.875rem;
  color: var(--color-foreground-muted);
  line-height: 1.5;
  margin: 0;
}
</style>

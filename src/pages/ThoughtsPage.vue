<template>
  <div class="page-container">
    <div class="page-header">
      <h1>Thoughts<span class="dot">.</span></h1>
      <p class="subtitle">Unfiltered notes on data, code, and everything in between.</p>
    </div>

    <div class="thoughts-list">
      <article v-for="(thought, i) in thoughts" :key="i" class="thought-item">
        <div class="item-meta">
          <span class="date">{{ thought.date }}</span>
          <span class="tag">{{ thought.tag }}</span>
        </div>
        <h3 class="thought-title">{{ thought.title }}</h3>
        <p class="thought-excerpt">{{ thought.excerpt }}</p>
      </article>
    </div>
  </div>
</template>

<script setup>
const thoughts = [
  {
    date: 'Feb 24, 2026',
    title: 'Why feature engineering still matters in the age of LLMs',
    excerpt: 'Everyone\'s rushing to fine-tune transformers, but the quiet art of crafting the right features from raw data still wins competitions and ships better products.',
    tag: 'ML',
  },
  {
    date: 'Feb 22, 2026',
    title: 'Notes on building data pipelines that don\'t break at 3am',
    excerpt: 'After years of midnight PagerDuty alerts, here\'s what I\'ve learned about building resilient ETL pipelines that let you sleep.',
    tag: 'Engineering',
  },
  {
    date: 'Feb 19, 2026',
    title: 'The quiet power of exploratory data analysis',
    excerpt: 'Before you build the model, sit with the data. Plot it. Squint at it. The best insights come from patient observation, not clever algorithms.',
    tag: 'Data',
  },
  {
    date: 'Feb 15, 2026',
    title: 'On imposter syndrome in tech',
    excerpt: 'Six years in, and I still Google basic pandas syntax. Turns out that\'s completely normal — and maybe even healthy.',
    tag: 'Life',
  },
  {
    date: 'Feb 12, 2026',
    title: 'Building in public: my open-source anomaly detector',
    excerpt: 'Week 8 of building an anomaly detection library. This week: benchmarking against isolation forests and getting roasted on HN.',
    tag: 'Building',
  },
]
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
  padding: 1.5rem 0;
  border-bottom: 1px solid var(--color-border);
  cursor: pointer;
  transition: color var(--transition-fast);
}

.thought-item:hover {
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
}

.thought-excerpt {
  font-size: 0.875rem;
  color: var(--color-foreground-muted);
  line-height: 1.5;
  margin: 0;
}
</style>

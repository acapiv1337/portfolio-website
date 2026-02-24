<template>
  <div class="page-container">
    <div class="page-header">
      <h1>Welcome back<span class="dot">.</span></h1>
      <p class="subtitle">Here's your personal dashboard — thoughts, work, and more.</p>
    </div>

    <!-- Stats Grid -->
    <div class="stats-grid">
      <div v-for="(stat, i) in stats" :key="stat.label" class="stat-card">
        <div class="stat-header">
          <component :is="stat.icon" :size="16" class="stat-icon" />
          <span class="stat-change">{{ stat.change }}</span>
        </div>
        <p class="stat-value">{{ stat.value }}</p>
        <p class="stat-label">{{ stat.label }}</p>
      </div>
    </div>

    <!-- Two Column Section -->
    <div class="grid-2">
      <!-- Recent Thoughts -->
      <div class="card">
        <h2 class="card-title">Recent Thoughts</h2>
        <div class="list">
          <div v-for="thought in recentThoughts" :key="thought.title" class="list-item">
            <div class="item-meta">
              <span class="date">{{ thought.date }}</span>
              <span class="tag">{{ thought.tag }}</span>
            </div>
            <p class="item-title">{{ thought.title }}</p>
          </div>
        </div>
      </div>

      <!-- Recent Projects -->
      <div class="card">
        <h2 class="card-title">Projects</h2>
        <div class="list">
          <div v-for="project in recentProjects" :key="project.name" class="list-item-project">
            <div>
              <p class="item-title">{{ project.name }}</p>
              <p class="item-tech">{{ project.tech }}</p>
            </div>
            <span :class="['project-status', project.status]">{{ project.status }}</span>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { Brain, Briefcase, FileText, TrendingUp } from 'lucide-vue-next'

const stats = [
  { label: 'Thoughts Written', value: '47', icon: Brain, change: '+3 this week' },
  { label: 'Projects Shipped', value: '12', icon: Briefcase, change: '2 active' },
  { label: 'Years Experience', value: '6+', icon: TrendingUp, change: 'data science' },
  { label: 'Publications', value: '8', icon: FileText, change: '3 cited' },
]

const recentThoughts = [
  {
    date: 'Feb 24',
    title: 'Why feature engineering still matters in the age of LLMs',
    tag: 'ML',
  },
  {
    date: 'Feb 22',
    title: 'Notes on building data pipelines that don\'t break at 3am',
    tag: 'Engineering',
  },
  {
    date: 'Feb 19',
    title: 'The quiet power of exploratory data analysis',
    tag: 'Data',
  },
]

const recentProjects = [
  { name: 'Anomaly Detector', tech: 'PyTorch · FastAPI', status: 'live' },
  { name: 'NLP Dashboard', tech: 'React · D3.js', status: 'live' },
  { name: 'Data Pipeline CLI', tech: 'Python · Airflow', status: 'building' },
]
</script>

<style scoped>
.page-container {
  max-width: 80rem;
  margin: 0 auto;
  space-y: 2rem;
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

.stats-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(12rem, 1fr));
  gap: 1rem;
  margin-bottom: 2rem;
}

.stat-card {
  padding: 1rem;
  border-radius: 0.5rem;
  background-color: var(--color-card);
  border: 1px solid var(--color-border);
}

.stat-header {
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin-bottom: 0.75rem;
}

.stat-icon {
  color: var(--color-primary);
}

.stat-change {
  font-size: 0.75rem;
  font-family: var(--font-family-mono);
  color: var(--color-foreground-muted);
}

.stat-value {
  font-size: 1.5rem;
  font-weight: 600;
  margin: 0 0 0.25rem 0;
}

.stat-label {
  font-size: 0.75rem;
  color: var(--color-foreground-muted);
  margin: 0;
}

.grid-2 {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(24rem, 1fr));
  gap: 1.5rem;
}

.card {
  padding: 1.25rem;
  border-radius: 0.5rem;
  background-color: var(--color-card);
  border: 1px solid var(--color-border);
}

.card-title {
  font-size: 0.875rem;
  font-family: var(--font-family-mono);
  text-transform: uppercase;
  letter-spacing: 0.125em;
  color: var(--color-foreground-muted);
  margin: 0 0 1rem 0;
}

.list {
  space-y: 0;
  border-top: 1px solid var(--color-border);
}

.list-item,
.list-item-project {
  padding: 0.75rem 0;
  border-bottom: 1px solid var(--color-border);
  cursor: pointer;
  transition: color var(--transition-fast);
}

.list-item:last-child,
.list-item-project:last-child {
  border-bottom: none;
}

.list-item:hover,
.list-item-project:hover {
  color: var(--color-primary);
}

.item-meta {
  display: flex;
  align-items: center;
  gap: 0.5rem;
  margin-bottom: 0.25rem;
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

.item-title {
  font-size: 0.875rem;
  margin: 0;
}

.item-tech {
  font-size: 0.75rem;
  font-family: var(--font-family-mono);
  color: var(--color-foreground-muted);
  margin: 0.25rem 0 0 0;
}

.list-item-project {
  display: flex;
  align-items: center;
  justify-content: space-between;
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
</style>

<template>
  <div class="page-container">
    <div class="page-header">
      <h1>Overview<span class="dot">.</span></h1>
      <p class="subtitle">AI Developer & Machine Learning specialist.</p>
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

    <!-- About Section -->
    <div class="about-section">
      <h2 class="section-title">About</h2>
      <div class="about-content">
        <p>{{ aboutText }}</p>
      </div>
    </div>
  </div>
</template>

<script setup>
import { Brain, Briefcase, FileText, TrendingUp } from 'lucide-vue-next'

const stats = [
  { label: 'Projects Shipped', value: '6', icon: Briefcase, change: '3 active' },
  { label: 'Years in Tech', value: '2', icon: TrendingUp, change: 'ML & AI' },
  { label: 'Certifications', value: '5', icon: FileText, change: 'AWS, Power BI' },
]

const recentProjects = [
  { name: 'Fire Detection Analytics', tech: 'Spark · Kafka · PostgreSQL', status: 'wip' },
  { name: 'CO₂ Dehydration Forecasting', tech: 'Django · Python · SQL', status: 'wip' },
  { name: 'SWIFT Golf Scoring OCR', tech: 'OpenCV · OpenAI · MQTT', status: 'wip' },
]

const aboutText = `
I'm a data scientist and machine learning engineer with over 3 years of experience in the field. I've worked on a wide range of projects, from building predictive models to creating AI-powered solutions for businesses. I have a strong background in data analysis, machine learning, and software development, and I'm passionate about using technology to solve real-world problems.

I'm excited to bring my skills and experience to your team and help you achieve your goals. Whether you're looking to improve your data pipelines, build intelligent systems, or create innovative solutions, I'm here to help.

If you're interested in learning more about me, please feel free to reach out. I'm always happy to chat and answer any questions you may have.
`
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
  grid-template-columns: 1fr;
  gap: 1.5rem;
}

.about-section {
  padding: 1.5rem;
  border-radius: 0.5rem;
  background-color: var(--color-card);
  border: 1px solid var(--color-border);
}

.section-title {
  font-size: 0.875rem;
  font-family: var(--font-family-mono);
  text-transform: uppercase;
  letter-spacing: 0.125em;
  color: var(--color-foreground-muted);
  margin: 0 0 1rem 0;
}

.about-content p {
  font-size: 0.95rem;
  line-height: 1.7;
  color: var(--color-foreground);
  margin: 0;
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

.project-status.wip {
  background-color: rgba(59, 130, 246, 0.1);
  color: #3b82f6;
}

.project-status.wip::before {
  content: 'WIP · ';
}
</style>

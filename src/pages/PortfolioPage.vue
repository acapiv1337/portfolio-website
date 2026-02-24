<template>
  <div class="page-container">
    <div class="page-header">
      <h1>Portfolio<span class="dot">.</span></h1>
      <p class="subtitle">Things I've built, shipped, and open-sourced.</p>
    </div>

    <div class="projects-grid">
      <div v-for="(project, i) in projects" :key="i" class="project-card">
        <div class="card-header">
          <h3 class="project-title">{{ project.title }}</h3>
          <span :class="['project-status', project.status]">{{ project.status }}</span>
        </div>
        <p class="project-description">{{ project.description }}</p>
        <div class="tech-tags">
          <span v-for="tech in project.tech" :key="tech" class="tech-tag">{{ tech }}</span>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
const projects = [
  {
    title: 'Anomaly Detector',
    description: 'Real-time anomaly detection library using statistical methods and autoencoders. Open-source with 200+ stars.',
    tech: ['PyTorch', 'FastAPI', 'Docker'],
    status: 'live',
  },
  {
    title: 'NLP Dashboard',
    description: 'Interactive dashboard for exploring NLP model outputs — attention maps, token probabilities, and semantic similarity.',
    tech: ['React', 'D3.js', 'HuggingFace'],
    status: 'live',
  },
  {
    title: 'Data Pipeline CLI',
    description: 'CLI tool for orchestrating ETL pipelines with built-in monitoring, retries, and Slack alerts.',
    tech: ['Python', 'Airflow', 'Click'],
    status: 'building',
  },
  {
    title: 'ML Experiment Tracker',
    description: 'Lightweight experiment tracking for small teams. Think MLflow but simpler and self-hosted.',
    tech: ['Go', 'SQLite', 'React'],
    status: 'live',
  },
  {
    title: 'Forecast API',
    description: 'Time series forecasting API supporting ARIMA, Prophet, and neural approaches via a unified interface.',
    tech: ['Python', 'FastAPI', 'Prophet'],
    status: 'live',
  },
  {
    title: 'Dataset Explorer',
    description: 'Web tool for quick EDA — upload a CSV and get instant distributions, correlations, and missing data reports.',
    tech: ['Streamlit', 'Pandas', 'Plotly'],
    status: 'archived',
  },
]
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

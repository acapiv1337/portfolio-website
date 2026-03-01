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
    title: 'Real-time Fire Detection Analytics',
    description: 'Apache Spark Structured Streaming pipeline processing IoT alarm signals for Jabatan Bomba Malaysia. Integrated Kafka and PostgreSQL for lowest latency fire detection monitoring.',
    tech: ['Apache Spark', 'Kafka', 'PostgreSQL', 'Docker'],
    status: 'live',
  },
  {
    title: 'CO₂ Dehydration Predictive Analytics',
    description: 'PETRONAS-Academia collaboration forecasting adsorption capacity. Django-based system with continuous model retraining, EDA on oil & gas datasets, time-series analysis for trends.',
    tech: ['Django', 'Python', 'Docker', 'SQL Server'],
    status: 'live',
  },
  {
    title: 'SWIFT Golf Scoring OCR',
    description: 'OCR feature for golf scoring application. OpenCV for image pre-processing and OpenAI model integration for scorecard reading with MQTT live scoreboard updates.',
    tech: ['OpenCV', 'OpenAI', 'MQTT', 'Python'],
    status: 'live',
  },
  {
    title: 'Oil & Gas Operational Dashboard',
    description: 'Dynamic predictive analytics dashboard for platform monitoring. Database architecture design and Power BI integration with gateway configuration.',
    tech: ['Power BI', 'SQL Server', 'Python'],
    status: 'live',
  },
  {
    title: 'RAG Research Codebase',
    description: 'Experimental Retrieval-Augmented Generation implementation using LangChain foundations for future AI projects.',
    tech: ['LangChain', 'Python', 'AI/ML'],
    status: 'building',
  },
  {
    title: 'Stock Market Web Scraper',
    description: 'Dynamic web scraping using Selenium to extract real-time data from stock market news sites.',
    tech: ['Selenium', 'Python', 'Web Scraping'],
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

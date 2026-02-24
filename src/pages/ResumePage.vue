<template>
  <div class="page-container">
    <div class="page-header">
      <h1>Résumé<span class="dot">.</span></h1>
      <p class="subtitle">Background, skills, and experience.</p>
    </div>

    <!-- Experience Section -->
    <section class="section">
      <h2 class="section-title">Experience</h2>
      <div class="list">
        <div v-for="(exp, i) in experience" :key="i" class="list-item">
          <div class="item-header">
            <h3 class="item-title">{{ exp.role }}</h3>
            <span class="item-period">{{ exp.period }}</span>
          </div>
          <p class="item-company">{{ exp.company }}</p>
          <p class="item-description">{{ exp.description }}</p>
        </div>
      </div>
    </section>

    <!-- Education Section -->
    <section class="section">
      <h2 class="section-title">Education</h2>
      <div class="list">
        <div v-for="edu in education" :key="edu.degree" class="edu-item">
          <div>
            <p class="item-title">{{ edu.degree }}</p>
            <p class="item-school">{{ edu.school }}</p>
          </div>
          <span class="item-period">{{ edu.year }}</span>
        </div>
      </div>
    </section>

    <!-- Skills Section -->
    <section class="section">
      <h2 class="section-title">Skills & Tools</h2>
      <div class="skills-grid">
        <span v-for="skill in skills" :key="skill" class="skill-tag">{{ skill }}</span>
      </div>
    </section>
  </div>
</template>

<script setup>
const experience = [
  {
    role: 'Senior Data Scientist',
    company: 'TechCorp',
    period: '2024 — Present',
    description: 'Leading ML initiatives for product recommendations. Built models serving 10M+ daily predictions.',
  },
  {
    role: 'Data Scientist',
    company: 'StartupAI',
    period: '2022 — 2024',
    description: 'End-to-end ML pipelines for NLP and time series. Reduced churn prediction error by 35%.',
  },
  {
    role: 'Junior Data Analyst',
    company: 'DataHouse',
    period: '2020 — 2022',
    description: 'Built dashboards, automated reports, and gradually moved into predictive modeling.',
  },
]

const skills = [
  'Python', 'R', 'SQL', 'PyTorch', 'TensorFlow', 'Scikit-learn',
  'Pandas', 'Apache Spark', 'Airflow', 'Docker', 'React', 'D3.js',
]

const education = [
  { degree: 'M.Sc. Data Science', school: 'University of Tech', year: '2020' },
  { degree: 'B.Sc. Statistics', school: 'State University', year: '2018' },
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

.section {
  margin-bottom: 2.5rem;
}

.section-title {
  font-size: 0.75rem;
  font-family: var(--font-family-mono);
  text-transform: uppercase;
  letter-spacing: 0.2em;
  color: var(--color-primary);
  margin: 0 0 1rem 0;
}

.list {
  border-top: 1px solid var(--color-border);
}

.list-item,
.edu-item {
  padding: 1.25rem 0;
  border-bottom: 1px solid var(--color-border);
}

.list-item:last-child,
.edu-item:last-child {
  border-bottom: none;
}

.item-header {
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin-bottom: 0.25rem;
  gap: 1rem;
}

.item-title {
  font-weight: 500;
  margin: 0;
}

.item-period {
  font-size: 0.75rem;
  font-family: var(--font-family-mono);
  color: var(--color-foreground-muted);
  white-space: nowrap;
}

.item-company {
  font-size: 0.875rem;
  font-family: var(--font-family-mono);
  color: var(--color-primary);
  margin: 0.375rem 0;
}

.item-school {
  font-size: 0.75rem;
  font-family: var(--font-family-mono);
  color: var(--color-foreground-muted);
  margin: 0.25rem 0 0 0;
}

.item-description {
  font-size: 0.875rem;
  color: var(--color-foreground-muted);
  line-height: 1.5;
  margin: 0;
}

.edu-item {
  display: flex;
  align-items: center;
  justify-content: space-between;
}

.skills-grid {
  display: flex;
  flex-wrap: wrap;
  gap: 0.5rem;
}

.skill-tag {
  font-size: 0.75rem;
  font-family: var(--font-family-mono);
  padding: 0.375rem 0.75rem;
  border-radius: 0.375rem;
  background-color: var(--color-secondary);
  color: var(--color-secondary-foreground);
  border: 1px solid var(--color-border);
  transition: border-color var(--transition-fast);
  cursor: pointer;
}

.skill-tag:hover {
  border-color: rgba(0, 212, 255, 0.3);
}
</style>

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
            <p class="item-gpa" v-if="edu.gpa">{{ edu.gpa }}</p>
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
    role: 'AI Developer',
    company: 'CARA COM MY Sdn Bhd.',
    period: 'May 2025 – Present',
    description: 'Developing AI-driven solutions and data pipelines. Designed real-time analytics pipeline with Apache Spark for Jabatan Bomba Malaysia. Developed OCR feature for SWIFT golf scoring app.',
  },
  {
    role: 'Machine Learning Developer',
    company: 'IBDAAI',
    period: 'Feb 2024 – March 2025',
    description: 'Led development of CO₂ Dehydration Predictive Analytics for PETRONAS. Performed comprehensive EDA on oil & gas datasets and built Django system with continuous model retraining.',
  },
  {
    role: 'Machine Learning Developer (Part-time)',
    company: 'IBDAAI',
    period: 'Jun 2023 – Jan 2024',
    description: 'Assisted in Operational Monitoring Dashboard. Designed database architecture and executed web scraping with Selenium.',
  },
  {
    role: 'Machine Learning Intern',
    company: 'IBDAAI',
    period: 'Mar 2023 – Jun 2023',
    description: 'Enhanced code efficiency using pandas and NumPy. Developed predictive modeling techniques for oil price forecasting.',
  },
  {
    role: 'Intern',
    company: 'KANZU Research',
    period: 'Aug 2020 – Sep 2020',
    description: 'Managed website content using WordPress and edited promotional videos for research group.',
  },
]

const skills = [
  'Python', 'Flask', 'Django', 'PostgreSQL', 'Microsoft SQL Server',
  'Apache Spark', 'Kafka', 'Docker', 'MLOps', 'Power BI',
  'Web Scraping', 'IoT', 'Exploratory Data Analysis', 'Machine Learning',
  'Predictive Analytics', 'Time-series Analysis', 'Hypothesis Testing',
]

const education = [
  { degree: 'Bachelor of Information Systems (Hons.)', school: 'Universiti Teknologi MARA', year: '2021 – 2023', gpa: '3.68 (First-Class Honours)' },
  { degree: 'Diploma in Computer Science', school: 'Universiti Teknologi MARA', year: '2018 – 2021', gpa: '3.83' },
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

.item-gpa {
  font-size: 0.75rem;
  color: var(--color-primary);
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

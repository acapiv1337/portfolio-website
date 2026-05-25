<template>
  <div class="page-container">
    <div class="page-header">
      <h1>Certifications<span class="dot">.</span></h1>
      <p class="subtitle">Credentials and professional qualifications.</p>
    </div>

    <section class="section">
      <div class="list">
        <div v-for="cert in certifications" :key="cert.name" class="list-item">
          <div class="item-header">
            <h3 class="item-name">{{ cert.name }}</h3>
            <span class="item-year">{{ cert.year }}</span>
          </div>
          <p class="item-issuer">{{ cert.issuer }}</p>
          <p v-if="cert.credential" class="item-credential">{{ cert.credential }}</p>
        </div>
      </div>
    </section>
  </div>
</template>

<script setup>
const certifications = [
  {
    name: 'AWS Certified Cloud Practitioner',
    issuer: 'Amazon Web Services',
    year: '2024',
    credential: '',
  },
  {
    name: 'Microsoft Certified: Power BI Data Analyst Associate',
    issuer: 'Microsoft',
    year: '2024',
    credential: '',
  },
  {
    name: 'Certification 3',
    issuer: 'Issuer',
    year: '2023',
    credential: '',
  },
  {
    name: 'Certification 4',
    issuer: 'Issuer',
    year: '2023',
    credential: '',
  },
  {
    name: 'Certification 5',
    issuer: 'Issuer',
    year: '2022',
    credential: '',
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

.section {
  margin-bottom: 2.5rem;
}

.list {
  border-top: 1px solid var(--color-border);
}

.list-item {
  padding: 1.25rem 0;
  border-bottom: 1px solid var(--color-border);
}

.list-item:last-child {
  border-bottom: none;
}

.item-header {
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 1rem;
  margin-bottom: 0.25rem;
}

.item-name {
  font-size: 1rem;
  font-weight: 500;
  margin: 0;
}

.item-year {
  font-size: 0.75rem;
  font-family: var(--font-family-mono);
  color: var(--color-foreground-muted);
  white-space: nowrap;
}

.item-issuer {
  font-size: 0.875rem;
  font-family: var(--font-family-mono);
  color: var(--color-primary);
  margin: 0.375rem 0 0 0;
}

.item-credential {
  font-size: 0.75rem;
  color: var(--color-foreground-muted);
  margin: 0.25rem 0 0 0;
}
</style>

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
            <span class="item-period">{{ cert.period }}</span>
          </div>
          <p class="item-issuer">{{ cert.issuer }}</p>
          <a v-if="cert.credentialUrl" :href="cert.credentialUrl" target="_blank" rel="noopener noreferrer" class="item-credential-link">Show credential ↗</a>
        </div>
      </div>
    </section>
  </div>
</template>

<script setup>
const certifications = [
  {
    name: 'AWS Certified AI Practitioner',
    issuer: 'Amazon Web Services (AWS)',
    period: 'Issued Jul 2025 · Expires Jul 2028',
    credentialUrl: 'https://cp.certmetrics.com/amazon/en/public/verify/credential/ca6c525e11c14d0bb1b80acc9c634b82',
  },
  {
    name: 'Data Scientist Associate',
    issuer: 'DataCamp',
    period: 'Issued Jan 2024 · Expires Jan 2026',
    credentialUrl: 'https://www.datacamp.com/certificate/DSA0010619434545',
  },
  {
    name: 'Data Analyst Associate',
    issuer: 'DataCamp',
    period: 'Issued Jan 2024 · Expires Jan 2026',
    credentialUrl: 'https://www.datacamp.com/certificate/DAA0016542429928',
  },
  {
    name: 'PCEP – Certified Entry-Level Python Programmer',
    issuer: 'OpenEDG Python Institute',
    period: 'Issued Apr 2023',
    credentialUrl: 'https://verify.openedg.org/?id=wV7q.7TLm.cdRw',
  },
  {
    name: 'Microsoft Certified: Power BI Data Analyst Associate',
    issuer: 'Microsoft',
    period: 'Issued Mar 2023 · Expires Mar 2027',
    credentialUrl: 'https://learn.microsoft.com/en-us/users/muhammadamirulasyrafroslan-7168/credentials/50ac7da3bb564a12?ref=https%3A%2F%2Fwww.linkedin.com%2F',
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

.item-period {
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

.item-credential-link {
  display: inline-block;
  font-size: 0.75rem;
  font-family: var(--font-family-mono);
  color: var(--color-primary);
  margin: 0.375rem 0 0 0;
  text-decoration: none;
  transition: opacity var(--transition-fast);
}

.item-credential-link:hover {
  opacity: 0.75;
}
</style>

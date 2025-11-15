<template>
  <div id="app">
    <!-- Header -->
    <header class="header">
      <div class="container">
        <h1 class="name">Muhammad Amirul Asyraf</h1>
        <nav class="nav">
          <a href="#about">About</a>
          <a href="#skills">Skills</a>
          <a href="#projects">Projects</a>
          <a href="#contact">Contact</a>
        </nav>
      </div>
    </header>

    <!-- About Section -->
    <section id="about" class="section">
      <div class="container">
        <h2>About Me</h2>
        <p>I'm a developer with a strong data science background and two years of experience building solutions for university research institutes before venturing into startup companies as an AI developer. I spend my free time exploring new tech stacks and building projects that spark my interest. I believe in sharing ideas openly, learning collaboratively, and finding creative ways to turn concepts into impactful solutions.</p>
        <div class="contact-info">
        </div>
      </div>
    </section>

    <!-- Skills Section -->
    <section id="skills" class="section">
      <div class="container">
        <h2>Technical Skills</h2>
        <div class="skills-grid">
          <div class="skill-category">
            <h3>Programming & Frameworks</h3>
            <ul>
              <li>Python</li>
              <li>FastAPI & Django</li>
              <li>SQL</li>
              <li>Vue.js</li>
            </ul>
          </div>
          <div class="skill-category">
            <h3>AI & Machine Learning</h3>
            <ul>
              <li>Machine Learning</li>
              <li>Predictive Analytics</li>
              <li>Time-series Analysis</li>
              <li>OpenCV & OCR</li>
            </ul>
          </div>
          <div class="skill-category">
            <h3>Data & Analytics</h3>
            <ul>
              <li>Pandas & NumPy</li>
              <li>Microsoft Power BI</li>
              <li>Exploratory Data Analysis</li>
              <li>Web Scraping</li>
            </ul>
          </div>
          <div class="skill-category">
            <h3>Cloud & Infrastructure</h3>
            <ul>
              <li>Apache Spark</li>
              <li>Docker</li>
              <li>PostgreSQL & MS SQL</li>
              <li>Kafka & IoT</li>
            </ul>
          </div>
        </div>
      </div>
    </section>

    <!-- Projects Section -->
    <section id="projects" class="section">
      <div class="container">
        <h2>Featured Projects</h2>
        <div class="projects-grid">
          <div class="project-card">
            <h3>Real-time Fire Detection Analytics</h3>
            <p>Designed and implemented a real-time analytics pipeline using Apache Spark Structured Streaming to process alarm signals from IoT devices for Jabatan Bomba Malaysia PoC project.</p>
            <div class="tech-tags">
              <span>Apache Spark</span>
              <span>Kafka</span>
              <span>IoT</span>
              <span>PostgreSQL</span>
            </div>
          </div>
          <div class="project-card">
            <h3>CO₂ Dehydration Predictive Analytics</h3>
            <p>Developed predictive models for adsorption capacity forecasting in PETRONAS-Academia collaboration, including Django-based system with continuous model retraining capabilities.</p>
            <div class="tech-tags">
              <span>Django</span>
              <span>Time Series</span>
              <span>Docker</span>
              <span>ML</span>
            </div>
          </div>
          <div class="project-card">
            <h3>Agentic AI Coffee Ordering System</h3>
            <p>Developed a PoC coffee ordering application for San Francisco using Agentic AI, enabling users to interact with and query the database for real-time coffee availability.</p>
            <div class="tech-tags">
              <span>AI Agent</span>
              <span>Database</span>
              <span>Real-time</span>
            </div>
          </div>
          <div class="project-card">
            <h3>Real-time OCR Integration</h3>
            <p>Developed real-time OCR for inhouse software using OpenCV for image pre-processing and integrated with OpenAI model for enhanced accuracy.</p>
            <div class="tech-tags">
              <span>OpenCV</span>
              <span>OCR</span>
              <span>OpenAI</span>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Contact Section -->
    <section id="contact" class="section">
      <div class="container">
        <h2>Contact</h2>
        <div class="contact-info-main">
          <div class="contact-item">
            <strong>Email:</strong> amirlasyrf.00@gmail.com
          </div>
          <div class="contact-item">
            <strong>Phone:</strong> 019-5789213
          </div>
          <div class="contact-item">
            <strong>Location:</strong> Shah Alam, Selangor
          </div>
        </div>
        <div class="contact-links">
          <a href="mailto:amirlasyrf.00@gmail.com" class="contact-link">Email</a>
          <a href="https://linkedin.com/in/amirul-asyraf-roslan" class="contact-link">LinkedIn</a>
          <a href="https://github.com/acapiv1337" class="contact-link">GitHub</a>
        </div>
        
        <div class="certifications">
          <h3>Certifications & Achievements</h3>
          <div class="cert-grid">
            <div class="cert-item">
              <strong>AWS Certified AI Practitioner</strong>
            </div>
            <div class="cert-item">
              <strong>Microsoft Power BI Data Analyst</strong>
            </div>
            <div class="cert-item">
              <strong>DataCamp Data Scientist Associate</strong>
            </div>
            <div class="cert-item">
              <strong>Gold Medal PPKomp 2023</strong>
            </div>
            <div class="cert-item">
              <strong>Finalist iHACK Attack & Defense 2022</strong>
            </div>
            <div class="cert-item">
              <strong>Vice Chancellor Award (UiTM)</strong>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Footer -->
    <footer class="footer">
      <div class="container">
        <p>&copy; 2025 Muhammad Amirul Asyraf. All rights reserved.</p>
      </div>
    </footer>
  </div>
</template>

<script>
export default {
  name: "DataSciencePortfolio"
}
</script>

<style>
/* Global styles */
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

html {
  scroll-behavior: smooth;
  scroll-padding-top: 80px;
}

body {
  font-family: 'Arial', sans-serif;
  line-height: 1.6;
  color: #333;
}

#app {
  width: 100%;
  min-height: 100vh;
}
</style>

<style scoped>

.container {
  max-width: 1200px;
  width: 100%;
  margin: 0 auto;
  padding: 0 20px;
}

/* Header */
.header {
  background: #fff;
  box-shadow: 0 2px 10px rgba(0,0,0,0.1);
  position: fixed;
  width: 100%;
  top: 0;
  z-index: 1000;
}

.header .container {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 1rem 20px;
}

.name {
  font-size: 1.5rem;
  font-weight: bold;
  color: #2c3e50;
}

.nav {
  display: flex;
  gap: 2rem;
}

.nav a {
  text-decoration: none;
  color: #333;
  font-weight: 500;
  transition: color 0.3s;
}

.nav a:hover {
  color: #3498db;
}

/* Hero Section */
.hero {
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  color: white;
  padding: 150px 0 100px;
  text-align: center;
  min-height: 100vh;
  display: flex;
  align-items: center;
}

.hero h2 {
  font-size: 3rem;
  margin-bottom: 1rem;
  font-weight: 300;
}

.hero p {
  font-size: 1.2rem;
  margin-bottom: 2rem;
  max-width: 600px;
  margin-left: auto;
  margin-right: auto;
}

.cta-button {
  display: inline-block;
  background: #3498db;
  color: white;
  padding: 12px 30px;
  text-decoration: none;
  border-radius: 5px;
  font-weight: 500;
  transition: background 0.3s;
}

.cta-button:hover {
  background: #2980b9;
}

/* Sections */
.section {
  padding: 80px 0;
}

.section:first-of-type {
  padding-top: 150px; /* Extra padding for first section after fixed header */
}

.section:nth-child(even) {
  background: #f8f9fa;
}

.section h2 {
  text-align: center;
  font-size: 2.5rem;
  margin-bottom: 3rem;
  color: #2c3e50;
}

.section p {
  text-align: center;
  font-size: 1.1rem;
  max-width: 800px;
  margin: 0 auto 2rem;
  color: #666;
}

/* Skills Grid */
.skills-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 2rem;
  margin-top: 2rem;
}

.skill-category {
  background: white;
  padding: 2rem;
  border-radius: 8px;
  box-shadow: 0 2px 10px rgba(0,0,0,0.1);
}

.skill-category h3 {
  color: #3498db;
  margin-bottom: 1rem;
  font-size: 1.2rem;
}

.skill-category ul {
  list-style: none;
}

.skill-category li {
  padding: 0.5rem 0;
  border-bottom: 1px solid #eee;
}

.skill-category li:last-child {
  border-bottom: none;
}

/* Projects Grid */
.projects-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 2rem;
  margin-top: 2rem;
}

.project-card {
  background: white;
  padding: 2rem;
  border-radius: 8px;
  box-shadow: 0 2px 10px rgba(0,0,0,0.1);
  transition: transform 0.3s;
}

.project-card:hover {
  transform: translateY(-5px);
}

.project-card h3 {
  color: #2c3e50;
  margin-bottom: 1rem;
}

.project-card p {
  text-align: left;
  margin-bottom: 1rem;
}

.tech-tags {
  display: flex;
  gap: 0.5rem;
  flex-wrap: wrap;
}

.tech-tags span {
  background: #3498db;
  color: white;
  padding: 0.25rem 0.75rem;
  border-radius: 20px;
  font-size: 0.8rem;
}

/* Contact Info */
.contact-info {
  background: #f8f9fa;
  padding: 2rem;
  border-radius: 8px;
  margin-top: 2rem;
  text-align: left;
  max-width: 600px;
  margin-left: auto;
  margin-right: auto;
}

.contact-info p {
  margin-bottom: 0.5rem;
  text-align: left;
}

.contact-info-main {
  display: flex;
  justify-content: center;
  gap: 3rem;
  margin: 2rem 0;
  flex-wrap: wrap;
}

.contact-item {
  text-align: center;
  font-size: 1.1rem;
}

/* Contact Links */
.contact-links {
  display: flex;
  justify-content: center;
  gap: 2rem;
  margin-top: 2rem;
}

.contact-link {
  display: inline-block;
  background: #3498db;
  color: white;
  padding: 12px 25px;
  text-decoration: none;
  border-radius: 5px;
  transition: background 0.3s;
}

.contact-link:hover {
  background: #2980b9;
}

/* Certifications */
.certifications {
  margin-top: 4rem;
  text-align: center;
}

.certifications h3 {
  color: #2c3e50;
  margin-bottom: 2rem;
  font-size: 1.8rem;
}

.cert-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 1rem;
  margin-top: 1rem;
}

.cert-item {
  background: white;
  padding: 1rem;
  border-radius: 8px;
  box-shadow: 0 2px 5px rgba(0,0,0,0.1);
  border-left: 4px solid #3498db;
}

/* Footer */
.footer {
  background: #2c3e50;
  color: white;
  text-align: center;
  padding: 2rem 0;
}

/* Responsive */
@media (max-width: 768px) {
  .header .container {
    flex-direction: column;
    gap: 1rem;
  }
  
  .nav {
    gap: 1rem;
  }
  
  .hero h2 {
    font-size: 2rem;
  }
  
  .contact-links {
    flex-direction: column;
    align-items: center;
  }
}
</style>
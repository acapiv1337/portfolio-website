---
title: San Francisco Smart Coffee Shop Management System
description: Full-stack coffee shop management platform with AI chatbot ordering (OpenAI gpt-4.1), business intelligence insights, and receipt generation.
tech: Vue 3, FastAPI, Python, MySQL, Redis, Docker, Nginx, OpenAI
status: live
published: true
---

Full-stack coffee shop management platform with AI chatbot ordering, and business intelligence insights.

### Architecture

```
Vue 3 + Vite (port 3000) → FastAPI (port 8000) → MySQL + Redis
                ↕ Nginx
```

- **Frontend:** Vue 3 + Vite, role-based sidebar navigation
- **Backend:** FastAPI, JWT auth, SQLAlchemy, OpenAI integration, seeder with sample data
- **Infrastructure:** Docker Compose, Nginx reverse proxy, MySQL 8.0, Redis 7

### Deploy

**coffee.acapans.com**.

<button class="pw-reveal">Click to reveal portfolio password</button>

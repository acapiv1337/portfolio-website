---
published: false
title: DIY self-hosting
date: Apr 8, 2026
tag: Self-hosting
excerpt: My attempt at self-hosting without prior knoweldge.
---

When working at IBDAAI as data scientist/researcher, I never had to deal with working with a server. I was only run Flask apps locally and I didn't have to worry about the networking and infrastructure. At CARA was my first working on a project that involves using outside networks. A live product used by actual user. That was when I'm realizing how much I don't know. IPs, ports, and protocols. The list goes on. These things are something that I only ever heard during studying but never really try to understand.


## What motivated me to self-host

I have always wanted my own personal server. Able to run my own apps and websites sounds amazing. Create meme websites to share with friends. Run virtual assistant at homes like Alexa so that I have someone to talk to. 

It wasn't one thing. It was the slow accumulation of annoyances:

- Notion raised prices and started gating features
- A note-taking app I loved got acquired and killed within a year
- Cloud storage costs quietly doubled

At some point I realized: **I'm renting access to my own data.**

## What I run now

Everything runs in Docker on a single server sitting in my room:

- **Gitea** — private git repos
- **Immich** — photos, self-hosted Google Photos replacement
- **Vaultwarden** — Bitwarden-compatible password manager
- **Uptime Kuma** — monitoring dashboard
- **Nginx Proxy Manager** — reverse proxy with SSL

## Is it worth it?

Honestly, yes. The upfront work was steep but now it mostly runs itself. The only real cost is electricity and the one-time hardware purchase.

The bigger benefit isn't even the money. It's knowing exactly where my data is.

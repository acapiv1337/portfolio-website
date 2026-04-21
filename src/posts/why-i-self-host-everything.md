---
published: true
title: DIY self-hosting
date: Apr 8, 2026
tag: Self-hosting
excerpt: My attempt at self-hosting without prior knowledge (Part 1).
---
When working at IBDAAI as data scientist/researcher, I never had to deal working with a server. Run my experiment on laptop and Flask on run locally. Therefore, I didn't have to worry about the networking and infrastructure. Then, new jobs happened. At CARA was my first time working on a project that involves using public networks. A live product used by actual user. That was when I'm realizing how much I don't know. IPs, ports, and protocols. The list goes on. These things are something that I only ever heard during studying but never really try to understand.

## What motivated me to self-host

At first, I never thought about self-hosting. I just wanted to run websites that can be accessed from anywhere and not from local. However, I realized that with server I can do more than that. I can run my minecraft server, cloud storage or run my own Jarvis just like Iron-Man. Then, the thought hit me, why not run my own server? I already subscribed to internet and have account access to it. Doing this is a good way to learn about networking and stuff, right?

I started to research and find the most affordable mini pc to run my server on. I found this mini pc model "DELL 7040 i5 6TH GEN with 16GB RAM and 256GB SSD" on shopee. Here is the stuff [Shop](https://shopee.com.my/DELL-HP-MINI-PC-7090-7060-7040-705-G4-UP-TO-32GB-RAM-16GB-DDR4-RAM-512GB-SSD-STORAGE-WARRANTY-WIN-11-PRO--i.161561928.3339952825). I think it was good enough to run portfolio and some side projects. 

![My mini PC setup](/mini-pc.jpg)

Then buy refurbished monitor and reused my old mouse and keyboard. Because of the old monitor only support VGA meanwhile mini pc only have HDMI port. I also bought an adapter. 

Here is approximate of the total hardware cost:

| Item | Cost (RM) |
|------|----------:|
| Mini PC (DELL 7040 i5) | 482.24 |
| Monitor | 94.28 |
| VGA to HDMI Adapter | 9.69 |
| Pendrive (bootable) | 12.14 |
| HDMI Cable | 3.50 |
| **Total** | **601.85** |


Now we have everything ready. Starting with installing the Ubuntu

![My mini PC setup](/keyboard-monitor.jpg)

The easy part setup the hardware is done. Now is the hard part. Getting my own private network. I will cover about it in part 2 on how to get your own private network, domain hosting, DDNS, proxy manager and etc. 

The upfront work was steep but now it mostly runs itself. The only real cost is electricity and occasionally the cleaning. The bigger benefit however isn't even the money. It's knowing exactly where everything is running. This website you are reading right now is hosted on my own server.
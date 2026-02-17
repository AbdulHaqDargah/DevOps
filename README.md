# DevOps Learning Journey

This repository documents my structured, hands-on journey into Infrastructure, DevOps, and Security engineering.

The goal is to build deep fundamentals first, then layer networking, security, containers, and cloud — while documenting real progress, mistakes, failures, and recoveries.

This is a **learning-by-doing** repository.

---

## Current Direction

Target Path:
* Infrastructure + DevOps
* Security-focused system engineering

---

## What Has Been Completed So Far
Linux Foundations
* Filesystem structure and navigation
* Absolute vs relative paths
* File operations (cp, mv, rm)
* Redirection (> and >>)
* Permissions (numeric and symbolic)
* Ownership and access evaluation logic
* Directory permission behavior
* Users and groups
* Process management (ps, kill, signals)
* Job control basics
* Service lifecycle management
* Installed nginx
* Simulated service failure
* Introduced invalid config and debugged startup failure
* Used nginx -t correctly before restart
* Verified process states and recovery
* Basic log inspection and troubleshooting
* Multi-device Git workflow (Laptop ↔ Phone ↔ GitHub)

---

You will NOT find:
- Polished production-ready projects
- Step-by-step beginner tutorials
- Perfect or optimized solutions
- Copy-pasted blog or course material
- “Hello World” style examples

Mistakes, dead ends, and fixes are part of the process and are intentionally preserved.

---

## Repository Structure

```text
DevOps/
├── README.md
├── CHALLENGES.md
│
├── week-01-linux-foundations/
│ ├── README.md
│ ├── day-01/
│ ├── day-02/
│ ├── day-03/
│ ├── day-04/
│ ├── day-05/
│ ├── day-06/
│ └── day-07/
│
├── week-02/
├── week-03/
└── week-04/
```

Each day includes:
* Working scripts
* NOTES.md
* Real debugging insights
* CHALLENGES.md logs real problems and fixes

---

## 4-Month Deep Foundation Roadmap

Month 1 – Linux Mastery
Focus:
* Advanced permissions (ACL, special bits)
* umask behavior
* Process signals deeper
* Job control (fg/bg/nohup)
* Systemd & services
* journald logs
* Cron jobs
* Disk management
* SSH hardening
* Firewall basics
* Bash scripting
Deliverable:
Monitoring + logging automation script.

Month 2 – Networking + Security
Networking:
* TCP vs UDP
* OSI model
* DNS resolution flow
* Subnetting & CIDR
* NAT
* Reverse proxy behavior
* TLS handshake
Security:
* CIA triad
* Authentication vs Authorization
* SSH key-based access
* Nginx hardening
* Fail2ban
* Log-based attack detection
* Least privilege enforcement
Deliverable:
Hardened Linux server with documented security posture.

Month 3 – Containers & DevOps
* Docker fundamentals
* Container networking
* Volumes
* Docker Compose
* Reverse proxy in containers
* CI/CD with GitHub Actions
* Automated deployment
Deliverable:
Containerized nginx + CI/CD pipeline.

Month 4 – Cloud Deployment
* AWS fundamentals
* EC2
* Security groups
* IAM basics
* Secure SSH configuration
* TLS setup
* Public deployment
* Monitoring concepts
Deliverable:
Secure public cloud-hosted nginx server.

---

## Progress Tracking

Month 1 – Linux mastery – In Progress
Month 2 – Networking + Security – Planned
Month 3 – Containers & DevOps – Planned
Month 4 – Cloud – Planned

---

## Documentation Policy
Daily:
* Update CHALLENGES.md
* Update respective day NOTES.md
Weekly:
* Update high-level progress in this README
All failures are documented intentionally.

---

## Environment
Primary:
* WSL Ubuntu 20.04
Secondary:
* Termux (Ubuntu via proot-distro)
* Multi-device Git sync
Nginx debugging performed inside WSL.

---

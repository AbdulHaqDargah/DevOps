# DevOps Learning Journey

This repository documents my structured, hands-on journey into DevOps engineering.

The goal is to build strong fundamentals first, then layer automation, cloud, and CI/CD on top — while documenting real progress, mistakes, and fixes along the way.

This is a **learning-by-doing** repository.

---

## What to Expect

You will find:
- Week-by-week learning structure
- Hands-on scripts, configs, and notes
- Clear progression from Linux basics to advanced DevOps topics
- Real problems faced during setup, tooling, and usage
- Practical understanding, not copied tutorials

Each week focuses on a specific theme and contains:
- A week-level README with progress summary
- Day-wise folders with actual work
- Scripts and artifacts created during learning

---

## What NOT to Expect

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
│   ├── README.md
│   │
│   ├── day-01/
│   │   ├── system_info.sh
│   │   └── NOTES.md
│   │
│   ├── day-02/
│   │   ├── secrets.txt
│   │   ├── ownership_test.txt
│   │   └── NOTES.md
│   │
│   ├── day-03/
│   │   ├── network_check.sh
│   │   └── NOTES.md
│   │
│   ├── day-04/
│   │   ├── process_inspector.sh
│   │   └── NOTES.md
│   │
│   ├── day-05/
│   │   ├── log_inspector.sh
│   │   └── NOTES.md
│   │
│   ├── day-06/
│   │   ├── hardening_check.sh
│   │   ├── sensitive.txt
│   │   └── NOTES.md
│   │
│   └── day-07/   (mini-project — coming next)
│
├── week-02/   (future)
├── week-03/   (future)
└── week-04/   (future)
```

## Progress Tracking (High-Level)

This section is updated as weeks are completed.

| Week | Focus Area | Status | Notes |
|-----|-----------|--------|------|
| Week 1 | Linux foundations, users, permissions, Git & WSL | 🟢 Completed | Days 1–6 done; Day 7 mini-project pending |
| Week 2 | Linux networking & processes | ⏳ Planned | |
| Week 3 | Containers & Docker | ⏳ Planned | |
| Week 4 | CI/CD basics | ⏳ Planned | |
| Week 5 | Cloud fundamentals (AWS) | ⏳ Planned | |
| Week 6–12 | Advanced DevOps topics | ⏳ Planned | |

---

## Week 1 – Linux Foundations & Security (Completed so far)

| Day | Topic | Status | Evidence |
|----|----|----|----|
| Day 1 | Linux basics & Bash | ✅ Completed | day-01/system_info.sh + NOTES.md |
| Day 2 | Users, groups, permissions | ✅ Completed | day-02/*.txt + NOTES.md |
| Day 3 | Linux networking | ✅ Completed | day-03/network_check.sh + NOTES.md |
| Day 4 | Linux processes | ✅ Completed | day-04/process_inspector.sh + NOTES.md |
| Day 5 | Logs & troubleshooting | ✅ Completed | day-05/log_inspector.sh + NOTES.md |
| Day 6 | Hardening basics | ✅ Completed | day-06/hardening_check.sh + NOTES.md |
| Day 7 | Mini project | ⏳ Planned | day-07/ |

### How this repo is organized
- Each day lives in its own folder.  
- Every day contains:
  - At least one working script  
  - A `NOTES.md` capturing learnings  
- `CHALLENGES.md` is a single central log of problems faced and how they were solved.

---

## How Progress Is Documented

This repository uses **two separate documents** intentionally:

### 1. Progress & Summary
- Tracked in this `README.md`
- Updated at **week-level**, not daily
- Shows where I am in the journey

### 2. Challenges & Learnings
- Tracked in `CHALLENGES.md`
- Updated **every day**
- Logs real issues, root causes, fixes, and learnings

### 3. Repository Hygiene Notes

- All week folders are now normal directories, not submodules.
- Nested `.git` directories have been removed to avoid browsing issues on GitHub.
- Future work will follow a simple structure:
  - One main repo (`DevOps`)
  - No submodules unless explicitly required.

### 4. Environment note
- Day 5 was done inside WSL Ubuntu 20.04.  
- WSL does not expose `/var/log/syslog` or `/var/log/dmesg`, so logging was adapted to:
  - `/var/log/dpkg.log`
  - `/var/log/ubuntu-advantage.log`

This separation keeps progress clear and challenges honest.

---

## Update Policy (Important)

At the end of:
- **Each day** → Update `CHALLENGES.md`
- **Each week** → Weekly update progress status in this README
- **Each day** → Daily (inconsistently*) update progress status at only section level (*:since progress is also being noted at day level in NOTES.md, this section may be insconsistent sometimes)

This README will evolve, but it will remain:
- High-level
- Clean
- Easy to scan


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
│   ├── day-01/
│   │   └── system_info.sh
│   │
│   ├── day-02/
│   │   ├── secrets.txt
│   │   └── ownership_test.txt
│   │
│   ├── day-03/
│   │   ├── network_check.sh
│   │   └── NOTES.md
│   │
│   ├── day-04/
│   ├── day-05/
│   ├── day-06/
│   └── day-07/
│
├── week-02-<future>/
├── week-03-<future>/
└── week-04-<future>/
```

## Progress Tracking (High-Level)

This section is updated as weeks are completed.

| Week | Focus Area | Status | Notes |
|-----|-----------|--------|------|
| Week 1 | Linux foundations, users, permissions, Git & WSL | 🟡 In Progress | Hands-on completed up to Day 3 |
| Week 2 | Linux networking & processes | ⏳ Planned | |
| Week 3 | Containers & Docker | ⏳ Planned | |
| Week 4 | CI/CD basics | ⏳ Planned | |
| Week 5 | Cloud fundamentals (AWS) | ⏳ Planned | |
| Week 6–12 | Advanced DevOps topics | ⏳ Planned | |

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

This separation keeps progress clear and challenges honest.

---

## Update Policy (Important)

At the end of:
- **Each day** → Update `CHALLENGES.md`
- **Each week** → Update progress status in this README

This README will evolve, but it will remain:
- High-level
- Clean
- Easy to scan


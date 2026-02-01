# Daily Challenges & Learnings

This document captures the **real challenges faced during daily DevOps practice**, along with root causes, fixes, and key learnings.

The goal of this log is to:
- Build strong debugging and troubleshooting skills
- Document mistakes honestly
- Track learning progression over time
- Reflect real-world DevOps problem solving

This file is updated **at the end of every day**.

---

## Week 1 – Day 1: Bash & Script Execution

### Issue
The `system_info.sh` script produced continuous output and did not stop running.

### Root Cause
The script was mistakenly calling itself inside the script body, causing recursive execution.

### Fix
Removed execution commands (`chmod +x`, `./system_info.sh`) from inside the script.
Executed the script only from the terminal.

### Learning
- Script logic and script execution must be clearly separated.
- Recursive execution can easily create runaway processes in production systems.

---

## Week 1 – Day 1: Git Commands Failing

### Issue
Git commands failed with:


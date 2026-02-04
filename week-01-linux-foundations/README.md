# Week 1 – Linux Foundations & Security

Environment:
- OS: Ubuntu 20.04 (WSL1)

---

## Progress Overview

| Day | Topic | Status | Evidence |
|----|----|----|----|
| Day 1 | Linux basics & Bash | ✅ Completed | day-01/system_info.sh + NOTES.md |
| Day 2 | Users, groups, permissions | ✅ Completed | day-02/*.txt + NOTES.md |
| Day 3 | Linux networking | ✅ Completed | day-03/network_check.sh + NOTES.md |
| Day 4 | Linux processes | ✅ Completed | day-04/process_inspector.sh + NOTES.md |
| Day 5 | Logs & troubleshooting (WSL) | ✅ Completed | day-05/log_inspector.sh + NOTES.md |
| Day 6 | Hardening basics | ✅ Completed | day-06/hardening_check.sh + NOTES.md |
| Day 7 | Mini project | ⏳ Planned | day-07/ |

> **Environment note (Day 5):**  
> WSL does not expose `/var/log/syslog` or `/var/log/dmesg`.  
> Logging was adapted to WSL-friendly logs such as `/var/log/dpkg.log` and `/var/log/ubuntu-advantage.log`.

---

## Day 1 – Linux Basics & Bash
- Inspected system health  
- Wrote `system_info.sh`  
- Fixed recursive script execution issue  

---

## Day 2 – Users, Groups & Permissions
- Created and managed users  
- Reset passwords and enforced sudo boundaries  
- Practiced ownership and permissions (600 vs 660 vs 664)  
- Verified behavior using `stat`  

---

## Day 3 – Networking (WSL)
- Identified WSL IP (`169.254.x.x`) and gateway (`192.168.1.1`)  
- Validated connectivity with `ping`  
- Observed WSL limitations with `ss -tuln`  
- Used `netstat` as a fallback  

---

## Day 4 – Processes
- Used `ps aux`, `top`, and `ps -u $(whoami)`  
- Created and killed a background process with `sleep` and `kill`  
- Automated checks in `process_inspector.sh`  

---

## Day 5 – Logs & Troubleshooting (WSL)
- Mapped actual logs present in WSL using `ls /var/log`  
- Inspected `/var/log/dpkg.log` and `/var/log/ubuntu-advantage.log`  
- Used `grep` to search logs  
- Tested custom logging with `logger`  
- Built `log_inspector.sh` tailored for WSL  

---

## Day 6 – Linux Hardening Basics
- Practiced least privilege with a real secret file.
- Used `chmod 600` to protect sensitive data.
- Learned how ownership (`chown`) can block or restore access.
- Automated checks in `hardening_check.sh`.

---

## Environment & Git Troubleshooting (WSL Learning)

### Scenario  
While restructuring the repository, I attempted to rename the local folder from `devops` to `DevOps` to match GitHub naming.

### Issue Faced  
- `mv devops DevOps` failed with **Permission denied**  
- Even after fixing ownership (`chown`), rename continued to fail  
- Case-only and even temporary renames failed inside WSL  

### Root Cause  
- WSL home directory is backed by the Windows filesystem  
- Windows filesystems are **case-insensitive**  
- WSL cannot reliably perform case-only renames inside mounted Windows paths  

### Correct Resolution  
- Renamed the folder from **Windows File Explorer**, then aligned Git to the new path  
- Later removed a nested `.git` inside `week-01-linux-foundations` that was causing it to appear as a broken submodule on GitHub  

**Key takeaway:**  
Repository structure issues in WSL often require coordination between Windows filesystem behavior and Git semantics.


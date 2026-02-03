# Week 1 – Linux Foundations & Security

Environment:
- OS: Ubuntu 20.04 (WSL1)

---

## Progress Overview

| Day | Topic | Status | Evidence |
|----|----|----|----|
| Day 1 | Linux basics & Bash | ✅ Completed | day-01/system_info.sh |
| Day 2 | Users, groups, permissions | ✅ Completed | day-02/secrets.txt, ownership_test.txt |
| Day 3 | Linux networking | ⏳ Planned | day-03/ |
| Day 4 | Processes | ⏳ Planned | day-04/ |
| Day 5 | Logs & troubleshooting | ⏳ Planned | day-05/ |
| Day 6 | Hardening basics | ⏳ Planned | day-06/ |
| Day 7 | Mini project | ⏳ Planned | day-07/ |

---

## Day 1 – Linux Basics & Bash
- Inspected system health
- Wrote `system_info.sh`
- Fixed recursive script execution issue

## Day 2 – Users, Groups & Permissions
- Created and managed users
- Reset passwords and enforced sudo boundaries
- Practiced ownership and permissions (600 vs 660 vs 664)
- Verified behavior using `stat`
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
- WSL cannot always perform case-only or locked directory renames
- Linux tools (`mv`) may fail even when permissions are correct
### Correct Resolution
- Renamed the folder from **Windows File Explorer** using:


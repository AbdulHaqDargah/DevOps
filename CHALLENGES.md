# Daily Challenges & Learnings

This file captures **real issues faced during daily DevOps practice**, along with root causes and fixes.

The goal is to:
- Build debugging muscle
- Track recurring patterns
- Reflect real-world DevOps problem solving

---


## Week 1 – Day 1: Bash & Script Execution

### Issue
`system_info.sh` produced continuous output and did not stop.

### Root Cause
The script was mistakenly calling itself inside the script body, causing recursive execution.

### Fix
Removed execution commands from inside the script.
Executed the script only from the terminal.

### Learning
- Script logic and execution must be clearly separated.
- Recursive execution can cause runaway processes in production systems.

---

## Week 1 – Day 1: Git Repository Context

### Issue
Git commands failed with:
`fatal: not a git repository`

### Root Cause
Commands were executed outside the directory containing the `.git` folder.

### Fix
Navigated to the correct repository root before running Git commands.

### Learning
- Git operations are scoped to the repository directory.
- Always confirm location with `pwd` before running Git commands.

---

## Week 1 – Day 2: Privilege Escalation Failure

### Issue
Attempted to reset a user password using `sudo` from a non-sudo user.

### Root Cause
The user was not part of the `sudo` group.

### Fix
Switched back to a sudo-enabled user and ran the command.

### Learning
- Linux enforces privilege boundaries strictly.
- Admin rights must be explicitly granted.

---

## Week 1 – Day 2: File Access Unexpectedly Allowed

### Issue
A file with permission `664` was readable by users not in the group.

### Root Cause
The “others” permission included read access.

### Fix
Changed permissions to `660` to block access for others.

### Learning
- Linux checks access in the order: owner → group → others.
- “Others” permissions are easy to overlook and dangerous.

---

## Week 1 – Day 3: Repo Rename Failed on WSL

### Issue
Renaming `devops` → `DevOps` failed repeatedly with permission errors.

### Root Cause
WSL home directory is backed by a Windows filesystem, which is case-insensitive and may lock directories.

### Fix
Renamed the folder using Windows File Explorer via:
`\\wsl$\Ubuntu-20.04\home\alym`

Updated Git remote URL accordingly.

### Learning
- Filesystem behavior depends on the underlying OS.
- The correct fix is choosing the right layer, not forcing permissions.

---

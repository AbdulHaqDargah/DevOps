# Daily Challenges & Learnings

This file records real problems faced during daily DevOps practice.
Each entry follows a simple pattern:
Issue → Root Cause → Fix → Learning

This file is updated at the end of every day.

==================================================

WEEK 1 – DAY 1 (Linux Basics & Bash)

Issue:
system_info.sh kept running continuously and did not stop.

Root Cause:
The script was calling itself inside the script body, causing recursive execution.

Fix:
Removed execution commands from inside the script.
Executed the script only from the terminal.

Learning:
Script logic and script execution must be separate.
Recursive execution can easily cause runaway processes.

--------------------------------------------------

Issue:
Git commands failed with “not a git repository”.

Root Cause:
Git commands were executed outside the directory containing the .git folder.

Fix:
Navigated to the correct repository root before running Git commands.

Learning:
Git operations only work inside the repository scope.

==================================================

WEEK 1 – DAY 2 (Users, Groups & Permissions)

Issue:
Unable to reset password using sudo from a non-sudo user.

Root Cause:
The user was not part of the sudo group.

Fix:
Switched to a sudo-enabled user and ran the command.

Learning:
Linux enforces privilege boundaries strictly.

--------------------------------------------------

Issue:
“This incident will be reported” message appeared, but no logs found.

Root Cause:
WSL does not maintain full authentication logs like real Linux servers.

Fix:
Confirmed that enforcement works even without audit logs.

Learning:
Auditing and enforcement are separate concepts.

--------------------------------------------------

Issue:
A file with permission 664 was readable by users outside the group.

Root Cause:
The “others” permission included read access.

Fix:
Changed permission to 660.

Learning:
Linux checks permissions in order: owner → group → others.

--------------------------------------------------

Issue:
Renaming folder from devops to DevOps failed repeatedly.

Root Cause:
WSL home directory is backed by a Windows filesystem (case-insensitive).

Fix:
Renamed the folder using Windows Explorer via:
\\wsl$\Ubuntu-20.04\home\alym

Learning:
Filesystem behavior depends on the underlying OS.

--------------------------------------------------

Issue:
Git commands failed at repo root.

Root Cause:
The actual Git repository existed inside a subfolder.

Fix:
Moved the .git directory to the repo root.

Learning:
The .git directory defines the repository boundary.

--------------------------------------------------

Issue:
Push rejected due to unrelated histories.

Root Cause:
Remote main branch already existed with different history.

Fix:
Pulled using:
git pull origin main --allow-unrelated-histories
Resolved conflicts manually.

Learning:
Git protects remote history by default.

--------------------------------------------------

Issue:
Merge conflict in README.md.

Root Cause:
Both local and remote had different README files at the same path.

Fix:
Kept repo-level README and removed week-level content.

Learning:
Merge conflicts require understanding file intent, not guessing.

==================================================

WEEK 1 – DAY 3 (Networking & WSL behavior)

Issue:
The command `ss -tuln` failed with:
"Cannot open netlink socket: Protocol not supported".

Root Cause:
WSL Ubuntu kernel does not expose required netlink functionality for `ss`.

Fix:
Installed and used `netstat -tulnp` instead.

Observation:
`netstat` showed no listening services, which is expected on a fresh system.

Learning:
Some Linux tools behave differently (or fail) under WSL.
Tool failures do not always mean networking is broken.

-------------------------------------------------

Issue:
- `week-01-linux-foundations` appeared on GitHub but could not be opened (404 error).
- GitHub treated it as a submodule instead of a normal folder.
- Locally, files were correct, but online browsing was broken.

Root Cause:
- A nested `.git` directory existed inside:
  `DevOps/week-01-linux-foundations/.git`
- Because of this, Git tracked the folder as a submodule pointer instead of storing files.

Fix Applied:
1. Removed nested Git repository:
     rm -rf week-01-linux-foundations/.git
2. Cleared broken submodule reference:
     git rm --cached week-01-linux-foundations
3. Re-added folder as normal content:
     git add week-01-linux-foundations
     git commit -m "Convert week-01-linux-foundations from submodule to normal folder"
     git push origin main

Learning
- Never keep a `.git` inside another Git repo unless you truly want a submodule.
- A folder showing with a small arrow icon on GitHub usually means “submodule.”
- If GitHub shows 404 on a folder, suspect a submodule issue before assuming sync problems.

---------------------------------------------------

WEEK 1 – Day 5 (Logs in WSL)

Challenge:
- Standard Linux log paths like `/var/log/syslog` and `/var/log/dmesg` did not exist in WSL.
- Initial log inspection script failed because it assumed a full Linux server layout.

Resolution:
- Listed available logs with `ls /var/log`.
- Switched to WSL-appropriate logs:
  - `/var/log/dpkg.log`
  - `/var/log/ubuntu-advantage.log`
- Rewrote `log_inspector.sh` to work reliably in WSL.
- Verified custom logs using `logger` + `grep -R /var/log`.

Learning:
- Log locations vary by environment (WSL vs real server).
- Good troubleshooting starts with checking what actually exists, not what tutorials assume.

---------------------------------------------------

WEEK 1 – Day 6 (Hardening Basics)

Challenge:
- After changing ownership of sensitive.txt to root:root, I could no longer read my own file.

Resolution:
- Used sudo chown alym:alym to restore correct ownership.
- Verified access again using cat and hardening_check.sh.

Learning:
- Permissions alone are not enough — ownership matters just as much.
- You should always check both before declaring something “secure.”

---------------------------------------------------

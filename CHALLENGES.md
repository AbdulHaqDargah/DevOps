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

==================================================

WEEK 1 – DAY 3 (Git, WSL & Filesystem)

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

End of Week 1


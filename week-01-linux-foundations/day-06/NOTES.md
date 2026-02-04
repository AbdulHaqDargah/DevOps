# Day 6 — Linux Hardening Basics

What I did:
- Verified my identity using whoami and id.
- Confirmed I work as a normal user (alym) and use sudo only when needed.
- Created a sensitive file (sensitive.txt).
- Hardened it using chmod 600.
- Verified that another user (nobody) could not access it.
- Changed ownership to root:root to simulate a mistake.
- Recovered access using sudo chown alym:alym.
- Updated hardening_check.sh to verify both permissions and ownership.

Key lessons:
- Security is permissions + ownership, not just permissions.
- chmod 600 is the right baseline for secrets.
- sudo is for elevation, not daily work.
- You can lock yourself out if ownership is wrong — but you can recover safely.


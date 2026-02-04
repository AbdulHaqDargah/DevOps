# Day 6 — Linux Hardening Basics

What I did:
- Verified identity using `whoami` and `id`.
- Confirmed I operate as a normal user (alym) and elevate only with `sudo`.
- Created a sensitive file (`sensitive.txt`).
- Hardened it using `chmod 600`.
- Verified that another user (`nobody`) could not access it.
- Changed ownership to `root:root` to simulate a real mistake.
- Restored access using `sudo chown alym:alym`.
- Updated `hardening_check.sh` to validate both permissions and ownership.

Key lessons:
- Security is permissions **and** ownership together.
- `chmod 600` is the right baseline for secrets.
- Being in `sudo` does not mean you are root by default.
- You can lock yourself out with bad ownership — but you can recover safely.


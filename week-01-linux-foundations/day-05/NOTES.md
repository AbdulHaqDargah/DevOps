# Day 5 — Logs & Troubleshooting Notes (WSL)

- My WSL Ubuntu does NOT have /var/log/syslog or /var/log/dmesg.
- This is normal for WSL, which runs a lightweight Linux environment.

Instead, I inspected:
- /var/log/dpkg.log
- /var/log/ubuntu-advantage.log

Learned how to:
- List logs using `ls /var/log`
- Read recent entries using `tail`
- Search logs using `grep`
- Write custom log messages using `logger`

Key takeaway:
Log locations differ between real servers and WSL; tools must adapt to the environment.


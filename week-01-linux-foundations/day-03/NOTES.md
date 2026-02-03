# Day 3 — Linux Networking Notes

- My WSL IP is 169.254.130.37 on eth0.
- My gateway to the internet is 192.168.1.1 on wifi0.
- I can successfully ping:
  - 127.0.0.1 (self)
  - 192.168.1.1 (router)
  - google.com (internet)

- The command `ss -tuln` does not work in my WSL environment due to kernel limitations.
- `netstat -tulnp` works, but shows no listening services — which is expected.


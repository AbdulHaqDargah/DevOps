# Day 4 — Linux Processes Notes

- PID 1 is `/init`, the parent of all processes.
- My shell (`bash`) is itself a running process.
- Every command creates new child processes.

- `top` shows real-time CPU and memory activity.
- `ps aux` lists all processes on the system.
- `ps -u $(whoami)` shows only my processes.

- `sleep 300 &` starts a background job.
- `kill <PID>` successfully terminates a process.


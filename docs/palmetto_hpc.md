# 🏔️ Palmetto HPC Guide

This guide covers usage and tips for the Palmetto High-Performance Computing (HPC) cluster at Clemson University.

## 1. Connecting to Palmetto
Use the following command to SSH into the cluster:
```bash
ssh <your_username>@slogin.palmetto.clemson.edu
```

## 2. Interactive Jobs (PBS)
To request an interactive node with specific resources:
```bash
qsub -I -l select=1:ncpus=4:mem=16gb,walltime=02:00:00
```

## 3. Data Transfer
Use `rclone` (if configured on Palmetto) or `scp` to move files:
```bash
scp -r ./local_folder <your_username>@slogin.palmetto.clemson.edu:/home/<your_username>/destination
```

## 4. Useful Commands
- `qstat -u <your_username>`: Check your running jobs.
- `checknode`: See available resources.
- `module list`: Show loaded software modules.

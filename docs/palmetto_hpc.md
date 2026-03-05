# 🏔️ Palmetto HPC Guide

This guide covers usage and tips for the Palmetto High-Performance Computing (HPC) cluster at Clemson University.

## 1. Connecting to Palmetto
Use the following command to SSH into the cluster:
```bash
ssh shamrap@slogin.palmetto.clemson.edu
```

## 2. Interactive Jobs (PBS)
To request an interactive node with specific resources:
```bash
qsub -I -l select=1:ncpus=4:mem=16gb,walltime=02:00:00
```

## 3. Data Transfer
Use `rclone` (if configured on Palmetto) or `scp` to move files:
```bash
scp -r ./local_folder shamrap@slogin.palmetto.clemson.edu:/home/shamrap/destination
```

## 4. Useful Commands
- `qstat -u shamrap`: Check your running jobs.
- `checknode`: See available resources.
- `module list`: Show loaded software modules.

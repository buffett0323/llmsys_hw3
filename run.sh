#!/bin/bash
#SBATCH -N 1
#SBATCH -p GPU-shared
#SBATCH -t 48:00:00
#SBATCH --gpus=v100-32:1
#SBATCH --output=jupyter_output_%j.log      # Standard output file (%j will be replaced with job ID)
#SBATCH --error=jupyter_error_%j.log        # Standard error file (%j will be replaced with job ID)

# load cuda
module load cuda/12.4.0

# activate environment
nvidia-smi

cd /jet/home/bliu10/llmsys_hw3
source .venv/bin/activate
python project/run_machine_translation.py
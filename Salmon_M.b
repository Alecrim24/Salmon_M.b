#!/bin/bash

#SBATCH -p shared
#SBATCH -c 100
#SBATCH --mem=200G
#SBATCH --gres=tmp:400G
#SBATCH -t 71:59:00


cd /nobackup/qkdf72/Trinity/Reads/Trimmed

export LD_PRELOAD=/nobackup/dbl0hpc/apps/miniconda3/envs/LazyB/lib/libjemalloc.so.2

# this is to index a transcriptome with all combined samples for 1 plant out of 3

module purge

module load bioinformatics

module load salmon/1.10.1

salmon index -t All_trinity_stages_P2_M.b.Trinity.fasta -i salmon_index

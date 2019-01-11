#!/bin/bash
# run this script before running any submission scripts!
# this script allows you to use samtools, ngstools, etc.

## Do not change this section of code unless you want to change software versions!
# within an interactive node (type "bsub -Is bash" to get to one), 
# you can see the list of available software versions by typing "module avail"
module load FastQC-0.11.2
module load samtools-0.1.19
module load ngsutils-0.5.7
module load STAR/2.5.2a
STARFLAGS="--readFilesCommand zcat"
#######################

## Update these variables below to your project name, experiment name, number of samples,
#  code home directory (where your "rajlabseqtools/Utilities" folder is. if it's in your
#  home directory (e.g. /home/esanford), you can leave the "~" symbol)
PROJECT="HistoryDependence"
EXPERIMENT="HD3_RNA-Seq"
RAWDATA_DIRECTORY="/home/esanford/data/HD3_RNA-Seq/data_from_illumina"
N_SAMPLES=11
codeHomeDir=~




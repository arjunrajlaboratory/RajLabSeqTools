#!/bin/bash

#run from repo



mergePeaks -prefix mergedPeaks/EGFR-noDrug/EGFR-noDrug \
	-matrix mergedPeaks/EGFR-noDrug/EGFR-noDrug \
	-venn mergedPeaks/EGFR-noDrug/EGFR-noDrug -d given \
	analyzed/EGFR-p9-noDrug/HOMER/peaks.txt analyzed/EGFR-p14-noDrug-v2/HOMER/peaks.txt \
	> mergedPeaks/EGFR-noDrug/EGFR-noDrug
	
mergePeaks -prefix mergedPeaks/EGFR-week1/EGFR-week1 \
	-matrix mergedPeaks/EGFR-week1/EGFR-week1 -venn mergedPeaks/EGFR-week1/EGFR-week1 \
	-d given analyzed/EGFR-p9-week1/HOMER/peaks.txt \
	analyzed/EGFR-p14-week1-v2/HOMER/peaks.txt > \
	mergedPeaks/EGFR-week1/EGFR-week1
	
mergePeaks -prefix mergedPeaks/EGFR-week4/EGFR-week4 \
	-matrix mergedPeaks/EGFR-week4/EGFR-week4 -venn mergedPeaks/EGFR-week4/EGFR-week4 \
	-d given analyzed/EGFR-p9-week4/HOMER/peaks.txt \
	analyzed/EGFR-p14-week4-v2/HOMER/peaks.txt >mergedPeaks/EGFR-week4/EGFR-week4

mergePeaks -prefix mergedPeaks/mix-noDrug/mix-noDrug \
	-matrix mergedPeaks/mix-noDrug/mix-noDrug -venn mergedPeaks/mix-noDrug/mix-noDrug \
	-d given analyzed/mix-p9-noDrug/HOMER/peaks.txt \
	analyzed/mix-p14-noDrug-v2/HOMER/peaks.txt >mergedPeaks/mix-noDrug/mix-noDrug

mergePeaks -prefix mergedPeaks/mix-week1/mix-week1 \
	-matrix mergedPeaks/mix-week1/mix-week1 -venn mergedPeaks/mix-week1/mix-week1 \
	-d given analyzed/mix-p9-week1/HOMER/peaks.txt \
	analyzed/mix-p14-week1-v2/HOMER/peaks.txt > mergedPeaks/mix-week1/mix-week1
	
mergePeaks -prefix mergedPeaks/mix-week4/mix-week4 \
	-matrix mergedPeaks/mix-week4/mix-week4 -venn mergedPeaks/mix-week4/mix-week4 \
	-d given analyzed/mix-p9-week4/HOMER/peaks.txt \
	analyzed/mix-p14-week4-v2/HOMER/peaks.txt > mergedPeaks/mix-week4/mix-week4
	
mergePeaks -prefix mergedPeaks/neg-week4/neg-week4 \
	-matrix mergedPeaks/neg-week4/neg-week4 -venn mergedPeaks/neg-week4/neg-week4 \
	-d given analyzed/neg-p9-week4/HOMER/peaks.txt \
	analyzed/neg-p14-week4-v2/HOMER/peaks.txt > mergedPeaks/neg-week4/neg-week4

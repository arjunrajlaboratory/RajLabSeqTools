#!/bin/bash


EXPERIMENT="ProcessedDataEGFRsort"

codeHomeDir="/Users/sydneyshaffer"

cmdToRun="$codeHomeDir/rajlabseqtools/ATACseqProcessing/ATACutilities/stepThreeCallPeaks/runHOMERonAll.sh \
	$EXPERIMENT $codeHomeDir"

echo "$cmdToRun"
eval "$cmdToRun"
echo "done"
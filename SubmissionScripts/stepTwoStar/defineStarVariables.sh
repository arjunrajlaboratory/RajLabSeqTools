#!/bin/bash


EXPERIMENT="wm983bLdB_run2"

codeHomeDir=/home/shaffers

cmdToRun="$codeHomeDir/rajlabseqtools/Utilities/stepTwoStar/runStarOnAll.sh $EXPERIMENT $codeHomeDir"

echo "$cmdToRun"
eval "$cmdToRun"
echo "done with star"


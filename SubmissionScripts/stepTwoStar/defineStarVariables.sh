#!/bin/bash


EXPERIMENT="wm983bLdB_run2"
STARFLAGS=""

codeHomeDir=/home/shaffers

cmdToRun="$codeHomeDir/rajlabseqtools/Utilities/stepTwoStar/runStarOnAll.sh $EXPERIMENT $codeHomeDir $STARFLAGS"

echo "$cmdToRun"
eval "$cmdToRun"
echo "done with star"


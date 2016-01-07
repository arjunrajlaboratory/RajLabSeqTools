#!/bin/bash
# run in interactive session from within repo

codeHomeDir=$1
PROJECT=$2
EXPERIMENT=$3


echo "...generating melted data"
meltCmd="$codeHomeDir/rajlabseqtools/Utilities/stepThreeGenerateCounts/meltHTSeqData.pl $EXPERIMENT/analyzed/*/htseq/*.htseq.stdout > /project/arjunrajlab/$PROJECT/repo/$EXPERIMENT/meltedData.tsv"
eval "$meltCmd"
echo "done"
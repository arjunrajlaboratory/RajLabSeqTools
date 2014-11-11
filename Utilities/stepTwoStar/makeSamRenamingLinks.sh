#!/bin/bash
# run from within repo 

EXPERIMENT=$1

CURRENTEXPNUMBER=1
CURRENTSAMPLENUMBER=1
for fileName in $EXPERIMENT/analyzed/* ; do
    echo "Working on sample $CURRENTSAMPLENUMBER of experiment $CURRENTEXPNUMBER"
    sampleID=`basename "$fileName"`

    fullCmd="ln -s Aligned.out.sam $EXPERIMENT/analyzed/$sampleID/star/$sampleID.sam"
    echo "$fullCmd"
    eval "$fullCmd"

    CURRENTSAMPLENUMBER=$((CURRENTSAMPLENUMBER+1))
done
echo "Done with experiment $EXPERIMENT"
CURRENTEXPNUMBER=$((CURRENTEXPNUMBER+1))
echo "Done with all experiments"

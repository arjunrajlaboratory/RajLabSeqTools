#!/bin/bash
# run from within repo

if [ ! -d $EXPERIMENT/analyzed ]; then
    mkdir $EXPERIMENT/analyzed
fi


CURRENTSAMPLENUMBER=1
for fileName in $EXPERIMENT/raw/* ; do
    echo "Working on sample $CURRENTSAMPLENUMBER of experiment $EXPERIMENT"
    SAMPLEID=`basename "$fileName"`

    if [ ! -d $EXPERIMENT/analyzed/$SAMPLEID ]; then
    mkdir $EXPERIMENT/analyzed/$SAMPLEID
	fi

	destinationDir="$EXPERIMENT/analyzed/$SAMPLEID/fastqc/"
	if [ ! -d $destinationDir ]; then
	    mkdir "$destinationDir"
	fi

	inputFile="$EXPERIMENT/raw/$SAMPLEID/$SAMPLEID.fastq.gz"

    fullCmd="fastqc -o $destinationDir $inputFile"
    echo "$fullCmd"
    bsub -J "$EXPERIMENT.FastQC.$CURRENTSAMPLENUMBER" -o "$EXPERIMENT/analyzed/$SAMPLEID/log/$(date +%Y-%m-%d_%H-%M).FastQC.bsub.stdout" -e "$EXPERIMENT/analyzed/$SAMPLEID/log/$(date +%Y-%m-%d_%H-%M).FastQC.bsub.stderr" "$fullCmd"
    echo ""

    CURRENTSAMPLENUMBER=$((CURRENTSAMPLENUMBER+1))
done
echo "Submitted all samples to FastQC"


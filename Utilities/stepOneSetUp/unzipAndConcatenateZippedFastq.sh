#!/bin/bash

ZIPFILEDIRECTORY=$1

OUTFASTADIRECTORY=$2

for dirname in $ZIPFIELDIRECTORY/* ; do
    cd $dirname

    INPUT=`ls *`
    SAMPLE=${INPUT%%_*}

    if [ ! -d $OUTFASTADIRECTORY/ ]; then
        mkdir $OUTFASTADIRECTORY/
    fi


    if [ ! -d $OUTFASTADIRECTORY/raw ]; then
        mkdir $OUTFASTADIRECTORY/raw
    fi

    if [ ! -d $OUTFASTADIRECTORY/raw/$SAMPLE ]; then
        mkdir $OUTFASTADIRECTORY/raw/$SAMPLE
    fi

    for i in *.gz; do
        gunzip -c $i > ${i%.*}
    done

    FASTQR1=${SAMPLE}_R1.fastq
#    FASTQR2=${SAMPLE}_R2.fastq

    cat *R1*fastq > $OUTFASTADIRECTORY/raw/$SAMPLE/$FASTQR1
#    cat *R2*fastq > $OUTFASTADIRECTORY/raw/$SAMPLE/$FASTQR2

done


#!/bin/bash

ZIPFILEDIRECTORY=$1

OUTFASTADIRECTORY=$2

for dirname in $ZIPFIELDIRECTORY/* ; do
    cd $dirname

    INPUT=`ls *001_R1*`
    SAMPLE=`echo $INPUT | cut -d'_' -f 1`

    if [ ! -d $EXPERIMENT/raw ]; then
        mkdir $EXPERIMENT/raw
    fi

    if [ ! -d $EXPERIMENT/raw/$SAMPLE ]; then
        mkdir $EXPERIMENT/raw/$SAMPLE
    fi

    for i in *.gz; do
        gunzip -c $i > ${i%.*}
    done

    FASTQR1=`echo $SAMPLE'_R1.fastq'`
    FASTQR2=`echo $SAMPLE'_R2.fastq'`

    cat *R1*fastq > $EXPERIMENT/raw/$SAMPLE/$FASTQR1
    cat *R2*fastq > $EXPERIMENT/raw/$SAMPLE/$FASTQR2

done


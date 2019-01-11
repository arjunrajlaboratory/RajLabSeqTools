#!
# run from within "repo" directory

EXPERIMENT=$1
SAMPLEID=$2
STARFLAGS=${@:3} # pass all arguments after the first two

toolNAME=star

if [ ! -d $EXPERIMENT/analyzed ]; then
    mkdir $EXPERIMENT/analyzed
fi

if [ ! -d $EXPERIMENT/analyzed/$SAMPLEID ]; then
    mkdir $EXPERIMENT/analyzed/$SAMPLEID
fi

if [ ! -d $EXPERIMENT/analyzed/$SAMPLEID/log ]; then
    mkdir $EXPERIMENT/analyzed/$SAMPLEID/log
fi


destinationDir="$EXPERIMENT/analyzed/$SAMPLEID/star/"
if [ ! -d $destinationDir ]; then
    mkdir "$destinationDir"
fi

inputFile="$EXPERIMENT/raw/$SAMPLEID/$SAMPLEID.fastq.gz"

genomeDir="/home/apps/STAR/indexes/hg19"

numCPU=4
cmdToRun="STAR \
	--genomeDir $genomeDir \
	--readFilesIn $inputFile \
	--genomeLoad LoadAndRemove \
	--outFileNamePrefix $destinationDir/$SAMPLEID. \
	--runThreadN $numCPU \
	$STARFLAGS"

JOURNAL=$EXPERIMENT/analyzed/$SAMPLEID/log/$(date +%Y-%m-%d_%H-%M).$toolNAME.log
echo "Starting..." >> $JOURNAL
date >> $JOURNAL
echo "$cmdToRun" >> $JOURNAL
eval "$cmdToRun"
date >> $JOURNAL
echo "Done" >> $JOURNAL

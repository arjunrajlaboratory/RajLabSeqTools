#!
# run from within "repo" directory

EXPERIMENT=$1
SAMPLEID=$2
STARFLAGS=$3

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

inputFile="$EXPERIMENT/raw/$SAMPLEID/$SAMPLEID.fastq"
if [ ! -e $inputFile ]; then
    gunzip -c "$inputFile.gz" > "$inputFile"
fi

# obtained by looking at 'module show STAR'
starNAME="/opt/software/STAR/STAR_2.3.0e/STAR"

# obtained by looking at 'module show STAR-hg19'
genomeDir="/home/apps/STAR/indexes/hg19"

numCPU=4
cmdToRun="$starNAME \
	--genomeDir $genomeDir \
	--readFilesIn $inputFile \
	--genomeLoad LoadAndRemove \
	--outFileNamePrefix $destinationDir \
	--runThreadN $numCPU \
	$STARFLAGS"

JOURNAL=$EXPERIMENT/analyzed/$SAMPLEID/log/$(date +%Y-%m-%d_%H-%M).$toolNAME.log
echo "Starting..." >> $JOURNAL
date >> $JOURNAL
echo "$cmdToRun" >> $JOURNAL
eval "$cmdToRun"
date >> $JOURNAL
echo "Done" >> $JOURNAL


EXPERIMENT="wm983bLdB_run2"

codeHomeDir=/home/shaffers

PROJECT="CancerSeq"

cmdToRun="$codeHomeDir/rajlabseqtools/Utilities/stepThreeGenerateCounts/allGenerateCounts.sh $EXPERIMENT $codeHomeDir $PROJECT"

echo "$cmdToRun"
eval "$cmdToRun"
echo "done"
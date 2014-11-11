
EXPERIMENT="wm983bLdB_run2"

codeHomeDir=/home/shaffers

cmdToRun="$codeHomeDir/rajlabseqtools/Utilities/stepThreeGenerateCounts/allGenerateCounts.sh $EXPERIMENT $codeHomeDir"

echo "$cmdToRun"
eval "$cmdToRun"
echo "done"
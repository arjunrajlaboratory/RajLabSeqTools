#!/bin/bash
# run from within repo

userName="shaffers"

bsub -n 4 -q max_mem64 < /home/$userName/rajlabseqtools/SubmissionScripts/stepTwoStar/defineStarVariables.sh
#!/bin/bash
# run from within repo

projectName="CancerSeq"

bsub -n 4 -q max_mem64 < /project/arjunrajlab/$projectName/repo/SubmissionScripts/stepTwoStar/defineStarVariables.sh
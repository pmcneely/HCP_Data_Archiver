#!/bin/bash
set -e

TRANCHE=12

echo Uploading tranche $TRANCHE....
rsync -Pav -rsh=ssh --include=*preproc* --exclude='*' --log-file=results/tranche_${TRANCHE}_preproc.txt ./tranche_${TRANCHE}/ pmcneely@pegasus:/SMHS/groups/keeneylab/data/mri/hcp/wu-minn/preproc/

rsync -Pav -rsh=ssh --include=*unproc* --exclude='*' --log-file=results/tranche_${TRANCHE}_unproc.txt ./tranche_${TRANCHE}/ pmcneely@pegasus:/SMHS/groups/keeneylab/data/mri/hcp/wu-minn/unproc/

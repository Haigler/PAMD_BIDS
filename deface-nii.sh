#!/bin/bash
# script for defacing nifti images
#
# Requires Python module pydeface.


dataDir="~/Levin/Data/PAMD/PAMD_BIDS/"
currDir=$(pwd)

# deface images
find "$dataDir" -type f -name '*T1w.nii.gz' -execdir pydeface "{}" \;

# rename output -- note that find does not support string substitution and 
# it is expensive to start a subshell for a simple move command. Hence this.
find "$dataDir" -type f -name '*T1w_defaced.nii.gz' -print0 | 
	while IFS= read -r -d '' file; do
		mv $file "${file/_defaced.nii.gz/.nii.gz}"
	done
	

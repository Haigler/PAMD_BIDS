# LEVIN_BIDS
The LEVIN dataset includes MRI and psych data from 28 mothers 3 months postpartum. This repository includes all code and instructions for putting the data in BIDS structure.

1. Deidentifying DICOMS:

2. Conversion to .nii and BIDS structure: Anonymized DICOMs were converted to .nii and put into BIDS stucture using dicm2nii (https://github.com/rordenlab/dcm2niix)

3. Converting task .m to .tsv

4. Assembling metadata:

5. Defacing .nii: Levin anatomical .nii were defaced with pydeface (https://github.com/poldracklab/pydeface)

6. BIDS Validation:

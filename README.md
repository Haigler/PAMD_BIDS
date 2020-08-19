# PAMD_BIDS
The PAMD dataset includes MRI and psych data from 25 mothers 3 months postpartum. This repository includes all code and instructions for putting the data in BIDS structure.

1. Deidentifying DICOMS: Batch Anonymization of the DICOMS using DicomBrowser https://nrg.wustl.edu/software/dicom-browser/

2. Conversion to .nii and BIDS structure: Anonymized DICOMs were converted to .nii and put into BIDS stucture using dicm2nii (https://github.com/xiangruili/dicm2nii).

3. Converting task .m to .tsv: We converted the mat structs to .tsv for each in-scanner task.

4. Assembling metadata:
    ##dataset_description.json: Manually created (@haigler)
    ##participants.tsv: Manually created from PAMD demographic data (@haigler)
    ##task-affect_bold.json: Manually created (@haigler)
    ##task-infant_bold.json: Manually created (@haigler)
    ##PAMDcodebook.tsv: Manually created (@haigler)
    ##PAMDdata.tsv: Manually created (@haigler)
      ###sub-####.tsv: Automatically created by dicm2nii
      ###sub-####_T1w.json: Automatically created by dicm2nii
      ###sub-####_magnitud1.json: Automatically created by dicm2nii
      ###sub-####_phase1.json: Automatically created by dicm2nii
      ###sub-####_task-affect_run-01.json: Automatically created by dicm2nii
      ###sub-####_task-affect_run-02.json: Automatically created by dicm2nii
      ###sub-####_task-infant_run-01.json: Automatically created by dicm2nii
      ###sub-####_task-infant_run-012.json: Automatically created by dicm2nii

5. Defacing .nii: PAMD anatomical .nii were defaced with pydeface (https://github.com/poldracklab/pydeface).

6. Cleanup: Correct column order in events.tsv files, rename events.tsv files, move events.tsv files to the subject's func folder, and remove 'defaced' from anat .nii, and clean up participants file

7. BIDS Validation: The full PAMD dataset was validated using bids-validator (https://bids-standard.github.io/bids-validator/).

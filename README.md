# LEVIN_BIDS
The LEVIN dataset includes MRI and psych data from 25 mothers 3 months postpartum. This repository includes all code and instructions for putting the data in BIDS structure.

1. Deidentifying DICOMS: Batch Anonymization of the DICOMS using DicomBrowser https://nrg.wustl.edu/software/dicom-browser/

2. Conversion to .nii and BIDS structure: Anonymized DICOMs were converted to .nii and put into BIDS stucture using dicm2nii (https://github.com/xiangruili/dicm2nii).

3. Converting task .m to .tsv: We converted the mat structs to .tsv for each in-scanner task.

4. Assembling metadata:
    ##dataset_description.json: Manually created (@haigler)
    ##participants.tsv: Manually created from Levin demographic data (@haigler)
    ##task-affect_bold.json: Manually created (@haigler)
    ##task-infant_bold.json: Manually created (@haigler)
    ##levincodebook.tsv: Manually created (@haigler)
    ##levindata.tsv: Manually created (@haigler)
      ###sub-####.tsv: Automatically created by dicm2nii
      ###sub-####_T1w.json: Automatically created by dicm2nii
      ###sub-####_magnitud1.json: Automatically created by dicm2nii
      ###sub-####_phase1.json: Automatically created by dicm2nii
      ###sub-####_task-affect_run-01.json: Automatically created by dicm2nii
      ###sub-####_task-affect_run-02.json: Automatically created by dicm2nii
      ###sub-####_task-infant_run-01.json: Automatically created by dicm2nii
      ###sub-####_task-infant_run-012.json: Automatically created by dicm2nii

5. Defacing .nii: Levin anatomical .nii were defaced with pydeface (https://github.com/poldracklab/pydeface).

6. BIDS Validation: The full Levin dataset was validated using bids-validator (https://github.com/bids-standard/bids-validator).

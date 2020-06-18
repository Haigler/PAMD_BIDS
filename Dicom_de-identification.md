# DICOM Anonymization
## 1. Download DicomBrowser (https://nrg.wustl.edu/software/dicom-browser/) as a jar file. 
## 2. Open the terminal and navigate to where you have saved the jar file. Run 'java -jar packagename.jar' in the terminal to run the application (We changed the package name to DicomBrowser.jar)
## 3. Click on 'File' and then 'Open,' navigate to the raw DICOMs directory, and load all DICOMs you'd like to anonymize, which can be done by simply choosing the directories in which the DICOMs exist. 
## 4. Select the values of attributes you'd like to anonymize and replace with "anonymous" by rewriting. The values will be changed in all selected DICOMs. The following attributes were anonymized in the LEVIN dataset:
+ PatientName
+ PatientID
+ PatientBirthDate
+ PatientSex
+ PatientAge
+ PatientSize
+ PatientWeight
+ Referring Physician's Name
+ Referring Physician Identification Sequence
+ Referring Physician Address and Number
## 5. Save the deidentified DICOMS, this can be done by appending their names with -anon (which is the default option). We replaced the original files which is also an option.  Further instructions are available here, https://wiki.xnat.org/xnat-tools/dicombrowser/how-to-perform-batch-anonymization-with-dicombrowser


### http://dicomlookup.com/ is a resource which can help find tags. You can also create a script if you wish to not manually change the values.

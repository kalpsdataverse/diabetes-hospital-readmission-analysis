SELECT COUNT(*) AS missing_race
FROM diabetic_data
WHERE race = '?';

SELECT DISTINCT race
FROM diabetic_data
ORDER BY race;

SELECT DISTINCT medical_specialty
FROM diabetic_data
ORDER BY medical_specialty;

SELECT DISTINCT gender
FROM diabetic_data
ORDER BY gender;

SELECT name
FROM sqlite_master
WHERE type='table';

CREATE TABLE diabetic_data_cleaned AS
SELECT *
FROM diabetic_data;

SELECT COUNT(*)
FROM diabetic_data_cleaned;

ALTER TABLE diabetic_data_cleaned
DROP COLUMN weight;

ALTER TABLE diabetic_data_cleaned
DROP COLUMN payer_code;

ALTER TABLE diabetic_data_cleaned
DROP COLUMN examide;

ALTER TABLE diabetic_data_cleaned
DROP COLUMN citoglipton;

PRAGMA table_info (diabetic_data_cleaned);

SELECT
MIN(time_in_hospital) AS Minimum_Days,
MAX(time_in_hospital) AS Maximum_Days
FROM diabetic_data_cleaned;

SELECT
MIN(num_lab_procedures) AS Min_Lab,
MAX(num_lab_procedures) AS Max_Lab,

MIN(num_procedures) AS Min_Proc,
MAX(num_procedures) AS Max_Proc,

MIN(num_medications) AS Min_Med,
MAX(num_medications) AS Max_Med,

MIN(number_outpatient) AS Min_Out,
MAX(number_outpatient) AS Max_Out,

MIN(number_emergency) AS Min_Emergency,
MAX(number_emergency) AS Max_Emergency,

MIN(number_inpatient) AS Min_Inpatient,
MAX(number_inpatient) AS Max_Inpatient,

MIN(number_diagnoses) AS Min_Diagnosis,
MAX(number_diagnoses) AS Max_Diagnosis
FROM diabetic_data_cleaned;

SELECT name
FROM sqlite_master
WHERE type='table';

PRAGMA table_info(diabetic_data_cleaned);

SELECT COUNT(*)
FROM diabetic_data_cleaned;

SELECT gender, /*→ Shows the category.*/
COUNT(*) AS total_patients /*Counts patients.*/
FROM diabetic_data_cleaned /*→ Uses the cleaned dataset.*/
GROUP BY gender /*→ Creates one row per gender.*/
ORDER BY total_patients DESC; /*→ Shows the largest group first.*/

SELECT race, COUNT(*) AS patient_count
FROM diabetic_data_cleaned
GROUP BY race
ORDER BY patient_count DESC;

SELECT age, COUNT(*) AS patients_age
FROM diabetic_data_cleaned
GROUP BY age
ORDER BY patients_age;

SELECT age, COUNT(*) AS patients_age
FROM diabetic_data_cleaned
GROUP BY age
ORDER BY age;  /* this is better*/

SELECT readmitted,
       COUNT(*) AS total_readmissions
FROM diabetic_data_cleaned
GROUP BY readmitted
ORDER BY total_readmissions;

SELECT readmitted, race, COUNT(*) AS category_race
FROM diabetic_data_cleaned
GROUP BY race, readmitted
ORDER BY readmitted;

SELECT readmitted, race, COUNT(*) AS category_race
FROM diabetic_data_cleaned
GROUP BY race, readmitted
ORDER BY race, readmitted;

SELECT age,
       readmitted,
       COUNT(*) AS patient_count
FROM diabetic_data_cleaned
GROUP BY age, readmitted
ORDER BY age, readmitted;

SELECT admission_type_id,
       readmitted,
       COUNT(*) AS admission_type
FROM diabetic_data_cleaned
GROUP BY admission_type_id, readmitted
ORDER BY admission_type_id, readmitted;

SELECT discharge_disposition_id,
       readmitted,
       COUNT(*) AS discharge_id
FROM diabetic_data_cleaned
GROUP BY discharge_disposition_id, readmitted
ORDER BY discharge_disposition_id, readmitted;

SELECT admission_source_id,
       readmitted,
       COUNT(*) AS admission_source
FROM diabetic_data_cleaned
GROUP BY admission_source_id, readmitted
ORDER BY admission_source_id, readmitted;

SELECT time_in_hospital,
       readmitted,
       COUNT(*) AS time_hospital
FROM diabetic_data_cleaned
GROUP BY time_in_hospital, readmitted
ORDER BY time_in_hospital, readmitted;


SELECT medical_specialty,
       COUNT(*) AS encounter_count
FROM diabetic_data_cleaned
GROUP BY medical_specialty
ORDER BY encounter_count DESC;

SELECT medical_specialty,
       COUNT(DISTINCT patient_nbr) AS encounter_count 
FROM diabetic_data_cleaned
GROUP BY medical_specialty
ORDER BY encounter_count DESC; 

SELECT readmitted,
       medical_specialty,
       COUNT(*) AS specialty_readmissions
FROM diabetic_data_cleaned
GROUP BY medical_specialty, readmitted
ORDER BY medical_specialty, readmitted;

SELECT A1Cresult,
       COUNT(*) AS encounter_count
FROM diabetic_data_cleaned
GROUP BY A1Cresult
ORDER BY encounter_count DESC;

SELECT A1Cresult,
       readmitted,
       COUNT(*) AS encounter_count
FROM diabetic_data_cleaned
GROUP BY A1Cresult, readmitted
ORDER BY A1Cresult, readmitted;

SELECT max_glu_serum,
       COUNT(*) AS encounter_count
FROM diabetic_data_cleaned
GROUP BY max_glu_serum
ORDER BY encounter_count DESC;

SELECT max_glu_serum,
       readmitted,
       COUNT(*) AS encounter_count
FROM diabetic_data_cleaned
GROUP BY max_glu_serum, readmitted
ORDER BY max_glu_serum, readmitted;

SELECT insulin,
       readmitted,
       COUNT(*) AS encounter_count
FROM diabetic_data_cleaned
GROUP BY insulin, readmitted
ORDER BY insulin, readmitted;

SELECT insulin,
       COUNT(*) AS encounter_count
FROM diabetic_data_cleaned
GROUP BY insulin
ORDER BY encounter_count DESC;

SELECT diabetesMed,
       COUNT(*) AS encounter_count
FROM diabetic_data_cleaned
GROUP BY diabetesMed
ORDER BY encounter_count DESC;

SELECT diabetesMed,
       readmitted,
       COUNT(*) AS encounter_count
FROM diabetic_data_cleaned
GROUP BY diabetesMed, readmitted
ORDER BY diabetesMed, readmitted;

SELECT change,
       readmitted,
       COUNT(*) AS encounter_count
FROM diabetic_data_cleaned
GROUP BY change, readmitted
ORDER BY change, readmitted;

SELECT change,
       COUNT(*) AS encounter_count
FROM diabetic_data_cleaned
GROUP BY change
ORDER BY encounter_count DESC;

SELECT readmitted,
       AVG(time_in_hospital) AS avg_days
FROM diabetic_data_cleaned
GROUP BY readmitted;

SELECT readmitted,
       AVG(num_medications) AS avg_medications
FROM diabetic_data_cleaned
GROUP BY readmitted;

SELECT readmitted,
       AVG(num_lab_procedures) AS avg_lab_procedures
FROM diabetic_data_cleaned
GROUP BY readmitted;

SELECT readmitted,
       AVG(number_diagnoses) AS avg_diagnoses
FROM diabetic_data_cleaned
GROUP BY readmitted;
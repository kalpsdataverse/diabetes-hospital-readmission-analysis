# Diabetes Hospital Readmission Analysis

## Project Overview

This project analyzes hospital encounters for patients with diabetes to understand readmission patterns, patient demographics, clinical factors, treatment-related variables, and hospital encounter characteristics.

The analysis combines SQL-based data analysis with Tableau dashboards to transform a large healthcare dataset into actionable insights for healthcare and operational decision-making.

## Business Objective

The objective of this project is to identify patterns associated with hospital readmissions and understand how patient characteristics, clinical indicators, medications, and hospital encounter factors relate to readmission outcomes.

Key questions explored include:

- What is the overall distribution of hospital readmissions?
- How do age, gender, and race relate to readmission?
- How do A1C and glucose results vary across readmission groups?
- What patterns are observed across insulin and diabetes medication usage?
- How do admission type, admission source, medical specialty, and discharge disposition relate to readmission?

## Dataset

The project uses the Diabetes 130-US Hospitals dataset, containing hospital encounters for patients with diabetes.

The dataset includes information related to:

- Patient demographics
- Hospital admission and discharge information
- Diabetes medications
- Laboratory results
- Medical specialty
- Admission type and source
- Discharge disposition
- Readmission status

Total hospital encounters analyzed: **101,766**

## Data Preparation

The dataset was cleaned and prepared before analysis.

Key preparation steps included:

- Handling missing and unknown values
- Standardizing categorical values
- Reviewing data distributions
- Removing unnecessary fields where appropriate
- Preparing the cleaned dataset for SQL and Tableau analysis

## SQL Analysis

SQL was used to explore the dataset and answer analytical questions related to:

- Patient demographics
- Readmission distribution
- Diabetes medication usage
- Clinical indicators
- Hospital admission characteristics
- Discharge patterns

The SQL analysis helped identify important trends before visualization.

## Tableau Dashboards

### 1. Patient Demographics & Readmission Overview

Provides an overview of the patient population and overall readmission distribution.

Includes:

- Total encounters
- Gender distribution
- Age distribution
- Race distribution
- Readmission distribution

### 2. Readmission by Demographics

Examines readmission patterns across demographic groups.

Includes:

- Readmission by gender
- Race vs readmission
- Age vs readmission

### 3. Clinical & Treatment Analysis

Examines clinical and treatment-related factors associated with readmission.

Includes:

- A1C result vs readmission
- Maximum glucose serum vs readmission
- Insulin vs readmission
- Diabetes medication vs readmission
- Metformin vs readmission

### 4. Hospital Encounter & Readmission Analysis

Examines hospital encounter characteristics in relation to readmission.

Includes:

- Medical specialty vs readmission
- Admission type vs readmission
- Admission source vs readmission
- Discharge disposition vs readmission

## Key Insights

- The majority of encounters were not followed by a readmission within 30 days.
- Patients aged 50–80 represented a substantial proportion of the encounters.
- Female encounters were more numerous than male encounters in the dataset.
- Readmission patterns varied across age and demographic groups.
- A large proportion of encounters had missing or unavailable A1C and glucose result information.
- Emergency admissions represented a major portion of hospital encounters.
- Admission source and discharge disposition showed substantial variation across readmission categories.
- Medication and insulin usage patterns differed across readmission groups.

## Tools & Technologies

- **SQL** – Data exploration and analytical queries
- **Tableau** – Interactive data visualization and dashboards
- **Excel / CSV** – Data source and preparation
- **Data Cleaning** – Missing-value and categorical-value handling

## Project Deliverables

- SQL analysis file
- Tableau packaged workbook (.twbx)
- Interactive Tableau dashboards
- Dashboard screenshots
- Project documentation

## Dashboard Screenshots

### Patient Demographics & Readmission Overview

![Patient Demographics](1.%20Patient%20Demographics.jpg)

### Readmission by Demographics

![Readmission by Demographics](2.%20Readmission%20by%20Demographics.jpg)

### Clinical & Treatment Analysis

![Clinical and Treatment Analysis](3.%20Clinical%20and%20Treatment%20Analysis.jpg)

### Hospital Encounter & Readmission Analysis

![Hospital Encounter Analysis](4.%20Hospital%20Encounter%20%26%20Readmission%20Analysis.jpg)

## Conclusion

This project demonstrates an end-to-end healthcare data analytics workflow, from data preparation and SQL analysis to interactive Tableau dashboard development.

The analysis converts a large hospital encounter dataset into a structured analytical solution that can help healthcare stakeholders understand readmission patterns and identify areas for further investigation.

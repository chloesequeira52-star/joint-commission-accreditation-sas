# Joint Commission Accreditation Readiness & Patient Safety Analytics Using SAS

## Overview

This project applies SAS-based statistical modeling to simulated hospital performance data designed around concepts commonly associated with Joint Commission accreditation and patient safety monitoring.

The analysis evaluates hospital readiness across multiple safety domains and identifies factors associated with elevated accreditation risk using logistic regression and healthcare quality analytics techniques.

**Note:** This project uses simulated hospital data created for educational and portfolio purposes. The dataset is modeled around Joint Commission-inspired patient safety concepts and does not represent official Joint Commission data.

---

## Background

Healthcare organizations monitor patient safety and quality indicators to support accreditation readiness, quality improvement initiatives, and operational performance.

This project incorporates patient safety concepts commonly associated with Joint Commission quality priorities, including:

- Patient identification compliance
- Medication reconciliation
- Hand hygiene performance
- Surgical time-out compliance
- Suicide risk screening
- Falls with injury events
- Restraint utilization

---

## Project Objectives

The goals of this project were to:

- Simulate hospital patient safety performance measures
- Build a composite accreditation readiness score
- Identify hospitals at elevated accreditation risk
- Compare readiness across hospital types
- Apply logistic regression to identify predictors of accreditation risk
- Rank hospitals using predicted risk probabilities
- Visualize trends in hospital performance measures

---

## Dataset

A simulated dataset of **300 hospitals** was generated in SAS.

Hospital classifications included:

- Community hospitals
- Teaching hospitals
- Critical Access hospitals
- Psychiatric hospitals

Variables included:

| Variable | Description |
|-----------|-------------|
| hospital_id | Unique hospital identifier |
| hospital_type | Hospital classification |
| patient_id_compliance | Patient identification compliance (%) |
| med_rec_compliance | Medication reconciliation compliance (%) |
| hand_hygiene_rate | Hand hygiene compliance (%) |
| timeout_compliance | Surgical time-out compliance (%) |
| suicide_screening_rate | Suicide screening compliance (%) |
| falls_injury_rate | Falls with injury measure |
| restraint_hours | Restraint utilization hours |
| readiness_score | Composite accreditation readiness score |
| accreditation_risk | Binary indicator of accreditation risk |

---

## SAS Methods Used

- DATA step programming
- PROC LOGISTIC
- PROC SGPLOT
- PROC CORR
- PROC SORT
- Logistic regression modeling
- Odds ratio interpretation
- Risk prediction
- Healthcare data visualization

---

## Statistical Results

### Logistic Regression Model Performance

- C-statistic: **0.749**
- Percent concordant: **74.9%**

The model demonstrated moderate predictive performance for identifying hospitals with elevated accreditation risk.

---

## Major Findings

### Falls with injury rate

- Odds Ratio (OR): **1.88**
- 95% CI: **1.31–2.69**
- p-value: **<0.001**

Hospitals with higher falls-related injury rates demonstrated significantly increased odds of accreditation risk.

---

### Restraint utilization

- Odds Ratio (OR): **1.20**
- 95% CI: **1.07–1.34**
- p-value: **0.001**

Greater restraint use was associated with increased accreditation risk.

---

### Medication reconciliation compliance

- Odds Ratio (OR): **0.934**
- 95% CI: **0.883–0.988**
- p-value: **0.018**

Higher medication reconciliation compliance was associated with lower accreditation risk.

---

### Hospital type

Hospital type was not significantly associated with accreditation risk.

Results suggest that patient safety measures may play a stronger role in accreditation readiness than hospital classification alone.

---

## Highest Predicted Risk Hospitals

Hospitals were ranked using predicted probabilities generated from the logistic regression model.

Examples of highest predicted-risk hospitals identified:

| Hospital ID | Hospital Type | Predicted Risk | Readiness Score |
|-------------|---------------|----------------|-----------------|
| 220 | Community | 98.05% | 69.61 |
| 58 | Community | 97.57% | 74.38 |
| 31 | Community | 97.21% | 76.05 |
| 107 | Critical Access | 97.10% | 68.73 |
| 214 | Community | 97.08% | 73.46 |

---

## Key Takeaways

This project demonstrates:

- Healthcare quality analytics
- Joint Commission-inspired patient safety concepts
- Logistic regression modeling in SAS
- Healthcare risk prediction
- Odds ratio interpretation
- Data visualization
- Statistical reporting
- Public health analytics

---
## Files Included

**analysis.sas**  
Complete SAS workflow including data simulation, readiness score creation, logistic regression modeling, risk prediction, and visualization procedures

**simulated_jointcommission_data.csv**  
Simulated hospital dataset modeled around Joint Commission-inspired patient safety concepts

**odds_ratio_plot.png**  
Odds ratio visualization from logistic regression showing predictors of accreditation risk

**readiness_score_chart.png**  
Average accreditation readiness score across hospital types

**correlation_matrix.png**  
Pearson correlation matrix displaying relationships among patient safety and accreditation-related variables

**top10_predicted_risk.png**  
Top 10 hospitals ranked by predicted accreditation risk generated from logistic regression predicted probabilities

**executive_summary.pdf**  
Executive summary of project objectives, methods, findings, and conclusions

**data_dictionary.md**  
Variable definitions and project documentation

---

## Skills Demonstrated

SAS • Healthcare Analytics • Logistic Regression • Patient Safety • Quality Improvement • Healthcare Quality Metrics • Risk Modeling • Data Visualization

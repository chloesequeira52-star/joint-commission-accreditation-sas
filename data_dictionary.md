# Data Dictionary

## Project
Joint Commission Accreditation Readiness & Patient Safety Analytics Using SAS

---

| Variable Name | Type | Description |
|-------------------------------|---------|--------------------------------------------------------------|
| hospital_id | Numeric | Unique identifier assigned to each hospital |
| hospital_type | Character | Hospital classification category |
| patient_id_compliance | Numeric | Percentage compliance with patient identification procedures |
| med_rec_compliance | Numeric | Medication reconciliation compliance percentage |
| hand_hygiene_rate | Numeric | Hand hygiene compliance percentage |
| timeout_compliance | Numeric | Surgical time-out compliance percentage |
| suicide_screening_rate | Numeric | Suicide risk screening compliance percentage |
| falls_injury_rate | Numeric | Falls with injury measure per standardized patient population |
| restraint_hours | Numeric | Total restraint utilization hours |
| readiness_score | Numeric | Composite accreditation readiness score created from patient safety indicators |
| risk_score | Numeric | Intermediate logistic risk score used to generate predicted accreditation risk |
| accreditation_risk | Numeric (Binary) | Indicator of elevated accreditation risk (1 = elevated risk, 0 = lower risk) |
| pred_prob | Numeric | Predicted probability of accreditation risk generated from logistic regression |

---

## Hospital Type Categories

| Category | Description |
|-----------|-------------|
| Community | Non-teaching community hospital |
| Teaching | Academic teaching hospital |
| Critical Access | Small rural hospital with Critical Access designation |
| Psychiatric | Specialized psychiatric hospital |

---

## Readiness Score Construction

The readiness score was calculated using weighted patient safety measures.

Higher values indicate stronger accreditation readiness performance.

The score incorporated:

- Patient identification compliance
- Medication reconciliation compliance
- Hand hygiene performance
- Surgical time-out compliance
- Suicide screening performance
- Falls with injury rate
- Restraint utilization

---

## Accreditation Risk Definition

Accreditation risk was modeled using logistic regression probability generation techniques based on patient safety performance indicators.

Higher predicted probabilities represent greater estimated accreditation risk.

---

## Notes

- This dataset was simulated for educational and portfolio purposes.
- Variables were designed around concepts commonly associated with Joint Commission-inspired patient safety and healthcare quality frameworks.
- No real hospital or patient data were used.

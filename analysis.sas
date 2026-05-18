/*======================================================
Joint Commission Patient Safety Analytics Project
Author: Chloe Sequeira
=======================================================*/

data hospital_safety;

call streaminit(123);

length hospital_type $20;

do hospital_id=1 to 300;

    x=rand("uniform");

    if x<0.25 then hospital_type="Teaching";
    else if x<0.50 then hospital_type="Community";
    else if x<0.75 then hospital_type="Critical Access";
    else hospital_type="Psychiatric";

    patient_id_compliance=round(rand("normal",95,4),.1);
    med_rec_compliance=round(rand("normal",88,6),.1);
    hand_hygiene_rate=round(rand("normal",85,7),.1);
    timeout_compliance=round(rand("normal",94,5),.1);
    suicide_screening_rate=round(rand("normal",82,10),.1);

    falls_injury_rate=round(rand("normal",3,1),.1);
    restraint_hours=round(rand("normal",8,3),.1);

    output;

end;

drop x;

run;
data hospital_model;

set hospital_safety;

readiness_score=

(.20*patient_id_compliance)+
(.20*med_rec_compliance)+
(.20*hand_hygiene_rate)+
(.20*timeout_compliance)+
(.20*suicide_screening_rate)

-(falls_injury_rate*2)
-(restraint_hours*.5);

/* realistic accreditation risk generation */

risk_score =
-3

+.08*(100-patient_id_compliance)
+.07*(100-med_rec_compliance)
+.06*(100-hand_hygiene_rate)

+.40*falls_injury_rate
+.20*restraint_hours

+rand("normal",0,1.2);

p=exp(risk_score)/(1+exp(risk_score));

accreditation_risk=rand("bernoulli",p);

drop risk_score p;

run;
proc freq data=hospital_model;
tables accreditation_risk;
run;
proc logistic data=hospital_model
plots(only)=oddsratio;

class hospital_type(ref='Community')/param=ref;

model accreditation_risk(event='1')=

patient_id_compliance
med_rec_compliance
hand_hygiene_rate
timeout_compliance
suicide_screening_rate
falls_injury_rate
restraint_hours
hospital_type;

run;
proc sgplot data=hospital_model;

vbar hospital_type/
response=readiness_score
stat=mean;

title "Average Joint Commission Readiness Score";

run;
proc corr data=hospital_model
plots=matrix;

var

patient_id_compliance
med_rec_compliance
hand_hygiene_rate
timeout_compliance
suicide_screening_rate
falls_injury_rate
restraint_hours;

run;
/* Create predicted probabilities */

proc logistic data=hospital_model descending;
class hospital_type(ref='Community')/param=ref;

model accreditation_risk=

patient_id_compliance
med_rec_compliance
hand_hygiene_rate
timeout_compliance
suicide_screening_rate
falls_injury_rate
restraint_hours
hospital_type;

output out=predicted_risk p=pred_prob;

run;


/* Sort by predicted probability */

proc sort data=predicted_risk
out=highest_risk;

by descending pred_prob;

run;


/* Display top 10 */

proc print data=highest_risk(obs=10);

var
hospital_id
hospital_type
pred_prob
readiness_score;

format pred_prob percent8.2;

title "Top 10 Hospitals at Highest Predicted Accreditation Risk";

run;

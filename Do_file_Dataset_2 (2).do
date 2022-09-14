import excel "C:\Users\miche\Desktop\Project_covid\Dati_Definitivi\Stata_Dataset_2.xlsx", sheet("Foglio1") firstrow
xtset ID_Regions Quarter
 xtreg VictimsCalls Un_Families Average_intensive_Care_Patients PovertyIndex Instruction_level Average_Satisfaction_Level Sexual_violence, fe
xtline VictimsCalls, overlay
xtreg VictimsCalls Sexual_violence Un_Families PovertyIndex Instruction_level Average_Satisfaction_Level Average_intensive_Care_Patients Inflation , fe
xtreg VictimsCalls Sexual_violence Un_Families PovertyIndex Instruction_level Average_Satisfaction_Level Average_intensive_Care_Patients Interest_Rate , fe
xtreg VictimsCalls Sexual_violence Un_Families PovertyIndex Instruction_level Average_Satisfaction_Level Average_intensive_Care_Patients Inflation Interest_Rate
twoway (dropline Average_intensive_Care_Patients Quarter) (scatter VictimsCalls Quarter)

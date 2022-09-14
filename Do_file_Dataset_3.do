import excel "C:\Users\miche\Desktop\Project_covid\Dati_Definitivi\Stata_Dataset_3.xlsx", sheet("Foglio1") firstrow
regress _Callsperdate New_Covid_Cases  Icu_Covid_patients

SELECT
CASE
WHEN smoker_status = 'Y' AND (diagnosis = 'Hypertension' OR diagnosis = 'Diabetes') THEN 'High Risk'
WHEN smoker_status = 'N' AND (diagnosis = 'Hypertension' OR diagnosis = 'Diabetes') THEN 'Medium Risk'
ELSE 'Low Risk'
END AS Risk_category,
COUNT(patient_id) AS num_patients
FROM [Healthcare_Database].[dbo].[Outpatient Visits]
GROUP BY
CASE
WHEN smoker_status = 'Y' AND (diagnosis = 'Hypertension' OR diagnosis = 'Diabetes') THEN 'High Risk'
WHEN smoker_status = 'N' AND (diagnosis = 'Hypertension' OR diagnosis = 'Diabetes') THEN 'Medium Risk'
ELSE 'Low Risk'
END
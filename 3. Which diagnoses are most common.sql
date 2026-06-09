SELECT TOP 5
diagnosis,
COUNT(*) AS total_patient_count
FROM [Healthcare_Database].[dbo].[Outpatient Visits]
WHERE diagnosis <> 'Unknown'
GROUP BY diagnosis
ORDER BY total_patient_count DESC

SELECT
gender,
diagnosis,
CASE
WHEN DATEDIFF(year, date_of_birth, GETDATE()) BETWEEN 0 AND 17 THEN 'Pediatric'
WHEN DATEDIFF(year, date_of_birth, GETDATE()) BETWEEN 18 AND 64 THEN 'Adult'
ELSE 'Senior'
END AS age_group,
COUNT(*) AS patient_count
FROM [Healthcare_Database].[dbo].Patients AS p
INNER JOIN [Healthcare_Database].[dbo].[Outpatient Visits] AS ov
ON p.patient_id = ov.patient_id
WHERE diagnosis <> 'Unknown'
GROUP BY
gender,
diagnosis,
CASE
WHEN DATEDIFF(year, date_of_birth, GETDATE()) BETWEEN 0 AND 17 THEN 'Pediatric'
WHEN DATEDIFF(year, date_of_birth, GETDATE()) BETWEEN 18 AND 64 THEN 'Adult'
ELSE 'Senior'
END
ORDER BY patient_count DESC, diagnosis ASC

SELECT name,id,cohort_id,email
FROM students 
WHERE enddate IS NULL
ORDER BY cohort_id
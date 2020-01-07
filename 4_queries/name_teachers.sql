

SELECT  d.name,c.name
FROM assistance_requests as a 
JOIN students as b on a.student_id = b.id 
JOIN cohorts as c on b.cohort_id = c.id
JOIN teachers as d on d.id = a.teacher_id
WHERE c.name = 'JUL02'
ORDER BY d.name

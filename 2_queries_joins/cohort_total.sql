SELECT sum(a.duration)
FROM assignment_submissions AS a
JOIN students AS b ON b.id = a.student_id
JOIN cohorts AS c on b.cohort_id = c.id
WHERE c.name =  'FEB12'
GROUP BY b.cohort_id


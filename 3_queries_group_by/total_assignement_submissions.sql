SELECT c.name as cohort,count(a.duration) as total_submissions
FROM assignment_submissions AS a
JOIN students AS b ON b.id = a.student_id
JOIN cohorts AS c on b.cohort_id = c.id
GROUP BY c.name
ORDER BY count(a.duration) DESC


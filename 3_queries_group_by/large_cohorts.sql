SELECT c.name as cohort_name, count(b.name) as student_count
FROM students AS b 
JOIN cohorts AS c on b.cohort_id = c.id
GROUP BY c.name
HAVING count(b.name) >= 18
ORDER BY count(b.name) ASC


SELECT c.name, 
avg(a.duration)::numeric(8,4) as average_assignement_duration, 
avg(b.duration)::numeric(8,4) as average_estimated_duration
FROM assignment_submissions as a 
JOIN assignments as b on b.id =  a.assignment_id
JOIN students as c on c.id = a.student_id
WHERE c.end_date IS NULL
GROUP BY c.name
HAVING avg(a.duration) <= avg(b.duration)
ORDER BY avg(a.duration)
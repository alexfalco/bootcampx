
SELECT b.name, avg(duration) AS average_assignment_duration 
FROM assignment_submissions AS a
JOIN students AS b on b.id = a.student_id
WHERE end_date IS null
GROUP BY b.name
ORDER BY avg(duration) DESC 
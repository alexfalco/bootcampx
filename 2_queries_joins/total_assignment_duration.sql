---assignment_submissions
---assignments 

SELECT sum(a.duration)
FROM assignment_submissions AS a
JOIN students  AS b ON b.id = a.student_id
WHERE b.name =  'Ibrahim Schimmel'

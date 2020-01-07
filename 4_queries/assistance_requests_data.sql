SELECT c.name as teacher, b.name as student, d.name as assigment, (completed_at - started_at) as duration
FROM assistance_requests as a
JOIN students as b on a.student_id = b.id
JOIN teachers as c on a.teacher_id = c.id
JOIN assignments as d on a.assignment_id = d.id
ORDER BY  duration


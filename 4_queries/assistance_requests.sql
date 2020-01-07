
SELECT count(a.id) as total_assistances,b.name
FROM assistance_requests as a
JOIN students as b on a.student_id = b.id
WHERE b.name = 'Elliot Dickinson'
GROUP BY b.name


SELECT count(a.id) as total_assistances,b.name
FROM assistance_requests as a
JOIN teachers as b on a.teacher_id = b.id
WHERE b.name = 'Waylon Boehm'
GROUP BY b.name


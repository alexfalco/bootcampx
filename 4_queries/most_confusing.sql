
SELECT  a.assignment_id as id,b.name,b.day, b.chapter, total_requests 
FROM (
SELECT  a.assignment_id, count(a.id) as total_requests 
FROM assistance_requests as a 
WHERE a.assignment_id is not NULL
GROUP BY a.assignment_id
ORDER BY total_requests desc ) as a 
JOIN assignments as b on a.assignment_id = b.id



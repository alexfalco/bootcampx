

select avg(average_duration) as average_total_duration
from (

SELECT  c.name, sum((completed_at - started_at)) as average_duration
FROM assistance_requests as a 
JOIN students as b on a.student_id = b.id 
JOIN cohorts as c on b.cohort_id = c.id
GROUP BY c.name
ORDER BY average_duration ) as average_total_duration

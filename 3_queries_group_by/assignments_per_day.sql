---assignment_submissions
---assignments 

SELECT day,count(id) as total_assignments
FROM assignments
GROUP BY day

ORDER BY day


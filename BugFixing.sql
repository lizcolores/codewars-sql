SELECT 
DISTINCT(j.job_title), 
CAST(ROUND(SUM(j.salary)/COUNT(p), 2) AS float) as average_salary,
COUNT(p.id) as total_people,
CAST(ROUND(SUM(j.salary), 2) AS float) as total_salary
FROM people p
JOIN job j
ON p.id = j.people_id
GROUP BY j.job_title
ORDER BY average_salary desc;

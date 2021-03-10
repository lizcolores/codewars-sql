-- Create your SELECT statement here
select age, count(*) AS total_people from people group by age HAVING count(*) >= 10 

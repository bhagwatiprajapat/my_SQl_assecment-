

 select *
 from worker
 order by First_name;
 
 select *
 from worker
 order by Department desc;
 
 select*
 from worker
 where First_name like "vipul" or First_name like "satish"
;

select*
from worker
where First_name like "_____h";

select *
from worker
where Salary between 500000 and 1000000;

select Salary, Department
from worker
group by Salary, Department having count(*)>1 
;

select*
from worker
limit 6;

select Department ,count(*)
from worker
group by Department having count(*)<3;

select Department ,count(*)
from worker
group by Department ;
 

 SELECT department, First_name, Last_name, Salary
FROM worker
WHERE (department, Salary) IN (SELECT department, MAX(Salary)FROM worker GROUP BY department);



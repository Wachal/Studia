zadanie 1
SELECT surname, job
FROM employees
WHERE dept_id = (SELECT dept_id FROM employees 
WHERE surname = 'Johnson') and surname != 'Johnson'
ORDER BY surname;

zadanie 2
SELECT surname, job, dept_name
FROM employees join departments using (dept_id)
WHERE dept_id = (SELECT dept_id FROM employees 
WHERE surname = 'Johnson') and surname != 'Johnson'
ORDER BY surname;

zadanie 3
SELECT surname, job, hire_date 
FROM employees 
WHERE (hire_date,job) = (select min(hire_date),'LECTURER' from employees
where job = 'LECTURER');

zadanie 4
select dept_name, surname, hire_date 
from employees join departments using (dept_id)
where (dept_id, hire_date) in
(select dept_id, max(hire_date)
from employees group by dept_id)
order by dept_name;

zadanie 5
select dept_id, dept_name, address
from departments d
where dept_id not in (select dept_id from employees e
group by dept_id having dept_id is not null);

zadanie 6:
select surname, job, salary from employees e
where emp_id not in
(select d.boss_id from employees d
inner join employees b on d.boss_id = b.emp_id 
where d.boss_id is not null 
and d.job = 'PHD STUDENT')
and job = 'PROFESSOR'
order by surname

zadanie 7
select dept_name, count(surname) as num_of_empl
from departments join employees using(dept_id)
group by dept_name
having count(surname) >
(select count(surname)
from departments join employees using(dept_id)
where dept_name = 'ADMINISTRATION')
order by dept_name;


zadanie 1
insert into employees (emp_id, surname, name, job, boss_id, hire_date, salary, add_salary, dept_id)
values (300, 'Snow', 'Jack', 'PROFESSOR', 100, '2013-05-01', 4750.00, null, 30 ),
 (310, 'Cook', 'Robin', 'PROFESSOR', 100, '2016-09-15', 3500.00, 1250.00, 40),
 (320, 'Dormand', 'Francis', 'ASSISTANT', 110, '2018-01-01', 3900.00, null, 40)

select emp_id, surname, name, job, boss_id, hire_date, salary, add_salary, dept_id from employees 
where surname = 'Snow' or surname = 'Cook' or surname = 'Dormand';

zadanie 2
insert into departments(dept_id, dept_name, address)
values (70, 'DATABASE SYSTEMS', default);

select dept_id, dept_name, address from departments where dept_id = 70;

zadanie 3
update employees 
set dept_id = 70
where surname = 'Cook' and surname = 'Dormand' and surname = 'Snow';

select surname, name, salary, add_salary from employees where dept_id = 70
order by surname;

zadanie 4
update employees
set salary = (salary * 1.1), add_salary = case 
when add_salary is not null then add_salary*1.2
when add_salary is null then '100'
end
where dept_id = (select dept_id from departments where dept_name = 'DATABASE SYSTEMS');

select surname, name, salary, add_salary from employees where dept_id = 70
order by surname;

zadanie 5
delete from departments where dept_name = 'DATABASE SYSTEMS'

SQL Error [23503]: BŁĄD: modyfikacja lub usunięcie na tabeli "departments" 
narusza klucz obcy "fk_department" tabeli "employees"
  Detail: Klucz (dept_id)=(70) ma wciąż odwołanie w tabeli "employees".

tabela departments caly czas ma powiązanie z tabelą employees dlatego nie mozna jej usunąć

zadanie 6
delete from employees 
where dept_id = 70 and salary < 5000

update employees 
set dept_id = null 
where dept_id = 70

select * from employees 

zadanie 7
delete from departments 
where dept_name = 'DATABASE SYSTEMS' 

select * from departments 

zadanie 8
select surname, salary,
case 
when dept_id is not null then round((select(avg(salary)*0.1) from employees e2 where e1.dept_id = e2.dept_id),2)
when dept_id is null then '0'
end as rise
from employees e1
order by surname


zadanie 9
update employees e1
set salary = e1.salary + case 
when e1.dept_id is not null then round((select(avg(salary)*0.1) from employees e2 where e1.dept_id = e2.dept_id),2)
when e1.dept_id is null then '0'
end


select surname, salary from employees order by surname


zadanie 10
delete from employees 
where name = 'Jack'

select * from employees 

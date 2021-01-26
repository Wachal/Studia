zad 1 
mielismy pominąc bo nie mozemy zobaczyc swoich stworzonych kolumn

zad 2
alter table projects 
add constraint pk_projects
primary key (project_id)

alter table projects 
add constraint uk_projects_name
unique (project_name)

alter table projects 
alter column project_name set not null;

alter table projects 
alter column start_date set not null;

alter table projects
add constraint chk_projects_end_start_date
check (start_date < end_date);

alter table Projects
add constraint chk_projects_budget
check (budget > 0)

alter table Projects
add constraint chk_projects_no_of_emp
check (number_of_emp >= 0 or null)

zadanie 3
za pierwszym razem operacja sie nie udała, udała się dopiero po dodaniu liczby pracowników
alter table projects 
alter column number_of_emp set not null

update projects 
set number_of_emp = 1

zadanie 4
alter table Projects 
add column manager_id numeric(4)
constraint projects_fk_emps
references employees (emp_id);

zadanie 5
update Projects 
set manager_id = 101;

nie da sie ustawic pracownika nie istniejącego w employees

zadanie 6
update Projects 
set manager_id = (select emp_id from employees where surname = 'Clark' and surname = 'Mark')
where project_name = 'Advanced Data Analysis';

delete from employees 
where surname = 'Clark' and name = 'Mark';

zadanie 7
create table Assignments (
project_id int not null
	constraint project_fk references Projects(project_id),
emp_id numeric(4) 
	constraint emp_fk references employees(emp_id),
function varchar(100) 
	constraint job_check check(function = 'designer' or function = 'programmer' or function = 'tester'),
start_date date default current_timestamp not null,
end_date date 
	constraint date_check check (start_date < end_date),
salary decimal(8,2) not null 
	constraint value_check check(salary > 0));


8.
insert into Assignments(project_id, emp_id, function, end_date, salary)
values
(2,110,'programmer','2021-09-10',2999),
(2,120,'designer','2022-11-08',1390),
(3,130,'tester','2023-12-12',1500),
(4,140,'tester','2024-05-17',2850);



9.
insert into Assignments(project_id, emp_id, function, end_date, salary)
values (4, 100, 'employeer', '2021-01-01', 2500);

nie udalo sie

10.
alter table Assignments
drop constraint job_check cascade;

insert into Assignments(project_id, emp_id, function, end_date, salary)
values (4, 100, 'employeer', '2021-01-01', 2500);

udalo sie


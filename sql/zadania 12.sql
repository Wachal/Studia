zadanie 1
alter table Projects 
add column number_of_emp numeric(3),
alter column description set data type varchar(800);

zadanie 2
select project_name, length(project_name) from projects
order by length desc
limit 1;

alter table projects 
alter column project_name set data type varchar(20);

polecenie zakończyło się niepowodzeniem

zadanie 3
alter table projects 
rename column budget to project_budget;

zadanie 4
drop table projects_copy;
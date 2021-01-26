zadanie 1
create table Projects(
project_id integer GENERATED ALWAYS AS IDENTITY,
project_name character varying (200),
description character varying (500),
start_date date default current_date,
end_date date,
budget numeric(10,2));

zadanie 2
insert into Projects (project_name, description, start_date, end_date, budget)
values ('New Technologies Survey','A project aimed at reviewing the area of advanced database technologies.', '01-01-2018', default, 1500000);

insert into Projects (project_name, description, start_date, end_date, budget)
values ('Advanced Data Analysis','Analyzing data obtained from various organizations.', '20-09-2017', '01-10-2018', 2750000);

zadanie 3
insert into Projects (project_id, project_name, description, start_date, end_date, budget)
values (55, 'Creating backbone network','Expanding the organizations network infrastructure.', '01-06-2019', '31-05-2020', 5000000);
Ta operacja zakończyła się niepowodzeniem ponieważ nie mozna samemu nadawac id.

zadanie 4
insert into Projects ( project_name, description, start_date, end_date, budget)
values ( 'Creating backbone network','Expanding the organizations network infrastructure.', '01-06-2019', '31-05-2020', 5000000);

zadanie 5
update projects 
set project_id = 100
where project_name = 'Creating backbone network';
próba zakończyła sie niepowodzeniem

zadanie 6 
create table projects_copy as
select project_id, project_name, description, start_date, end_date, budget
from Projects;

select* from projects_copy

zadanie 7
insert into Projects_copy (project_id, project_name, description, start_date, end_date, budget)
values (100, 'Creating mobile network','Expanding the organizations network infrastructure – part 2.', '01-06-2020', '31-5-2021', 4000000);

polecenie się powiodło ponieważ my teraz skopiowalismy wartosc id_project a wczesniej w orginalnej tabeli była ona nadana.
dzięki czemu teraz mogliśmy je modyfikować

zadanie 8
delete from projects_copy 
where project_name = 'Creating backbone network';

select* from projects_copy
drop database school;
create database school;

-- 1) Создать таблицу Students
-- с полями:
-- - id целое число первичный ключ автоинкремент
-- - name строка 128 не null
-- - age целое число

-- 2) Создать таблицу Teachers
-- с полями:
-- id целое число первичный ключ автоинкремент
-- name строка 128 не null
-- age целое число

-- 3) Создать таблицу Competencies
-- с полями:
-- id целое число первичный ключ автоинкремент
-- title строка 128 не null

-- 4) Создать таблицу Teachers2Competencies
-- с полями:
-- id целое число первичный ключ автоинкремент
-- teacher_id целое число
-- competencies_id целое число

-- 5) Создать таблицу Courses
-- id целое число первичный ключ автоинкремент
-- teacher_id целое число
-- title строка 128 не null
-- headman_id целое число

-- 6)Создать таблицу Students2Courses
-- id целое число первичный ключ автоинкремент
-- student_id целое число
-- course_id целое число

use school;

create table Students(
	id integer primary key auto_increment,
    name varchar(128) not null,
    age integer
);

create table Teachers(
	id integer primary key auto_increment,
    name varchar(128) not null,
    age integer
);

create table Competencies(
	id integer primary key auto_increment,
    title varchar(128) not null
);

create table Teachers2Competencies(
	id integer primary key auto_increment,
    teacher_id integer,
    competencies_id integer
);

create table Courses(
	id integer primary key auto_increment,
    teacher_id integer,
    title varchar(128) not null,
    headman_id integer
);

create table Students2Courses(
	id integer primary key auto_increment,
    student_id integer,
    course_id integer
);

insert into students (name, age) values ('Anatolii', 29);
insert into students (name, age) values ('Oleg', 25);
insert into students (name, age) values ('Semen', 27);
insert into students (name, age) values ('Olesia', 28);
insert into students (name, age) values ('Olga', 31);
insert into students (name, age) values ('Ivan', 22);

insert into teachers (name, age) values ('Peter', 39);
insert into teachers (name, age) values ('Maxim', 35);
insert into teachers (name, age) values ('Anton', 37);
insert into teachers (name, age) values ('Vselovod', 38);
insert into teachers (name, age) values ('Egor', 41);
insert into teachers (name, age) values ('Svetlana', 32);

insert into Competencies (title) values ('Mathematics');
insert into Competencies (title) values ('Informatics');
insert into Competencies (title) values ('Programming');
insert into Competencies (title) values ('Graphics');

insert into Teachers2Competencies (teacher_id, competencies_id) values (1, 1);
insert into Teachers2Competencies (teacher_id, competencies_id) values (2, 1);
insert into Teachers2Competencies (teacher_id, competencies_id) values (2, 3);
insert into Teachers2Competencies (teacher_id, competencies_id) values (3, 2);
insert into Teachers2Competencies (teacher_id, competencies_id) values (4, 1);
insert into Teachers2Competencies (teacher_id, competencies_id) values (5, 3);

insert into courses (teacher_id, title, headman_id) values (1, 'Algebra of logic', 2);
insert into courses (teacher_id, title, headman_id) values (2, 'Mathematical Statistics', 3);
insert into courses (teacher_id, title, headman_id) values (4, 'Higher mathematics', 5);
insert into courses (teacher_id, title, headman_id) values (5, 'Javascript', 1);
insert into courses (teacher_id, title, headman_id) values (5, 'Basic Python', 1);

insert into students2courses (student_id, course_id) values (1, 1);
insert into students2courses (student_id, course_id) values (2, 1);
insert into students2courses (student_id, course_id) values (3, 2);
insert into students2courses (student_id, course_id) values (3, 3);
insert into students2courses (student_id, course_id) values (4, 5);

-- 1) Вывести имена студентов и курсы, которые они проходят
select * from students;
select * from courses;
select * from students2courses;

select t1.name, t3.title
from students t1
join students2courses t2
on t1.id = t2.student_id
join courses t3
on t3.id = t2.course_id;

-- 2) Вывести имена всех преподавателей с их компетенциями
select t3.name, t1.title
from competencies t1
join teachers2competencies t2
on t1.id = t2.competencies_id
join teachers t3
on t3.id = t2.teacher_id;

-- 3) Найти преподавателя(name), у которого нет компетенций
select t1.name, t2.competencies_id, t2.teacher_id
from teachers t1
left join teachers2competencies t2
on t1.id = t2.teacher_id
where t2.competencies_id is null;

-- 4) Найти имена студентов, которые не проходят ни один курс
select t1.name, t2.course_id, t2.student_id
from students t1
left join students2courses t2
on t1.id = t2.student_id
where t2.course_id is null;

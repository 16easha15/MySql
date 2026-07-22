drop database if exists school_db;
create database if not exists school_db;
use school_db;

create table if not exists students
(
	roll_number int unsigned primary key auto_increment,
	student_name varchar(20) not null
);
desc students;

alter table students add column hobbies set('Sports','Music','Reading','Art');
desc students;

alter table students add column fees decimal(10,2) after student_name;
desc students;

alter table students modify student_name varchar(50);
desc students;

alter table students add column class tinyint check((class>=1) && (class<=12)),add column section enum('A','B','C');
desc students;

alter table students change student_name full_name varchar(50) not null;
desc students;

alter table students drop column hobbies;
desc students;
  
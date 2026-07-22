drop database if exists ekv1;
create database if not exists ekv1;
use ekv1;

create table if not exists student(name varchar(10),tel char(10));
desc student;

alter table student add column marks tinyint;
desc student;

alter table student add column address varchar(100), add column email varchar(100);
desc student;

alter table student add column rno int primary key first;
desc student;

alter table student add column acard char(12) after address;
desc student;

alter table student modify name varchar(50);
desc student;

alter table student modify marks tinyint unsigned;
desc student;

alter table student modify address varchar(100) default 'mumbai';
desc student;

alter table student modify name varchar(50) not null;
desc student;

alter table student change tel telephone char(10);
desc student;

alter table student change acard adhar_card char(12);
desc student;

alter table student drop column adhar_card;
desc student;

alter table student modify telephone char(10) after address;
desc student;

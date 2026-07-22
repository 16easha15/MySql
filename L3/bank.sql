drop database if exists bank_db;
create database if not exists bank_db;
use bank_db;

create table if not exists transactions
(
	transaction_id int unsigned primary key auto_increment,
	amount decimal(15,2) unsigned,
	transaction_type enum('Deposit','Withdrawal'),
	processing_fees decimal(7,2) unsigned,
	transaction_status enum('SUCCESS','FAILED','PENDING')
);
desc transactions;
insert into transactions values(default,2000,'Deposit','1.25','SUCCESS');
insert into transactions values(default,250,'Withdrawal','1.25','SUCCESS');
select * from transactions;
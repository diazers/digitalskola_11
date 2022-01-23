-- CHALLANGE 1
-- klik kanan pada tables didalam direktopri batch11
-- pilih import data
-- pilih import from .csv
-- klik dua kali, pilih file .csv yang mau diimport
-- ganti nama tabel sesuai yg diinginkan
-- seting apabila ada yang ingin diseting
-- bila sudah klik next lalu proceed
-- data akan terload sesuai dengan nama tabel yang diinginkan
select *
from batch_11.employee_diaz_jubairy
order by 1

-- CHALLANGE 2
-- Check if table employee_digitalskola exist
select * from batch_11.employee_digitalskola

-- Insert all value in above table (employee_digitalskola table) to your table
insert into batch_11.employee_diaz_jubairy
select * from  batch_11.employee_digitalskola 

-- Insert 1 more row consisting your name and information to your table
INSERT INTO batch_11.employee_diaz_jubairy
(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
VALUES(207, 'Diaz', 'Jubairy', 'DZJBRY', '606.468.1445', '1990-06-20', 'DATA_SCI', 90000, 0.3, 160, 50);


-- CHALLANGE 3
-- Update employee_id 100 with details as below:
-- first name = Belajar
-- Last name = SQL 
-- Email = ds11_sql
-- Hire Date = today
-- Salary = 55123
update batch_11.employee_diaz_jubairy 
set first_name = 'Belajar', 
	last_name = 'SQL', 
	email = 'ds11_sql', 
	hire_date = 'today',
	salary = 55123
where employee_id = 100

-- kita cek setelah diupdate
select 	employee_id,
		first_name,
		last_name,
		email,
		hire_date,
		salary 
from batch_11.employee_diaz_jubairy
where employee_id = 100
-- atau pilih semua kolom
select *
from batch_11.employee_diaz_jubairy
where employee_id = 100

-- Update employee_id 101 with your details
update batch_11.employee_diaz_jubairy 
set first_name = 'Diaz', 
	last_name = 'Jubairy', 
	email = 'DZJBRY', 
	phone_number = '606.468.1445', 
	hire_date = '1990-06-20', 
	job_id = 'DATA_SCI', 
	salary = 9000, 
	commission_pct = 0.3, 
	manager_id = 160, 
	department_id = 50
where employee_id = 101

-- kita cek setelah diupdate
select *
from batch_11.employee_diaz_jubairy
where employee_id = 101

-- Update employee_id 102 with NULL
update batch_11.employee_diaz_jubairy 
set first_name = null, 
	last_name = null, 
	email = null, 
	phone_number = null, 
	hire_date = null, 
	job_id = null, 
	salary = null, 
	commission_pct = null, 
	manager_id = null, 
	department_id = null
where employee_id = 102

-- kita cek setelah diupdate
select *
from batch_11.employee_diaz_jubairy
where employee_id = 102


-- CHALLANGE 4
-- Shows all the columns in your table 
select *
from batch_11.employee_diaz_jubairy

-- shows below columns in your table
-- employee_id
-- first_name
-- last_name
-- salary 
select 	employee_id,
		first_name,
		last_name,
		salary 
from batch_11.employee_diaz_jubairy


-- CHALLANGE 5
-- Add below column into your table
-- Hobby ? Fill any hobby for employee_id 100 & 101
alter table batch_11.employee_diaz_jubairy add hobby varchar(255)

-- Delete below columns in your table
-- department_id
-- manager_id
-- commission_pct
alter table batch_11.employee_diaz_jubairy 
	drop column commission_pct, 
	drop column manager_id, 
	drop column department_id;


-- CHALLANGE 6
-- Delete all rows in your table except belows
-- employee_id = 100
-- first name is yours
delete from batch_11.employee_diaz_jubairy 
where employee_id != 100 and first_name != 'Diaz'


-- CHALLANGE 7
-- Delete all rows in your table
truncate table batch_11.employee_diaz_jubairy

-- challange 8
-- Drop your table
drop table batch_11.employee_diaz_jubairy
	
delete from batch_11.employee_diaz_jubairy where employee_id = 101

INSERT INTO batch_11.employee_diaz_jubairy
(employee_id)
VALUES(101);


-- Membuat tabel homework_2_group_7
create table if not exists batch_11.homework_2_group_7
(
	id int primary key not null,
	nama_depan varchar(255) not null,
	nama_belakang varchar(255) not null,
	alamat_email varchar(255) not null,
	link_linkedIn varchar(255) not null,
	pekerjaan_impian varchar(255) not null,
	alasan_mengikuti_bootcamp varchar(255) not null
)

-- Memasukan data ke tabel homework_2_group_7
insert into batch_11.homework_2_group_7 values
(1,'Diaz', 'Jubairy Prabowo', 'diazjubairy@gmail.com', 'https://www.linkedin.com/in/diazjubairy', 'Senior Data Scientist', 'Agar menjadi data analyst atau data scientist'),
(2,'Hadie', 'Putra', 'mulya.hadie@gmail.com', 'https://linkedin.com/in/hadie-putra-584768229/', 'Juragan Properti', 'menambah skill dalam pemrosesan data'),
(3,'Farahul', 'Jannah', 'farah930922@gmail.com', 'https://www.linkedin.com/in/farahul-jannah-1bbb31150/', 'istri yg solehah', 'menambah skill dalam pemrosesan data'),
(4,'Desi', 'Sulistyowati', 'desisulist8@gmail.com', 'https://www.linkedin.com/in/desi-sulistyowati30', 'pengusaha', 'switch career jadi data scientist')



SELECT id FROM employee WHERE id like ‘___005’

select MID('membawa',4,4)
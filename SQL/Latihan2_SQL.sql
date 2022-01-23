-- memunculkan bulan dalam bentuk integer sat ini 
select extract (month from current_timestamp)

-- menampilkan tanggal di awal dari peride waktu yang dipilih
select date_trunc('month', current_timestamp) 

-- kalkulasi aritmatika antar masing-masing tipe data waktu akan menghasilkan hasil yang berbeda
select current_timestamp::date - '2021-11-01 13:20:58'::date

select current_timestamp + interval '30 days'

select current_timestamp + interval '1 day 3 hours'


SELECT * FROM datasource_sql_ds11.customer;

select 	c.id, 
		c.city, 
		c.email, 
		c.gender,
		t.*
from 	datasource_sql_ds11.customer c
left join 	datasource_sql_ds11.transaction t  
on 	c.id = t.customer_id

select 	c.id, 
		c.city, 
		c.email, 
		c.gender,
		s.type,
		p.id,
		p.price,
		t.quantity,
		p.price*t.quantity as tota,
		t.created_at
from 	datasource_sql_ds11.customer c
left join 	datasource_sql_ds11.transaction t on 	c.id = t.customer_id
left join	datasource_sql_ds11.store s  on t.store_id = s.id 
left join 	datasource_sql_ds11.product p on t.product_id = p.id


-- union 
-- kolom yang dipilih dari tabel pertama harus sama
-- kalo yg atas ada dua kolom yg bawah jg 2 kolom dengan nama sama
-- atau pilih dengan tipe data yang sama
-- kalo kasih alias di tabel yg pertama aja
select id
from datasource_sql_ds11.customer
where email <> 'Gmail'

union all 

select id
from datasource_sql_ds11.customer
where email = 'gmail'



select 	id as nomor,
		email
from datasource_sql_ds11.customer
where email <> 'Gmail'

union all 

select 	customer_id, 
		NULL	
from datasource_sql_ds11.customer
where email = 'gmail'



select 	c.id, 
		c.city, 
		c.email, 
		c.gender,
		s.type,
		p.id,
		p.price,
		t.quantity,
		p.price*t.quantity as tota,
		t.created_at
from 	datasource_sql_ds11.customer c
left join 	datasource_sql_ds11.transaction t on 	c.id = t.customer_id
left join	datasource_sql_ds11.store s  on t.store_id = s.id 
left join 	datasource_sql_ds11.product p on t.product_id = p.id



-- subquery didalam select wajib menghasilkan satu value
-- subquery didalam where bisa dalam bentuk beberapa values / array atau tabel
-- subquery lebih enak pake WITH dibuat jadi temporary table 


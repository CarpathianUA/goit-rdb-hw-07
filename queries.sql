-- 1
select
    id,
    date,
    extract(year from date) as year,
    extract(month from date) as month,
    extract(day from date) as day
from orders
limit 10;

-- 2
select id, date, date_add(date, interval 1 day ) as 'date + 1 day'
from orders
limit 10;

-- 3
select id, date, unix_timestamp(date) as ts
from orders
limit 10;

-- 4
select count(*) as orders_count
from orders
where date between '1996-07-10 00:00:00' and '1996-10-08 00:00:00'
limit 10;

-- 5
select id, date, json_object('id', id, 'date', date) as json_id_date
from orders
limit 10;

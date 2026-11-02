show databases;

use sakila;

show tables;

select * from actor;
select * from actor where first_name Like "NICK%";

select *from film;
select *from film where rental_rate>4.99;


select * from customer;
select *from customer where store_id=1;

select *from film;
select *from film where length<60;

select *from payment;
select *from payment where amount>5;

select *from actor;
select *from actor where last_name like "%SMITH";

select *from film;
select *from film where rating="PG";

select *from customer;
select *from customer where active=1;

select *from film;
select *from film where replacement_cost>=20;

select *from rental;
select *from rental where rental_date<"2005-06-01";

select *from staff;	
select *from staff where staff_id=2;

select *from film where rental_duration=7;

select *from customer where last_name like "DAVIS";

select *from film where length>120;

select *from payment where amount<2;

select *from film where rating="PG" and rental_rate=2.99;

select *from customer;
select *from customer where store_id=1 and active=1;

select *from film;
select *from film where length>100 and replacement_cost>20;

select *from payment;
select *from payment where amount>5 and staff_id=1;

select *from actor where first_name="JOHN" and last_name="DOE";

select *from film where rating="PG" and length between 90 and 120 order by length;

show tables;
select *from customer where (store_id=1 OR store_id=2) AND last_name Like "S%" order by lasT_name;

select *from film where rating!="R" and rental_rate>2.99;

show tables;
select *from rental;
select * from rental where return_date IS NULL order by rental_date desc;

select *from actor where first_name like "A%" and last_name like "%N";

select *from payment where payment_id between 2 and 5  and staff_id=1 order by amount desc;

select *from film where rating="PG" or rating="G" order by title Limit 5;

select *from customer;
SELECT *
FROM customer
WHERE email LIKE '%gmail%'
  AND active = 1;
  
  select *from film where rating!="NC-17" limit 10;
  
  show tables;
select *from payment where payment_id>7 or payment_id<1 order by amount;

select *from film where rating="PG" or rating="G";

select *from customer where store_id=1 or store_id=2;

select *from payment where amount=0.99 or amount=2.99;

select *from film where rating="PG-13" and rental_rate between 2.99 and 4.99 order by rental_rate desc;

select *from customer where first_name="M" or last_name="D" order by first_name;

select *from film where rating!="G" and length>100  limit 8;

select *from rental where return_date IS null and rental_date>"2005-06-15";

select *from actor where last_name like "%SON" or last_name like "B%" order by last_name desc;

select *from payment where payment_id>5 and staff_id!=2;

select *from film where replacement_cost between 15 and 25 and rating  IN ("PG","R");

select *from film where rating!="NC-17" limit 7;

select *from customer where email like "%.org" and active=0;

select *from film where title like "%LOVE%" or title like "%ACTION%" order by title;

select *from payment where payment_id=1 and payment_id=3 or payment_id>8  order by amount desc;

select *from actor where length(first_name)=5 and first_name like "A%";

select *from film where rating!="R";

select *from customer where active=0;

select *from film where length between 60 and 120;

select *from film where rating="R" and length between 80 and 140 order by title desc;

select *from customer where last_name like "%ER%" and store_id=2 order by last_name;

select *from payment where staff_id=1 or amount>9 order by payment_date desc;

select *from film where rating NOT IN ("G","PG") and rental_duration>5;

select *from rental where return_date IS not NUll and return_date between "2005-05-25" and "2005-06-05";

select *from film where length(replacement_cost)>100 limit 6;

select *from customer where first_name like "J%" or last_name like "%EZ" order by first_name;

select *from customer;
select *from customer where email is NULL; 

show tables;

SELECT * 
FROM rental 
WHERE return_date IS NULL;

select *from address where address2 is NULL;

select *from film  where title like "T%" and length>90 or rental_rate<1.99 order by rental_rate limit 7;

select *from customer;
select *from customer where email like "%.net%" and active=1 and store_id!=2 order by customer_id desc ;

select *from actor where first_name like "A%";
select *from actor where last_name like "%SON";

select *from film where title like "%LOVE%";

select *from customer where length(first_name)=4;

select *from actor where first_name like "A%" and length(first_name)=5;
select *from actor where last_name like "%N" and length(last_name)=4;

select *from customer where first_name like "%ER%";


select * from film where title like "S%" and title like "%E";

select *from actor where first_name like "_A%";

select *from customer where last_name like "B%" and length(last_name)=6;

SELECT title 
FROM film 
WHERE title LIKE '%___ING%';

select *from actor where last_name like "%SON%" and last_name not LIKe "J%";

select *from customer where email like "a%" and email like "%.org";

select *from film where title like "__o%";

select *from actor where first_name like  "%A" and length(first_name)=4;

select *from customer where last_name like "%LL%" and length(last_name)=6;

select *from film where title like "AR%";

select *from actor where first_name like "___E%";

select *from film where title like "C%" and length(title)=5; 

select *from payment where payment_id between 2 and 4;

select *from film where rating IN ("PG","PG-13");

select *from film where length between 90 and 120;

select *from film where rating="PG-13" oR rating="R" and length between 95 and 130 order by length desc;

select *from customer where first_name like "K%" and last_name like "%AR%" order by customer_id;
select *from payment where payment_id>6 and amount between 1 and 2 and staff_id!=2;

select *from rental where return_date is NULL or rental_date between "2005-06-01" and "2005-06-10" order by rental_date desc limit 10;

select *from film where title like "B%" and title like "__E" order by title;

select *from customer where email like "%.com" and active=1 and store_id in(1,2) limit 8;

select *from film where rating!="G" and rental_rate>2.99 order by length  desc limit 5;
select *from film order by title asc;

select *from customer  order by last_name desc;

select *from payment order by amount desc;

select *from film where rating="PG" and length>100 order by length desc;

select *from customer where store_id=1 and last_name like "C%" order by last_name asc;

SELECT * 
FROM payment 
WHERE payment_id BETWEEN 2 AND 6 
ORDER BY amount ASC, payment_date DESC;


select *from rental where return_date is not null and rental_date> "2005-06-01" order by rental_date desc;

select *from actor where first_name like  "%E%" and first_name like "A%" order by first_name;

select *from film where replacement_cost>20 and rating in ("R","PG-13") order by replacement_cost desc;

select *from customer where email like "%.net%" or email like "%.org%" order by customer_id desc;

select *from actor limit 5;

SELECT payment_id, amount 
FROM payment 
ORDER BY amount DESC 
LIMIT 10;

select *from film where rating="PG" limit 3;

select *from film order by length limit 5;

select *from rental limit 10;

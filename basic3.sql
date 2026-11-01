CREATE DATABASE sakila_practice;

USE sakila_practice;

CREATE TABLE actor (
    actor_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE film (
    film_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100),
    description TEXT,
    release_year YEAR,
    rental_duration INT,
    rental_rate DECIMAL(4,2),
    length INT,
    replacement_cost DECIMAL(5,2),
    rating VARCHAR(10)
);

CREATE TABLE address (
    address_id INT PRIMARY KEY AUTO_INCREMENT,
    address VARCHAR(100),
    address2 VARCHAR(100),
    district VARCHAR(50),
    city VARCHAR(50),
    postal_code VARCHAR(20),
    phone VARCHAR(20)
);

CREATE TABLE staff (
    staff_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    address_id INT,
    store_id INT,
    active TINYINT DEFAULT 1,
    email VARCHAR(100),

    FOREIGN KEY (address_id) REFERENCES address(address_id)
);

CREATE TABLE customer (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    store_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    address_id INT,
    active TINYINT DEFAULT 1,

    FOREIGN KEY (address_id) REFERENCES address(address_id)
);

CREATE TABLE payment (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    staff_id INT,
    rental_id INT,
    amount DECIMAL(5,2),
    payment_date DATETIME,

    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
);

CREATE TABLE rental (
    rental_id INT PRIMARY KEY AUTO_INCREMENT,
    rental_date DATETIME,
    inventory_id INT,
    customer_id INT,
    return_date DATETIME,
    staff_id INT,

    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
);



INSERT INTO address
(address, address2, district, city, postal_code, phone)
VALUES
('MG Road', NULL, 'Karnataka', 'Bangalore', '560001', '9876543210'),
('FC Road', 'Near Mall', 'Maharashtra', 'Pune', '411001', '9876543211'),
('Civil Lines', NULL, 'Maharashtra', 'Nagpur', '440001', '9876543212'),
('Park Street', 'Floor 2', 'West Bengal', 'Kolkata', '700016', '9876543213'),
('Connaught Place', NULL, 'Delhi', 'Delhi', '110001', '9876543214'),
('Brigade Road', NULL, 'Karnataka', 'Bangalore', '560025', '9876543215'),
('Baner Road', 'Flat 101', 'Maharashtra', 'Pune', '411045', '9876543216'),
('Sitabuldi', NULL, 'Maharashtra', 'Nagpur', '440012', '9876543217'),
('Salt Lake', NULL, 'West Bengal', 'Kolkata', '700091', '9876543218'),
('Karol Bagh', 'Floor 1', 'Delhi', 'Delhi', '110005', '9876543219');

INSERT INTO staff
(first_name, last_name, address_id, store_id, active, email)
VALUES
('Mike', 'Hillyer', 1, 1, 1, 'mike@gmail.com'),
('Jon', 'Stephens', 2, 2, 1, 'jon@gmail.com'),
('Sarah', 'Smith', 3, 1, 1, 'sarah@gmail.com'),
('David', 'Brown', 4, 2, 0, 'david@gmail.com');

INSERT INTO customer
(store_id, first_name, last_name, email, address_id, active)
VALUES
(1, 'Mary', 'Smith', 'mary@gmail.com', 1, 1),
(1, 'John', 'Davis', 'john@gmail.com', 2, 1),
(2, 'Kevin', 'Brown', 'kevin@gmail.com', 3, 1),
(2, 'Michael', 'Anderson', 'michael@gmail.com', 4, 0),
(1, 'Jennifer', 'Miller', 'jennifer@company.org', 5, 1),
(2, 'Robert', 'Wilson', 'robert@yahoo.com', 6, 1),
(1, 'Karen', 'Garcia', 'karen@gmail.com', 7, 0),
(2, 'James', 'Davis', 'james@company.net', 8, 1),
(1, 'Emily', 'Taylor', 'emily@gmail.com', 9, 1),
(2, 'Mark', 'Johnson', 'mark@company.org', 10, 0),
(1, 'Arun', 'Bennett', 'arun@gmail.com', 1, 1),
(2, 'Kiran', 'Carter', 'kiran@company.net', 2, 1),
(1, 'Mohan', 'Miller', NULL, 3, 1),
(2, 'David', 'Perez', 'david@company.com', 4, 1),
(1, 'Sara', 'Ellison', 'sara@company.org', 5, 0),
(2, 'Kevin', 'Anderson', 'kevin@company.net', 6, 1),
(1, 'Jennifer', 'Clark', 'jennifer@gmail.com', 7, 1),
(2, 'Karan', 'Benson', 'karan@company.com', 8, 1),
(1, 'Amit', 'Dawson', 'amit@gmail.com', 9, 1),
(2, 'Megan', 'Barker', 'megan@company.org', 10, 0);


INSERT INTO actor (first_name, last_name)
VALUES
('NICK', 'WAHLBERG'),
('JOHN', 'DOE'),
('ADAM', 'SMITH'),
('AARON', 'SON'),
('ANGELA', 'BROWN'),
('PENELOPE', 'GUINESS'),
('ED', 'CHASE'),
('ALBERT', 'NOLAN'),
('AMY', 'JOHNSON'),
('BRAD', 'PIT'),
('JULIA', 'ROBERTSON'),
('ANNA', 'WILLIAMS'),
('MARK', 'NELSON'),
('STEVE', 'ANDERSON'),
('ELLA', 'BROWN'),
('ALEXANDER', 'SON'),
('EMMA', 'CLARK'),
('ARTHUR', 'JACKSON'),
('ELIZABETH', 'SMITH'),
('AMANDA', 'THOMPSON');

INSERT INTO film
(title, description, release_year, rental_duration,
 rental_rate, length, replacement_cost, rating)
VALUES
('ACADEMY DINOSAUR', 'Action adventure film', 2006, 6, 0.99, 86, 20.99, 'PG'),
('ACE GOLDFINGER', 'Drama film', 2006, 3, 4.99, 48, 12.99, 'G'),
('ADAPTATION HOLES', 'Comedy film', 2006, 5, 2.99, 120, 25.99, 'PG-13'),
('AFFAIR PREJUDICE', 'Romance film', 2006, 7, 4.99, 117, 21.99, 'R'),
('AFRICAN EGG', 'Adventure film', 2006, 6, 2.99, 130, 22.99, 'PG'),
('AGENT TRUMAN', 'Action film', 2006, 7, 0.99, 169, 17.99, 'NC-17'),
('AIRPLANE SIERRA', 'Comedy film', 2006, 4, 2.99, 90, 19.99, 'PG'),
('ALADDIN CALENDAR', 'Fantasy film', 2006, 5, 4.99, 120, 24.99, 'PG-13'),
('ALAMO VIDEOTAPE', 'Drama film', 2006, 3, 0.99, 50, 15.99, 'G'),
('ALASKA PHANTOM', 'Thriller film', 2006, 6, 2.99, 110, 26.99, 'R'),
('ALI FOREVER', 'Romance film', 2006, 7, 4.99, 95, 20.99, 'PG'),
('ALICE FANTASIA', 'Fantasy film', 2006, 5, 2.99, 140, 29.99, 'PG-13'),
('ALONE TRIP', 'Drama film', 2006, 7, 0.99, 45, 10.99, 'G'),
('ALTER VICTORY', 'Action film', 2006, 6, 4.99, 125, 27.99, 'R'),
('AMADEUS HOLY', 'Music film', 2006, 3, 2.99, 100, 18.99, 'PG'),
('AMELIE HELLFIGHTERS', 'Action film', 2006, 7, 4.99, 150, 25.99, 'NC-17'),
('AMERICAN CIRCUS', 'Comedy film', 2006, 5, 2.99, 80, 16.99, 'PG-13'),
('ANACONDA CONFESSIONS', 'Adventure film', 2006, 6, 0.99, 115, 23.99, 'R'),
('ANALYZE HOOSIERS', 'Comedy film', 2006, 4, 4.99, 105, 21.99, 'PG'),
('ANGELS LIFE', 'Romance film', 2006, 7, 2.99, 135, 30.99, 'PG-13'),
('BRAVE HEART', 'Action film', 2006, 5, 2.99, 110, 22.99, 'PG'),
('BEE STORY', 'Animation film', 2006, 4, 0.99, 95, 14.99, 'G'),
('BASIC INSTINCT', 'Thriller film', 2006, 6, 4.99, 130, 25.99, 'R'),
('CANDY LOVE', 'Romance film', 2006, 7, 2.99, 105, 19.99, 'PG-13'),
('CAMP FIRE', 'Adventure film', 2006, 5, 4.99, 155, 28.99, 'R'),
('TARZAN THE KING', 'Adventure film', 2006, 7, 2.99, 125, 24.99, 'PG'),
('STAR WARS', 'Science fiction film', 2006, 6, 4.99, 121, 26.99, 'PG-13'),
('SOMEWHERE NICE', 'Drama film', 2006, 3, 0.99, 55, 13.99, 'G'),
('LOVE STORY', 'Romance film', 2006, 5, 2.99, 98, 20.99, 'PG'),
('ACTION HERO', 'Action film', 2006, 7, 4.99, 145, 29.99, 'R'),
('KING OF WAR', 'Action film', 2006, 6, 0.99, 75, 18.99, 'PG'),
('DARK ANGEL', 'Thriller film', 2006, 5, 2.99, 115, 21.99, 'PG-13'),
('SILENT VOICE', 'Drama film', 2006, 4, 4.99, 60, 17.99, 'PG'),
('THE RING', 'Horror film', 2006, 6, 2.99, 102, 23.99, 'R'),
('THE MASK', 'Comedy film', 2006, 5, 0.99, 90, 15.99, 'G');


INSERT INTO rental
(rental_date, inventory_id, customer_id, return_date, staff_id)
VALUES
('2005-05-20 10:00:00', 1, 1, '2005-05-22 10:00:00', 1),
('2005-05-25 11:00:00', 2, 2, '2005-05-27 11:00:00', 2),
('2005-06-01 12:00:00', 3, 3, NULL, 1),
('2005-06-03 13:00:00', 4, 4, '2005-06-05 13:00:00', 2),
('2005-06-05 14:00:00', 5, 5, NULL, 1),
('2005-06-10 15:00:00', 6, 6, '2005-06-12 15:00:00', 2),
('2005-06-16 16:00:00', 7, 7, NULL, 1),
('2005-06-18 17:00:00', 8, 8, '2005-06-20 17:00:00', 2),
('2005-06-20 18:00:00', 9, 9, NULL, 1),
('2005-06-25 19:00:00', 10, 10, '2005-06-27 19:00:00', 2),
('2005-07-01 10:00:00', 11, 11, NULL, 1),
('2005-07-05 11:00:00', 12, 12, '2005-07-07 11:00:00', 2),
('2005-07-10 12:00:00', 13, 13, NULL, 1),
('2005-07-15 13:00:00', 14, 14, '2005-07-17 13:00:00', 2),
('2005-07-20 14:00:00', 15, 15, NULL, 1);


INSERT INTO payment
(customer_id, staff_id, rental_id, amount, payment_date)
VALUES
(1, 1, 1, 0.99, '2005-05-20 10:00:00'),
(2, 2, 2, 2.99, '2005-05-25 11:00:00'),
(3, 1, 3, 5.99, '2005-06-01 12:00:00'),
(4, 2, 4, 1.99, '2005-06-03 13:00:00'),
(5, 1, 5, 8.99, '2005-06-05 14:00:00'),
(6, 2, 6, 3.99, '2005-06-10 15:00:00'),
(7, 1, 7, 9.99, '2005-06-16 16:00:00'),
(8, 2, 8, 4.99, '2005-06-18 17:00:00'),
(9, 1, 9, 2.99, '2005-06-20 18:00:00'),
(10, 2, 10, 7.99, '2005-06-25 19:00:00'),
(11, 1, 11, 0.99, '2005-07-01 10:00:00'),
(12, 2, 12, 6.99, '2005-07-05 11:00:00'),
(13, 1, 13, 2.00, '2005-07-10 12:00:00'),
(14, 2, 14, 5.00, '2005-07-15 13:00:00'),
(15, 1, 15, 9.50, '2005-07-20 14:00:00'),
(1, 2, 1, 3.50, '2005-07-21 10:00:00'),
(2, 1, 2, 1.50, '2005-07-22 11:00:00'),
(3, 2, 3, 8.50, '2005-07-23 12:00:00'),
(4, 1, 4, 4.50, '2005-07-24 13:00:00'),
(5, 2, 5, 6.50, '2005-07-25 14:00:00');

Show tables;


select * from actor;

select * from actor where first_name Like  "NICK%";

select * from film;

 select * from film where rental_rate>4.99;

-- Customers from store_id = 1


-- 4. Films with length < 60 minutes.
-- 5. Payments greater than 5.
-- 6. Actors with last_name = 'SMITH'.
-- 7. Films with rating = 'PG'.
-- 8. Customers active = 1.
-- 9. Films with replacement_cost >= 20.
-- 10. Rentals before '2005-06-01'.
-- 11. Staff with store_id = 2.
-- 12. Films with rental_duration = 7.
-- 13. Customers with last_name = 'DAVIS'.
-- 14. Films where length > 120.
-- 15. Payments less than 2.
-- 16. Films with rating 'PG' AND rental_rate = 2.99.
-- 17. Customers from store 1 AND active = 1.
-- 18. Films longer than 100 AND replacement_cost > 20.
-- 19. Payments > 5 AND staff_id = 1.
-- 20. Actors first_name = 'JOHN' AND last_name = 'DOE'.
-- 21. List films rated 'PG' AND length between 90 and 120 minutes, ordered by length 
-- 22. Find customers from store 1 OR store 2 whose last name starts with 'S', ordered alphabetically.
-- 23. List films NOT rated 'R' and rental_rate greater than 2.99.
-- 24. Show rentals where return_date IS NULL, ordered by rental_date descending.
-- 25. Find actors whose first_name starts with 'A' AND last_name ends with 'N'.
-- 26. List payments between 2 and 5 AND staff_id = 1, ordered by amount descending.
-- 27. Show first 5 films rated 'PG' OR 'G', ordered by title.
-- 28. Find customers whose email contains 'gmail' AND active = 1.
-- 29. List 10 longest films that are NOT rated 'NC-17'.
-- 30. Show payments greater than 7 OR less than 1, ordered by amount.
-- 31. Films rated 'PG' OR 'G'.
-- 32. Customers from store 1 OR store 2.
-- 33. Payments amount 0.99 OR 2.99.
-- 34. List films rated 'PG-13' AND rental_rate between 2.99 and 4.99, ordered by rental_rate descending.
-- 35. Find customers whose first name starts with 'M' OR last name starts with 'D', ordered by first name.
-- 36. Show films NOT rated 'G' AND length greater than 100 minutes, limit 8 results.
-- 37. List rentals where return_date IS NULL AND rental_date after '2005-06-15'.
-- 38. Find actors whose last name ends with 'SON' OR starts with 'B', ordered by last name descending.
-- 39. Show payments greater than 5 AND not made by staff_id = 2.
-- 40. List films with replacement_cost between 15 and 25 AND rating IN ('PG','R').
-- 41. Display top 7 shortest films that are NOT rated 'NC-17'.
-- 42. Find customers whose email ends with '.org' AND active = 0.
-- 43. Show films whose title contains 'LOVE' OR 'ACTION', ordered alphabetically.
-- 44. List payments between 1 and 3 OR greater than 8, ordered by amount descending.
-- 45. Find first 5 actors whose first name has exactly 5 letters AND starts with 'A'.
-- 46. Films NOT rated 'R'.
-- 47. Customers NOT active.
-- 48. Films NOT between 60 and 120 minutes.
-- 49. List films rated 'R' AND length between 80 and 140 minutes, ordered by title descending.
-- 50. Find customers whose last name contains 'ER' AND store_id = 2, ordered by last_name.
-- 51. Show payments made by staff_id 1 OR amount greater than 9, ordered by payment_date descending.
-- 52. List films NOT in rating ('G','PG') AND rental_duration greater than 5 days.
-- 53. Find rentals where return_date IS NOT NULL AND rental_date between '2005-05-25' and '2005-06-05'.
-- 54. Display top 6 most expensive films (replacement_cost) that have length greater than 100 minutes.
-- 55. List first 8 customers whose first name starts with 'J' OR last name ends with 'EZ', ordered by first_name.
-- 56. Customers with NULL email.
-- 57. Rentals not yet returned.
-- 58. Addresses with NULL address2.
-- 59. List films whose title starts with 'T' AND length greater than 90 minutes
-- OR rental_rate less than 1.99,
-- ordered by rental_rate ascending, show first 7 records.
-- 60. Display customers whose email contains '.net' AND active = 1
-- AND NOT from store_id = 2,
-- ordered by customer_id descending.
-- 61. Actors whose first_name starts with 'A'.
-- 62. Actors whose last_name ends with 'SON'.
-- 63. Films containing 'LOVE' in title.
-- 64. Customers whose first_name has exactly 4 letters.
-- 61. Find actors whose first name starts with 'A' and has exactly 5 letters.
-- 62. List actors whose last name ends with 'N' and has exactly 4 letters.
-- 63. Find customers whose first name contains 'ER' anywhere.
-- 64. Show films whose title starts with 'S' and ends with 'E'.
-- 65. Find actors whose first name has 'A' as second letter.
-- 66. List customers whose last name starts with 'B' and has exactly 6 characters.
-- 67. Find films whose title contains exactly 3 letters before 'ING'.
-- 68. Display actors whose last name contains 'SON' but does not start with 'J'.
-- 69. Find customers whose email starts with 'a' and ends with '.org'.
-- 70. List films whose title has 'O' as the third character.
-- 71. Find actors whose first name ends with 'A' and has exactly 4 letters.
-- 72. Show customers whose last name contains 'LL' and has at least 6 characters.
-- 73. Find films whose title starts with any two characters followed by 'AR'.
-- 74. Display first 5 actors whose first name contains 'E' as fourth letter.
-- 75. List films whose title starts with 'C', has exactly 5 characters before space, and then anything after.
-- 76. Payments between 2 and 4.
-- 77. Films with rating IN ('PG','PG-13').
-- 78. Films length between 90 and 120.
-- 79. List films rated 'PG-13' OR 'R' that have length between 95 and 130 minutes, ordered by length descending.
-- 80. Find customers whose first name starts with 'K' AND last name contains 'AR', ordered by customer_id.
-- 81. Show payments greater than 6 OR amount between 1 and 2, but NOT made by staff_id = 2.
-- 82. Display rentals where return_date IS NULL
-- OR rental_date between '2005-06-01' and '2005-06-10',
-- ordered by rental_date descending, limit 10.
-- 83. List films whose title starts with 'B' and has 'E' as the third character, ordered alphabetically.
-- 84. Find customers whose email ends with '.com'
-- AND active = 1
-- AND store_id IN (1,2),
-- limit first 8 records.
-- 85. Show top 5 longest films that are NOT rated 'G'
-- AND rental_rate greater than 2.99.
-- 86. List films ordered by title ascending.
-- 87. Customers ordered by last_name descending.
-- 88. Payments ordered by amount descending.
-- 89. List films rated 'PG' and length greater than 100 minutes, ordered by length descending.
-- 90. Find customers from store_id = 1 whose last name starts with 'C', ordered by last_name ascending.
-- 91. Show payments between 2 and 6, ordered by amount descending and payment_date ascending.
-- 92. Display rentals where return_date IS NOT NULL and rental_date after '2005-06-01', ordered by rental_date descending.
-- 93. List actors whose first name contains 'E' but does not start with 'A', ordered by first_name.
-- 94. Find films with replacement_cost greater than 20 and rating IN ('R','PG-13'), ordered by replacement_cost descending.
-- 95. Show customers whose email contains '.net' or '.org', ordered by customer_id descending.
-- 96. First 5 actors.
-- 97. Top 10 highest payments.
-- 98. First 3 films rated 'PG'.
-- 99. 5 shortest films.
-- 100. Latest 10 rentals.


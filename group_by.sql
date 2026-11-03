show databases;

use employee;

show TABLES;

select *from emp;

select deptno,sum(sal) as total_salary from emp  group by deptno having deptno not in (10);

select deptno,count(*) as employee_count from emp group by deptno having count(*)>4;

select job,avg(sal)  from emp GROUP by job having avg(sal)>2000 ORDER BY avg(sal);

select mgr,count(empno) as  no_of_employee from emp group by mgr;

select mgr as manager_number,min(sal) as lowest_salary from emp
where mgr is not NULL
group by mgr
having min(sal)>800
order by lowest_salary desc;




show databases;
use assignment2;

select *from users;

-- 1.	Write a query which will display username in upper case, role first letter capitalized and all other letters lower case and length of the username.

SELECT 
    UPPER(user_name) AS formatted_username,
    INSERT(LOWER(role), 1, 1, UPPER(LEFT(role, 1))) AS formatted_role,
    LENGTH(user_name) AS username_length
FROM 
    users;

select *from rtu;

SELECT *from sensors;

-- 2.	Display percentage of difference between req_value and curr_value as a whole number.

SELECT 
    ROUND(((curr_val - req_val) / req_val) * 100) AS pct_difference
FROM 
    sensors;


-- 1.	List how many sensors are present of type PRESSURE.

select *from sensors;

select SENSOR_TYPE,count(sensor_id) from sensors group by SENSOR_TYPE HAVING sensor_type="PRESSURE";

-- 2.	Display number of sensors enabled and disabled. Sort on number of sensors

select STATUS,count(sensor_id) from sensors group by status HAVING status="ENABLED" OR STATUS="DISABLED" order by count(sensor_id);


-- 3.	List how many sensors are present in each sensor type.

select SENSOR_TYPE,count(sensor_id) from sensors group by SENSOR_TYPE;

-- 4.	List number of sensors under each RTU_ID.
SELECT count(sensor_id),rtu_id from sensors GROUP by rtu_id;

-- 5.	Display how many sensors are controlled by each user. Exclude users who are controlling less than 3 sensors and also restrict users with id “U503”. Sort on user_id.



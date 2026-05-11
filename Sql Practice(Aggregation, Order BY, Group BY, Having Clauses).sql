mysql> show databases;
+---------------------------+
| Database                  |
+---------------------------+
| college                   |
| ecommerce                 |
| information_schema        |
| mysql                     |
| orientbank                |
| performance_schema        |
| sakila                    |
| student_management_system |
| studentmanagementsystem   |
| sys                       |
| world                     |
+---------------------------+
11 rows in set (0.12 sec)

mysql> use ecommerce;
Database changed
mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| demo                |
| orders              |
| product             |
+---------------------+
4 rows in set (0.04 sec)

mysql> desc orders;
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| order_id     | int         | NO   | PRI | NULL    | auto_increment |
| customer_id  | varchar(15) | NO   | MUL | NULL    |                |
| Product_id   | varchar(15) | NO   | MUL | NULL    |                |
| quantity     | int         | NO   |     | NULL    |                |
| total_price  | double      | NO   |     | NULL    |                |
| payment_mode | varchar(20) | NO   |     | NULL    |                |
| order_date   | date        | NO   |     | NULL    |                |
| order_status | varchar(20) | NO   |     | NULL    |                |
+--------------+-------------+------+-----+---------+----------------+
8 rows in set (0.03 sec)

mysql> create table products(order_id varchar(10) primary key not null, product_name varchar(10) not null, category varchar(20) not null, selling_price double not null, original_price double not null);
Query OK, 0 rows affected (0.07 sec)

mysql> use aggregation
Database changed
mysql> select*from products;
ERROR 1146 (42S02): Table 'aggregation.products' doesn't exist
mysql> create table products(order_id varchar(10) primary key not null, product_name varchar(10) not null, category varchar(20) not null, selling_price double not null, original_price double not null);
Query OK, 0 rows affected (0.05 sec)

mysql> select*from orders;
ERROR 1146 (42S02): Table 'aggregation.orders' doesn't exist
mysql> select*from products;
Empty set (0.00 sec)

mysql> show databases;
+---------------------------+
| Database                  |
+---------------------------+
| aggregation               |
| college                   |
| ecommerce                 |
| information_schema        |
| mysql                     |
| orientbank                |
| performance_schema        |
| sakila                    |
| student_management_system |
| studentmanagementsystem   |
| sys                       |
| world                     |
+---------------------------+
12 rows in set (0.00 sec)

mysql> use aggregation;
Database changed
mysql> show tables;
+-----------------------+
| Tables_in_aggregation |
+-----------------------+
| products              |
+-----------------------+
1 row in set (0.01 sec)

mysql> desc products;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| order_id       | varchar(10) | NO   | PRI | NULL    |       |
| product_name   | varchar(10) | NO   |     | NULL    |       |
| category       | varchar(20) | NO   |     | NULL    |       |
| selling_price  | double      | NO   |     | NULL    |       |
| original_price | double      | NO   |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> select*from products;
Empty set (0.00 sec)

mysql> insert into products values('O101', 'Chair','Furniture', '4000','5000');
Query OK, 1 row affected (0.02 sec)

mysql> insert into products values('O102', 'Mobile','Electronic','20000','30000');
Query OK, 1 row affected (0.01 sec)

mysql> insert into products values('O103', 'Jeans','Clothing','2000','2500');
Query OK, 1 row affected (0.01 sec)

mysql> insert into products values('O104', 'Laptop','Electronic','220000','50000');
Query OK, 1 row affected (0.01 sec)

mysql> CREATE TABLE employee(employee_id VARCHAR(10) NOT NULL PRIMARY KEY, employee_name VARCHAR(20)
    -> NOT NULL, department VARCHAR(20) NOT NULL, salary INT NOT NULL);
Query OK, 0 rows affected (0.05 sec)

mysql> show tables;
+-----------------------+
| Tables_in_aggregation |
+-----------------------+
| employee              |
| products              |
+-----------------------+
2 rows in set (0.00 sec)

mysql> desc employee;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| employee_id   | varchar(10) | NO   | PRI | NULL    |       |
| employee_name | varchar(20) | NO   |     | NULL    |       |
| department    | varchar(20) | NO   |     | NULL    |       |
| salary        | int         | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> insert into employee values('E101','Ansh', 'IT', 80000),('E102', 'Aditya', 'IT', '50000'),('E103','Aarti','HR','30000'),('E104','Simmi','Finance','35000');
Query OK, 4 rows affected (0.04 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select*from employee;
+-------------+---------------+------------+--------+
| employee_id | employee_name | department | salary |
+-------------+---------------+------------+--------+
| E101        | Ansh          | IT         |  80000 |
| E102        | Aditya        | IT         |  50000 |
| E103        | Aarti         | HR         |  30000 |
| E104        | Simmi         | Finance    |  35000 |
+-------------+---------------+------------+--------+
4 rows in set (0.01 sec)

mysql> select*from products;
+----------+--------------+------------+---------------+----------------+
| order_id | product_name | category   | selling_price | original_price |
+----------+--------------+------------+---------------+----------------+
| O101     | Chair        | Furniture  |          4000 |           5000 |
| O102     | Mobile       | Electronic |         20000 |          30000 |
| O103     | Jeans        | Clothing   |          2000 |           2500 |
| O104     | Laptop       | Electronic |        220000 |          50000 |
+----------+--------------+------------+---------------+----------------+
4 rows in set (0.00 sec)

mysql> select sum(selling_price) from products;
+--------------------+
| sum(selling_price) |
+--------------------+
|             246000 |
+--------------------+
1 row in set (0.00 sec)

mysql> select sum(original_price) from products;
+---------------------+
| sum(original_price) |
+---------------------+
|               87500 |
+---------------------+
1 row in set (0.00 sec)

mysql> select count(*) from products;
+----------+
| count(*) |
+----------+
|        4 |
+----------+
1 row in set (0.01 sec)

mysql> select AVG(selling_price) from products;
+--------------------+
| AVG(selling_price) |
+--------------------+
|              61500 |
+--------------------+
1 row in set (0.00 sec)

mysql> select MIN(selling_price) from products;
+--------------------+
| MIN(selling_price) |
+--------------------+
|               2000 |
+--------------------+
1 row in set (0.00 sec)

mysql> select Max(selling_price) from products;
+--------------------+
| Max(selling_price) |
+--------------------+
|             220000 |
+--------------------+
1 row in set (0.00 sec)

mysql> select * from products ORDER BY selling_price;
+----------+--------------+------------+---------------+----------------+
| order_id | product_name | category   | selling_price | original_price |
+----------+--------------+------------+---------------+----------------+
| O103     | Jeans        | Clothing   |          2000 |           2500 |
| O101     | Chair        | Furniture  |          4000 |           5000 |
| O102     | Mobile       | Electronic |         20000 |          30000 |
| O104     | Laptop       | Electronic |        220000 |          50000 |
+----------+--------------+------------+---------------+----------------+
4 rows in set (0.00 sec)
mysql> select * from products ORDER BY selling_price DESC;
+----------+--------------+------------+---------------+----------------+
| order_id | product_name | category   | selling_price | original_price |
+----------+--------------+------------+---------------+----------------+
| O104     | Laptop       | Electronic |        220000 |          50000 |
| O102     | Mobile       | Electronic |         20000 |          30000 |
| O101     | Chair        | Furniture  |          4000 |           5000 |
| O103     | Jeans        | Clothing   |          2000 |           2500 |
+----------+--------------+------------+---------------+----------------+
4 rows in set (0.00 sec)

mysql> select * from products ORDER BY product_name;
+----------+--------------+------------+---------------+----------------+
| order_id | product_name | category   | selling_price | original_price |
+----------+--------------+------------+---------------+----------------+
| O101     | Chair        | Furniture  |          4000 |           5000 |
| O103     | Jeans        | Clothing   |          2000 |           2500 |
| O104     | Laptop       | Electronic |        220000 |          50000 |
| O102     | Mobile       | Electronic |         20000 |          30000 |
+----------+--------------+------------+---------------+----------------+
4 rows in set (0.00 sec)

mysql> select * from products ORDER BY product_name desc;
+----------+--------------+------------+---------------+----------------+
| order_id | product_name | category   | selling_price | original_price |
+----------+--------------+------------+---------------+----------------+
| O102     | Mobile       | Electronic |         20000 |          30000 |
| O104     | Laptop       | Electronic |        220000 |          50000 |
| O103     | Jeans        | Clothing   |          2000 |           2500 |
| O101     | Chair        | Furniture  |          4000 |           5000 |
+----------+--------------+------------+---------------+----------------+
4 rows in set (0.00 sec)

mysql> select * from products ORDER BY order_id;
+----------+--------------+------------+---------------+----------------+
| order_id | product_name | category   | selling_price | original_price |
+----------+--------------+------------+---------------+----------------+
| O101     | Chair        | Furniture  |          4000 |           5000 |
| O102     | Mobile       | Electronic |         20000 |          30000 |
| O103     | Jeans        | Clothing   |          2000 |           2500 |
| O104     | Laptop       | Electronic |        220000 |          50000 |
+----------+--------------+------------+---------------+----------------+
4 rows in set (0.00 sec)

mysql> select*from employee;
+-------------+---------------+------------+--------+
| employee_id | employee_name | department | salary |
+-------------+---------------+------------+--------+
| E101        | Ansh          | IT         |  80000 |
| E102        | Aditya        | IT         |  50000 |
| E103        | Aarti         | HR         |  30000 |
| E104        | Simmi         | Finance    |  35000 |
+-------------+---------------+------------+--------+
4 rows in set (0.00 sec)

mysql> select department, count(*) AS Total_Salary from employee Group BY department;
+------------+--------------+
| department | Total_Salary |
+------------+--------------+
| IT         |            2 |
| HR         |            1 |
| Finance    |            1 |
+------------+--------------+
3 rows in set (0.01 sec)

mysql> select department,sum(salary) AS Total_S from employee GROUP BY Department;
+------------+---------+
| department | Total_S |
+------------+---------+
| IT         |  130000 |
| HR         |   30000 |
| Finance    |   35000 |
+------------+---------+
3 rows in set (0.00 sec)
mysql> select employee_name, Avg(salary) as Average_Salary from employee group by employee_name;
+---------------+----------------+
| employee_name | Average_Salary |
+---------------+----------------+
| Ansh          |     80000.0000 |
| Aditya        |     50000.0000 |
| Aarti         |     30000.0000 |
| Simmi         |     35000.0000 |
+---------------+----------------+
4 rows in set (0.01 sec)

mysql> select department, Avg(salary) as Average_Salary from employee group by department;
+------------+----------------+
| department | Average_Salary |
+------------+----------------+
| IT         |     65000.0000 |
| HR         |     30000.0000 |
| Finance    |     35000.0000 |
+------------+----------------+
3 rows in set (0.00 sec)

mysql> select department, Count(*) AS Total_sal from employee group by department having count(*)>1
    -> ;
+------------+-----------+
| department | Total_sal |
+------------+-----------+
| IT         |         2 |
+------------+-----------+
1 row in set (0.00 sec)

mysql> select department, Sum(salary) AS Total_sal from employee group by department having sum(salary)>8000;
+------------+-----------+
| department | Total_sal |
+------------+-----------+
| IT         |    130000 |
| HR         |     30000 |
| Finance    |     35000 |
+------------+-----------+
3 rows in set (0.00 sec)

mysql> select department, AVG(salary) AS Total_Avg from employee group by department having avg(salary)>8000;
+------------+------------+
| department | Total_Avg  |
+------------+------------+
| IT         | 65000.0000 |
| HR         | 30000.0000 |
| Finance    | 35000.0000 |
+------------+------------+
3 rows in set (0.01 sec)

mysql>
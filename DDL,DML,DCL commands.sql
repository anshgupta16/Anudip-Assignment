
mysql> show databases;
+---------------------------+
| Database                  |
+---------------------------+
| ecommerce                 |
| information_schema        |
| mysql                     |
| performance_schema        |
| sakila                    |
| student_management_system |
| studentmanagementsystem   |
| sys                       |
| world                     |
+---------------------------+
9 rows in set (0.05 sec)

mysql> use ecommerce
Database changed
mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| orders              |
| product             |
+---------------------+
3 rows in set (0.04 sec)

mysql> desc customer;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| customer_id | varchar(15)  | NO   | PRI | NULL    |       |
| Name        | varchar(10)  | NO   |     | NULL    |       |
| City        | varchar(10)  | NO   |     | NULL    |       |
| Email       | varchar(30)  | NO   |     | NULL    |       |
| Address     | varchar(100) | NO   |     | NULL    |       |
| Phone_No    | varchar(12)  | NO   |     | NULL    |       |
| Pin_code    | int          | NO   |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
7 rows in set (0.03 sec)
mysql> insert into customer(customer_id, Name, City, Email, Address, Phone_No, Pin_code)values('C101', 'Aditya', 'Mumbai', 'abc@gmail.com', 'Kalyan', '123456789', '421605');
Query OK, 1 row affected (0.03 sec)

mysql> insert into customer(customer_id, Name, City, Email, Address, Phone_No, Pin_code)values('C102', 'Mane', 'Mumbai', 'abc@gmail.com', 'Kalyan', '123456789', '421605');
Query OK, 1 row affected (0.03 sec)

mysql> desc customer
    -> ;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| customer_id | varchar(15)  | NO   | PRI | NULL    |       |
| Name        | varchar(10)  | NO   |     | NULL    |       |
| City        | varchar(10)  | NO   |     | NULL    |       |
| Email       | varchar(30)  | NO   |     | NULL    |       |
| Address     | varchar(100) | NO   |     | NULL    |       |
| Phone_No    | varchar(12)  | NO   |     | NULL    |       |
| Pin_code    | int          | NO   |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

mysql> select*from customer;
+-------------+--------+--------+---------------+---------+-----------+----------+
| customer_id | Name   | City   | Email         | Address | Phone_No  | Pin_code |
+-------------+--------+--------+---------------+---------+-----------+----------+
| C101        | Aditya | Mumbai | abc@gmail.com | Kalyan  | 123456789 |   421605 |
| C102        | Mane   | Mumbai | abc@gmail.com | Kalyan  | 123456789 |   421605 |
+-------------+--------+--------+---------------+---------+-----------+----------+
2 rows in set (0.01 sec)

mysql> select customer_id from customer;
+-------------+
| customer_id |
+-------------+
| C101        |
| C102        |
+-------------+
2 rows in set (0.00 sec)

mysql> select customer_id, Name from customer;
+-------------+--------+
| customer_id | Name   |
+-------------+--------+
| C101        | Aditya |
| C102        | Mane   |
+-------------+--------+
2 rows in set (0.00 sec)

mysql> insert into customer values('C104', 'Ansh', 'Mumbai', 'ab@gmail.com', 'kalyan west', '228183922', '122132');
Query OK, 1 row affected (0.02 sec)

mysql> select*from customer;
+-------------+--------+--------+---------------+-------------+-----------+----------+
| customer_id | Name   | City   | Email         | Address     | Phone_No  | Pin_code |
+-------------+--------+--------+---------------+-------------+-----------+----------+
| C101        | Aditya | Mumbai | abc@gmail.com | Kalyan      | 123456789 |   421605 |
| C102        | Mane   | Mumbai | abc@gmail.com | Kalyan      | 123456789 |   421605 |
| C104        | Ansh   | Mumbai | ab@gmail.com  | kalyan west | 228183922 |   122132 |
+-------------+--------+--------+---------------+-------------+-----------+----------+
3 rows in set (0.00 sec)

mysql> insert into customer values('C105', 'Mohit', 'Delhi', 'abcd@gmail.com', 'sector16', '28382292', '2121212'),('C106', 'Rohit', 'Amritsar', 'aa@gmail.com', 'sector15', '3498298232', 33123123);
Query OK, 2 rows affected (0.04 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select*from customer;
+-------------+--------+----------+----------------+-------------+------------+----------+
| customer_id | Name   | City     | Email          | Address     | Phone_No   | Pin_code |
+-------------+--------+----------+----------------+-------------+------------+----------+
| C101        | Aditya | Mumbai   | abc@gmail.com  | Kalyan      | 123456789  |   421605 |
| C102        | Mane   | Mumbai   | abc@gmail.com  | Kalyan      | 123456789  |   421605 |
| C104        | Ansh   | Mumbai   | ab@gmail.com   | kalyan west | 228183922  |   122132 |
| C105        | Mohit  | Delhi    | abcd@gmail.com | sector16    | 28382292   |  2121212 |
| C106        | Rohit  | Amritsar | aa@gmail.com   | sector15    | 3498298232 | 33123123 |
+-------------+--------+----------+----------------+-------------+------------+----------+
5 rows in set (0.00 sec)

mysql> alter table customer modify customer_id varchar(20) not null;
Query OK, 0 rows affected (0.08 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select*from customer;
+-------------+--------+----------+----------------+-------------+------------+----------+
| customer_id | Name   | City     | Email          | Address     | Phone_No   | Pin_code |
+-------------+--------+----------+----------------+-------------+------------+----------+
| C101        | Aditya | Mumbai   | abc@gmail.com  | Kalyan      | 123456789  |   421605 |
| C102        | Mane   | Mumbai   | abc@gmail.com  | Kalyan      | 123456789  |   421605 |
| C104        | Ansh   | Mumbai   | ab@gmail.com   | kalyan west | 228183922  |   122132 |
| C105        | Mohit  | Delhi    | abcd@gmail.com | sector16    | 28382292   |  2121212 |
| C106        | Rohit  | Amritsar | aa@gmail.com   | sector15    | 3498298232 | 33123123 |
+-------------+--------+----------+----------------+-------------+------------+----------+
5 rows in set (0.00 sec)

mysql> desc customer
    -> ;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| customer_id | varchar(20)  | NO   | PRI | NULL    |       |
| Name        | varchar(10)  | NO   |     | NULL    |       |
| City        | varchar(10)  | NO   |     | NULL    |       |
| Email       | varchar(30)  | NO   |     | NULL    |       |
| Address     | varchar(100) | NO   |     | NULL    |       |
| Phone_No    | varchar(12)  | NO   |     | NULL    |       |
| Pin_code    | int          | NO   |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

mysql> alter table customer add payment_mode varchar(10) not null;
Query OK, 0 rows affected (0.07 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table customer add state varchar(20) not null, add country varchar(10) not null;
Query OK, 0 rows affected (0.08 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select*from customers;
ERROR 1146 (42S02): Table 'ecommerce.customers' doesn't exist
mysql> select*from customer;
+-------------+--------+----------+----------------+-------------+------------+----------+--------------+-------+---------+
| customer_id | Name   | City     | Email          | Address     | Phone_No   | Pin_code | payment_mode | state | country |
+-------------+--------+----------+----------------+-------------+------------+----------+--------------+-------+---------+
| C101        | Aditya | Mumbai   | abc@gmail.com  | Kalyan      | 123456789  |   421605 |              |       |         |
| C102        | Mane   | Mumbai   | abc@gmail.com  | Kalyan      | 123456789  |   421605 |              |       |         |
| C104        | Ansh   | Mumbai   | ab@gmail.com   | kalyan west | 228183922  |   122132 |              |       |         |
| C105        | Mohit  | Delhi    | abcd@gmail.com | sector16    | 28382292   |  2121212 |              |       |         |
| C106        | Rohit  | Amritsar | aa@gmail.com   | sector15    | 3498298232 | 33123123 |              |       |         |
+-------------+--------+----------+----------------+-------------+------------+----------+--------------+-------+---------+
5 rows in set (0.00 sec)

mysql> desc customer;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| customer_id  | varchar(20)  | NO   | PRI | NULL    |       |
| Name         | varchar(10)  | NO   |     | NULL    |       |
| City         | varchar(10)  | NO   |     | NULL    |       |
| Email        | varchar(30)  | NO   |     | NULL    |       |
| Address      | varchar(100) | NO   |     | NULL    |       |
| Phone_No     | varchar(12)  | NO   |     | NULL    |       |
| Pin_code     | int          | NO   |     | NULL    |       |
| payment_mode | varchar(10)  | NO   |     | NULL    |       |
| state        | varchar(20)  | NO   |     | NULL    |       |
| country      | varchar(10)  | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
10 rows in set (0.00 sec)

mysql> alter table customer change payment_mode payment varchar(10) not null;
Query OK, 0 rows affected (0.07 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> create table demo(id varchar(10) not null primary key, name varchar(20) not null);
Query OK, 0 rows affected (0.07 sec)

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(10) | NO   | PRI | NULL    |       |
| name  | varchar(20) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> alter table demo drop primary key;
Query OK, 0 rows affected (0.26 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(10) | NO   |     | NULL    |       |
| name  | varchar(20) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> alter table demo add primary key(id);
Query OK, 0 rows affected (1.36 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(10) | NO   | PRI | NULL    |       |
| name  | varchar(20) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> select*from customer;
+-------------+--------+----------+----------------+-------------+------------+----------+---------+-------+---------+
| customer_id | Name   | City     | Email          | Address     | Phone_No   | Pin_code | payment | state | country |
+-------------+--------+----------+----------------+-------------+------------+----------+---------+-------+---------+
| C101        | Aditya | Mumbai   | abc@gmail.com  | Kalyan      | 123456789  |   421605 |         |       |         |
| C102        | Mane   | Mumbai   | abc@gmail.com  | Kalyan      | 123456789  |   421605 |         |       |         |
| C104        | Ansh   | Mumbai   | ab@gmail.com   | kalyan west | 228183922  |   122132 |         |       |         |
| C105        | Mohit  | Delhi    | abcd@gmail.com | sector16    | 28382292   |  2121212 |         |       |         |
| C106        | Rohit  | Amritsar | aa@gmail.com   | sector15    | 3498298232 | 33123123 |         |       |         |
+-------------+--------+----------+----------------+-------------+------------+----------+---------+-------+---------+
5 rows in set (0.00 sec)

mysql> delete from customer where customer_id='C102';
Query OK, 1 row affected (0.01 sec)

mysql> select*from customer;
+-------------+--------+----------+----------------+-------------+------------+----------+---------+-------+---------+
| customer_id | Name   | City     | Email          | Address     | Phone_No   | Pin_code | payment | state | country |
+-------------+--------+----------+----------------+-------------+------------+----------+---------+-------+---------+
| C101        | Aditya | Mumbai   | abc@gmail.com  | Kalyan      | 123456789  |   421605 |         |       |         |
| C104        | Ansh   | Mumbai   | ab@gmail.com   | kalyan west | 228183922  |   122132 |         |       |         |
| C105        | Mohit  | Delhi    | abcd@gmail.com | sector16    | 28382292   |  2121212 |         |       |         |
| C106        | Rohit  | Amritsar | aa@gmail.com   | sector15    | 3498298232 | 33123123 |         |       |         |
+-------------+--------+----------+----------------+-------------+------------+----------+---------+-------+---------+
4 rows in set (0.00 sec)

mysql> delete from customer;
Query OK, 4 rows affected (0.01 sec)

mysql> select*from customer;
Empty set (0.00 sec)

mysql> truncate table customer;
ERROR 1701 (42000): Cannot truncate a table referenced in a foreign key constraint (`ecommerce`.`orders`, CONSTRAINT `orders_ibfk_1`)
mysql> truncate table demo;
Query OK, 0 rows affected (0.07 sec)
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
9 rows in set (0.01 sec)

mysql> create database college;
Query OK, 1 row affected (0.04 sec)

mysql> show databases;
+---------------------------+
| Database                  |
+---------------------------+
| college                   |
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
10 rows in set (0.00 sec)

mysql> use college;
Database changed
mysql> create table students(roll_no varchar(10) not null primary key, name varchar(10) not null, stream varchar(10), phone_no int not null);
Query OK, 0 rows affected (0.07 sec)

mysql> show tables;
+-------------------+
| Tables_in_college |
+-------------------+
| students          |
+-------------------+
1 row in set (0.00 sec)

mysql> desc students;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| roll_no  | varchar(10) | NO   | PRI | NULL    |       |
| name     | varchar(10) | NO   |     | NULL    |       |
| stream   | varchar(10) | YES  |     | NULL    |       |
| phone_no | int         | NO   |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> insert into students values('101','Ansh','bscit',313113);
Query OK, 1 row affected (0.01 sec)

mysql> insert into students values('102','Aditya','BA','34424242');
Query OK, 1 row affected (0.01 sec)

mysql> insert into students values('103','Aish','bsc cs','354325325');
Query OK, 1 row affected (0.01 sec)

mysql> insert into students values('103','Aish','bsc cs','354325325'),('104','Sakshi','Bscit','2424231');
Records: 2  Duplicates: 0  Warnings: 0

mysql> select*from students;
+---------+--------+--------+-----------+
| roll_no | name   | stream | phone_no  |
+---------+--------+--------+-----------+
| 101     | Ansh   | bscit  |    313113 |
| 102     | Aditya | BA     |  34424242 |
| 103     | Aish   | bsc cs | 354325325 |
| 104     | Aish   | bsc cs | 354325325 |
| 105     | Sakshi | Bscit  |   2424231 |
+---------+--------+--------+-----------+
5 rows in set (0.00 sec)

mysql> update students set stream='ba' where roll_no=102;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select*from students;
+---------+--------+--------+-----------+
| roll_no | name   | stream | phone_no  |
+---------+--------+--------+-----------+
| 101     | Ansh   | bscit  |    313113 |
| 102     | Aditya | ba     |  34424242 |
| 103     | Aish   | bsc cs | 354325325 |
| 104     | Aish   | bsc cs | 354325325 |
| 105     | Sakshi | Bscit  |   2424231 |
+---------+--------+--------+-----------+
5 rows in set (0.00 sec)

mysql> select*from students where name='%sh';
Empty set (0.01 sec)

mysql> select*from students where name='sh%';
Empty set (0.00 sec)

mysql> select*from students where name like 'sh%';
Empty set (0.00 sec)

mysql> select*from students where name like '%sh';
+---------+------+--------+-----------+
| roll_no | name | stream | phone_no  |
+---------+------+--------+-----------+
| 101     | Ansh | bscit  |    313113 |
| 103     | Aish | bsc cs | 354325325 |
| 104     | Aish | bsc cs | 354325325 |
+---------+------+--------+-----------+
3 rows in set (0.00 sec)

mysql> select*from students where name like 'sa&';
Empty set (0.00 sec)

mysql> select*from students where name like 'Sa&';
Empty set (0.00 sec)

mysql> select*from students where name like 'Sa%';
+---------+--------+--------+----------+
| roll_no | name   | stream | phone_no |
+---------+--------+--------+----------+
| 105     | Sakshi | Bscit  |  2424231 |
+---------+--------+--------+----------+
1 row in set (0.00 sec)

mysql> select*from students where name like '%ks%';
+---------+--------+--------+----------+
| roll_no | name   | stream | phone_no |
+---------+--------+--------+----------+
| 105     | Sakshi | Bscit  |  2424231 |
+---------+--------+--------+----------+
1 row in set (0.00 sec)

mysql> select*from students where name like 'A___';
+---------+------+--------+-----------+
| roll_no | name | stream | phone_no  |
+---------+------+--------+-----------+
| 101     | Ansh | bscit  |    313113 |
| 103     | Aish | bsc cs | 354325325 |
| 104     | Aish | bsc cs | 354325325 |
+---------+------+--------+-----------+
3 rows in set (0.00 sec)

mysql> select*from students limit=2;
mysql> select*from students limit 2;
+---------+--------+--------+----------+
| roll_no | name   | stream | phone_no |
+---------+--------+--------+----------+
| 101     | Ansh   | bscit  |   313113 |
| 102     | Aditya | ba     | 34424242 |
+---------+--------+--------+----------+
2 rows in set (0.00 sec)

mysql> select distinct students from stream;
ERROR 1146 (42S02): Table 'college.stream' doesn't exist
mysql> select distinct stream from students;
+--------+
| stream |
+--------+
| bscit  |
| ba     |
| bsc cs |
+--------+
3 rows in set (0.01 sec)

mysql> select*from students where roll_no between '101' and '104';
+---------+--------+--------+-----------+
| roll_no | name   | stream | phone_no  |
+---------+--------+--------+-----------+
| 101     | Ansh   | bscit  |    313113 |
| 102     | Aditya | ba     |  34424242 |
| 103     | Aish   | bsc cs | 354325325 |
| 104     | Aish   | bsc cs | 354325325 |
+---------+--------+--------+-----------+
4 rows in set (0.00 sec)

mysql> select*from students where roll_no not between '102' and '104';
+---------+--------+--------+----------+
| roll_no | name   | stream | phone_no |
+---------+--------+--------+----------+
| 101     | Ansh   | bscit  |   313113 |
| 105     | Sakshi | Bscit  |  2424231 |
+---------+--------+--------+----------+
2 rows in set (0.00 sec)

mysql> select*from students where roll_no in ('101'),('103'),('105');
mysql> select*from students where roll_no in ('101','103','105');
+---------+--------+--------+-----------+
| roll_no | name   | stream | phone_no  |
+---------+--------+--------+-----------+
| 101     | Ansh   | bscit  |    313113 |
| 103     | Aish   | bsc cs | 354325325 |
| 105     | Sakshi | Bscit  |   2424231 |
+---------+--------+--------+-----------+
3 rows in set (0.00 sec)

mysql> select*from students where roll_no not in '103';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''103'' at line 1
mysql> select*from students where roll_no not in ('103');
+---------+--------+--------+-----------+
| roll_no | name   | stream | phone_no  |
+---------+--------+--------+-----------+
| 101     | Ansh   | bscit  |    313113 |
| 102     | Aditya | ba     |  34424242 |
| 104     | Aish   | bsc cs | 354325325 |
| 105     | Sakshi | Bscit  |   2424231 |
+---------+--------+--------+-----------+
4 rows in set (0.00 sec)

mysql> select*from students where roll_no name is not null;
mysql> select*from students where name is null;
Empty set (0.01 sec)

mysql> select*from students where name is not null;
+---------+--------+--------+-----------+
| roll_no | name   | stream | phone_no  |
+---------+--------+--------+-----------+
| 101     | Ansh   | bscit  |    313113 |
| 102     | Aditya | ba     |  34424242 |
| 103     | Aish   | bsc cs | 354325325 |
| 104     | Aish   | bsc cs | 354325325 |
| 105     | Sakshi | Bscit  |   2424231 |
+---------+--------+--------+-----------+
5 rows in set (0.00 sec)

mysql>
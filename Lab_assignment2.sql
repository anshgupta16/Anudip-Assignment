/*
Question:
Lab 1: Database Schema: Consider a simple database with one tables: BankAccount BankAccount
Table: ● Columns: account_id (Primary Key), account_holder_name, account_balance
Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table
Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table. 
Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000.
Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101. 
Submission: Create an SQL script file containing your solutions for all tasks (queries). Name the file "lab_assignmen2.sql" Provide comments above each query to indicate the task number and the query's purpose 
*/

--Answer

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
11 rows in set (0.01 sec)

mysql> use orientbank;
Database changed

-- Table Creation
mysql> create table BankAccount(account_id varchar(10) primary key not null, account_holder_name varchar(15) not null, account_balance int not null);
Query OK, 0 rows affected (0.07 sec)

mysql> show tables;
+----------------------+
| Tables_in_orientbank |
+----------------------+
| bankaccount          |
+----------------------+
1 row in set (0.02 sec)

mysql> desc bankaccount;
+---------------------+-------------+------+-----+---------+-------+
| Field               | Type        | Null | Key | Default | Extra |
+---------------------+-------------+------+-----+---------+-------+
| account_id          | varchar(10) | NO   | PRI | NULL    |       |
| account_holder_name | varchar(15) | NO   |     | NULL    |       |
| account_balance     | int         | NO   |     | NULL    |       |
+---------------------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

--Task1: Inserting Data
mysql> insert into bankaccount values('101','Ansh','50000');
Query OK, 1 row affected (0.01 sec)

mysql> insert into bankaccount values('102','Aditya','30000');
Query OK, 1 row affected (0.01 sec)

mysql> insert into bankaccount values('103','Shaina','20000');
Query OK, 1 row affected (0.01 sec)

mysql> insert into bankaccount values('104','Anamika','40000');
Query OK, 1 row affected (0.01 sec)

--Display all data
mysql> select*from bankaccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
| 101        | Ansh                |           50000 |
| 102        | Aditya              |           30000 |
| 103        | Shaina              |           20000 |
| 104        | Anamika             |           40000 |
+------------+---------------------+-----------------+
4 rows in set (0.00 sec)

--Task 2: Retrieve the account_holder_name and account_balance from table bankaccount
mysql> select account_holder_name, account_balance from bankaccount;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Ansh                |           50000 |
| Aditya              |           30000 |
| Shaina              |           20000 |
| Anamika             |           40000 |
+---------------------+-----------------+
4 rows in set (0.00 sec)

--Task 3: Retrieve the account_holder_name and account_balance where account_balance is more than 30000.
mysql> select account_holder_name, account_balance from bankaccount where account_balance>30000;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Ansh                |           50000 |
| Anamika             |           40000 |
+---------------------+-----------------+
2 rows in set (0.00 sec)


--Task 4: Update the account_balance where account_id is '101'
mysql> update bankaccount set account_balance='80000' where account_id='101';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

--Final
mysql> select*from bankaccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
| 101        | Ansh                |           80000 |
| 102        | Aditya              |           30000 |
| 103        | Shaina              |           20000 |
| 104        | Anamika             |           40000 |
+------------+---------------------+-----------------+
4 rows in set (0.00 sec)
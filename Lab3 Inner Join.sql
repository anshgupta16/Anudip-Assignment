/*Question: 	
Create database Studentmanagementsystem contain  "Student" table with the following a columns:StudentId,FirstName,lastName
and "Course" table with the following a columns: CourseId,CourseName 
and Enrollment table with the following a columns:EnrollmentID,StudentID(Foreign key),CourseID(Foreign Key).
You want to use inner join to generate a list of all possible student-course combinations.*/

--Answer

-- Create Database
mysql> create database Studentmanagementsystem;
Query OK, 1 row affected (0.01 sec)

-- Use Database
mysql> use Studentmanagementsystem;
Database changed

-- Create Student Table
mysql> CREATE TABLE Student (StudentId INT PRIMARY KEY AUTO_INCREMENT, FirstName VARCHAR(30) NOT NULL, LastName VARCHAR(30) NOT NULL);
Query OK, 0 rows affected (0.07 sec)

-- Create Course Table
mysql> Create Table Course(Courseid varchar(10) primary key not null, CourseName varchar(30) not null)
    -> ;
Query OK, 0 rows affected (0.04 sec)

-- Create Enrollment Table
mysql> create table enrollment(Enrollment_id int primary key not null, StudentId INT, CourseId varchar(10), foreign key(StudentId) references Student(StudentId), foreign key(Courseid) references Course (Courseid));
Query OK, 0 rows affected (0.09 sec)

mysql> show tables;
+-----------------------------------+
| Tables_in_studentmanagementsystem |
+-----------------------------------+
| course                            |
| enrollment                        |
| student                           |
+-----------------------------------+
3 rows in set (0.02 sec)

mysql> desc student;
+-----------+-------------+------+-----+---------+----------------+
| Field     | Type        | Null | Key | Default | Extra          |
+-----------+-------------+------+-----+---------+----------------+
| StudentId | int         | NO   | PRI | NULL    | auto_increment |
| FirstName | varchar(30) | NO   |     | NULL    |                |
| LastName  | varchar(30) | NO   |     | NULL    |                |
+-----------+-------------+------+-----+---------+----------------+
3 rows in set (0.02 sec)

-- Insert Data
mysql> insert into student values('1', 'Ansh', 'Gupta'),('2','Shreya','Singh')
    -> ;
Query OK, 2 rows affected (0.04 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> desc course;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| Courseid   | varchar(10) | NO   | PRI | NULL    |       |
| CourseName | varchar(30) | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

mysql> insert into course values('101','Data Analyst'),('102','Web Development');
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> desc enrollment;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| Enrollment_id | int         | NO   | PRI | NULL    |       |
| StudentId     | int         | YES  | MUL | NULL    |       |
| CourseId      | varchar(10) | YES  | MUL | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> insert into enrollment values('1','1','101'),('2','1','102'),('3','2','101')
    -> ;
Query OK, 3 rows affected (0.02 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select*from student;
+-----------+-----------+----------+
| StudentId | FirstName | LastName |
+-----------+-----------+----------+
|         1 | Ansh      | Gupta    |
|         2 | Shreya    | Singh    |
+-----------+-----------+----------+
2 rows in set (0.00 sec)

mysql> select*from course;
+----------+-----------------+
| Courseid | CourseName      |
+----------+-----------------+
| 101      | Data Analyst    |
| 102      | Web Development |
+----------+-----------------+
2 rows in set (0.00 sec)

mysql> select*from enrollment;
+---------------+-----------+----------+
| Enrollment_id | StudentId | CourseId |
+---------------+-----------+----------+
|             1 |         1 | 101      |
|             2 |         1 | 102      |
|             3 |         2 | 101      |
+---------------+-----------+----------+
3 rows in set (0.00 sec)

-- INNER JOIN Query
mysql> SELECT Student.StudentId, Student.FirstName, Student.LastName, Course.CourseId, Course.CourseName FROM Enrollment INNER JOIN Student ON Enrollment.StudentID = Student.StudentId INNER JOIN Course ON Enrollment.CourseID = Course.CourseId;
+-----------+-----------+----------+----------+-----------------+
| StudentId | FirstName | LastName | CourseId | CourseName      |
+-----------+-----------+----------+----------+-----------------+
|         2 | Shreya    | Singh    | 101      | Data Analyst    |
|         1 | Ansh      | Gupta    | 101      | Data Analyst    |
|         1 | Ansh      | Gupta    | 102      | Web Development |
+-----------+-----------+----------+----------+-----------------+
3 rows in set (0.00 sec)
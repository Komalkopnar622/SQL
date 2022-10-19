create database komaldb;
use komaldb;
//Create table employee there is three Fields
create table employee (id int primary key, name varchar(20),salary double);

//Describe table
mysql> desc employee;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| id     | int         | NO   | PRI | NULL    |       |
| name   | varchar(20) | YES  |     | NULL    |       |
| salary | double      | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
3 rows in set (0.04 sec)

// Insert record in employee table.
    Insert into employee values(101,'komal',30000);
    Insert into employee values(102,'Ram',40000);
    Insert into employee values(102,'Rakesh',40000);

 // How to see all record from table
 I have Employee table I see the all record from Employee table
        select * from employee;
        +-----+--------+--------+
        | id  | name   | salary |
        +-----+--------+--------+
        | 101 | komal  |  30000 |
        | 102 | Ram    |  40000 |
        | 103 | Rakesh |  40000 |
        +-----+--------+--------+
        3 rows in set (0.00 sec)   
        
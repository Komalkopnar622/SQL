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

    Q1)1. Create the following table according to the following information.
	i)Table name- DEPOSIT
		FIELD NAME      DATA TYPE    SIZE
		ACTNO            VARCHAR             25
		CNAME           VARCHAR              20
		BNAME       VARCHAR                 20
		AMOUNT  INT
		ADATE       DATE
	Ans:
		 create table DEPOSIT(
  			   CNAME varchar(20),
    			   BNAME varchar(20),
   			   AMOUNT int,
  			   ADATE DATE
   			  );
	ii)Table name-BRANCH
		FIELD NAME  DATA TYPE     SIZE
		BNAME            VARCHAR        20
		CITY                 VARCHAR         20
	Ans:
		create  Table BRANCH(
			BNAME varchar(20),
			CITY varchar(20)
		);
	iii)Table name-CUSTOMER
                                            FIELD NAME DATA TYPE SIZE
		CNAME VARCHAR2 20
		CITY VARCHAR2 20
	Ans:
	create table CUSTOMER(CNAME varchar(20),CITY varchar(20));
	iv)Table name-BORROW
		FIELD NAME DATA TYPE SIZE
		LOANNO VARCHAR 5
		CNAME VARCHAR 20
		BNAME VARCHAR 20
		AMOUNT INT

	Ans:
	    create table BORROW(LOANNO varchar(5),CNAME varchar(20),BNAME varchar(20),AMOUNT int);


2) Describe the tables which are already created.
Ans:

desc DEPOSIt
    -> ;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| CNAME  | varchar(20) | YES  |     | NULL    |       |
| BNAME  | varchar(20) | YES  |     | NULL    |       |
| AMOUNT | int(11)     | YES  |     | NULL    |       |
| ADATE  | date        | YES  |     | NULL    |       |
| ACTNO  | varchar(20) | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
5 rows in set (0.08 sec)

 desc BRANCH
    -> ;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| BNAME | varchar(20) | YES  |     | NULL    |       |
| CITY  | varchar(20) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.03 sec)

 desc BRANCH
    -> ;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| BNAME | varchar(20) | YES  |     | NULL    |       |
| CITY  | varchar(20) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.03 sec)

 desc Borrow;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| LOANNO | varchar(5)  | YES  |     | NULL    |       |
| CNAME  | varchar(20) | YES  |     | NULL    |       |
| BNAME  | varchar(20) | YES  |     | NULL    |       |
| AMOUNT | int(11)     | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
4 rows in set (0.03 sec)

desc customer
    -> ;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| CNAME | varchar(20) | YES  |     | NULL    |       |
| CITY  | varchar(20) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.08 sec)
Q3)   Insert the data as for the following
  i) DEPOSIT:
	insert into deposit values('ANIL','VRCE',1000, '1995-03-12',101);
	insert into deposit values('sunil','MGROAD',5000, '1995-01-04',102);
	 insert into deposit values('RAHUL','KOROBHE',4500, '1996-04-23',103);
	insert into deposit values('MADURI','CHANDHNI',3500, '1995-MAY-23',104);
	insert into deposit values('ROHINI','LOHGAD',7000, '1995-03-24',105);
ii) BRANCH
	insert  into  branch values('VRCE','NAGPUR');
	insert  into  branch values('KOROBHE','DELHI');
	insert  into  branch values('CHANDHNI','DELHI');
	insert  into  branch values('MGROAD','BANGOLORE');
	 insert  into  branch values('LOHGAD','PUNE');
iii)CUSTOMER
	insert  into  CUSToMeR values('ANIL','COLKATA');
	insert  into  CUSTOMER values('SUNIL','DELHI');
	insert  into  CUSTOMER values('RAHUL','BORODA');
	insert  into  CUSTOMER values('MADHURI','PUNE');
	 insert  into  CUSTOMER values('ROHINI','NAGPUR');
iv)BORROW
	 insert  into  BORROW values(201,'ANIL','VRCE',1000);
	insert  into  BORROW values(202,'RAHUL','KHOROBHE',5000);
	insert  into  BORROW values(203,'SUNIL','MGROAD',3000);
	 insert  into  BORROW values(204,'MADHURI','CHADHANI',4500);
	 insert  into  BORROW values(205,'ROHINI','LOHGAD',7000);
Q4.Retrieve all the records from the table BORROW where amount in between
2000 and 3000
.
ANS:-
	select * from BORROW where amount between 2000 and 3000;
+--------+-------+--------+--------+
| LOANNO | CNAME | BNAME  | AMOUNT |
+--------+-------+--------+--------+
| 203    | SUNIL | MGROAD |   3000 |
+--------+-------+--------+--------+
Q5)  Retrieve the details from the table DEPOSIT
	select * from deposit
    -> ;
+--------+----------+--------+------------+-------+
| CNAME  | BNAME    | AMOUNT | ADATE      | ACTNO |
+--------+----------+--------+------------+-------+
| ANIL   | VRCE     |   1000 | 1995-03-12 | 101   |
| sunil  | MGROAD   |   5000 | 1995-01-04 | 102   |
| RAHUL  | KOROBHE  |   4500 | 1996-04-23 | 103   |
| MADURI | CHANDHNI |   3500 | 1995-05-23 | 104   |
| ROHINI | LOHGAD   |   7000 | 1995-03-24 | 105   |
+--------+----------+--------+------------+-------+
5 rows in set (0.00 sec)

Q6)Retrieve the customer name, account no of DEPOSIT.
ANS:
	select CNAME,ACTNO from Deposit;
   
+--------+-------+
| CNAME  | ACTNO |
+--------+-------+
| ANIL   | 101   |
| sunil  | 102   |
| RAHUL  | 103   |
| MADURI | 104   |
| ROHINI | 105   |
+--------+-------+
5 rows in set (0.00 sec)
Q7)Retrieve the name of the customer living in NAGPUR
Ans:
	 select CNAME from customer where  CITY='NAGPUR';
+--------+
| CNAME  |
+--------+
| ROHINI |
+--------+
1 row in set (0.03 sec)

Q8)  Retrieve the name of the customers who opened account after 17-NOV-95.
Ans:
	select CNAME from deposit where ADATE > '1995-17-09';
+-------+
| CNAME |
+-------+
| RAHUL |

Q9) Retrieve the account number and amount of the customer having account opened between
01-12-95 and 01-06.96.
Ans:-
select ACTNO,AMOUNT from deposit where Adate between '1995-01-12' and '1996-06-01';
+-------+--------+
| ACTNO | AMOUNT |
+-------+--------+
| 101   |   1000 |
| 103   |   4500 |
| 104   |   3500 |
| 105   |   7000 |

Q10)  Retrieve all the records from the table DEPOSIT where CNAME begins
with C
Ans:-
	select * from deposit where cname like'C%';
Empty set (0.03 sec)
 select * from deposit where cname like'S%';
+-------+--------+--------+------------+-------+
| CNAME | BNAME  | AMOUNT | ADATE      | ACTNO |
+-------+--------+--------+------------+-------+
| sunil | MGROAD |   5000 | 1995-01-04 | 102   |
+-------+--------+--------+------------+-------+
1 row in set (0.00 sec)

Q11)  Retrieve all the records from the table BORROW where 2nd character of
CNAME is U.
Ans:-
 select * from  borrow  where cname like '_U%';
+--------+-------+--------+--------+
| LOANNO | CNAME | BNAME  | AMOUNT |
+--------+-------+--------+--------+
| 203    | SUNIL | MGROAD |   3000 |
+--------+-------+--------+--------+
1 row in set (0.00 sec)

12. Retrieve all the records from the table DEPOSIT where branch name is
CHANDNI or MGROAD.

Ans:
select * from deposit where bname In('CHADHaNI','MGROAd');
+-------+--------+--------+------------+-------+
| CNAME | BNAME  | AMOUNT | ADATE      | ACTNO |
+-------+--------+--------+------------+-------+
| sunil | MGROAD |   5000 | 1995-01-04 | 102   |
+-------+--------+--------+------------+-------+
1 row in set (0.03 sec)

Q13)
Retrieve all the records from the table DEPOSIT where branch name is not
CHANDNI or MGROAD.

Ans:
select * from deposit where NOt(bname In('CHADHaNI','MGROAd'));
+--------+----------+--------+------------+-------+
| CNAME  | BNAME    | AMOUNT | ADATE      | ACTNO |
+--------+----------+--------+------------+-------+
| ANIL   | VRCE     |   1000 | 1995-03-12 | 101   |
| RAHUL  | KOROBHE  |   4500 | 1996-04-23 | 103   |
| MADURI | CHANDHNI |   3500 | 1995-05-23 | 104   |
| ROHINI | LOHGAD   |   7000 | 1995-03-24 | 105   |
+--------+----------+--------+------------+-------+
4 rows in set (0.00 sec)
Q14) Retrieve all the records from DEPOSIT where amount > 1000 and arrange the customer name in
ascending order
Ans:


Q15). Retrieve all the records from DEPOSIT where amount > 1000 and arrange the customer name in
descending order.
Ans:


Q16)Retrieve customer details from BORROW table where the third character of
the customer name is either �A� or �D

	

Ans:    

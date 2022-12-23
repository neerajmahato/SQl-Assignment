-- -- create a table salespeople

create table salespeople ( 
snum int(4) Primary key,
sname varchar(10) Unique, 
city varchar(10), 
comm int(10) );

-- -- insert some values
INSERT INTO salespeople VALUES (1001 ,'Peel', 'London',12);
INSERT INTO salespeople VALUES (1002 , 'Serres ','Sanjose', 13);
INSERT INTO salespeople VALUES (1004 ,'Motika ','London' ,11);
INSERT INTO salespeople VALUES (1007 ,'Rifkin', 'Barcelona' ,15);
INSERT INTO salespeople VALUES (1003 ,'Axelrod', 'Newyork' ,10);

-- SELECT snum,sname,city,comm FROM salespeople ;


-- -- create a table Customers

CREATE TABLE customers ( 
cnum int(4), 
cname varchar(10),
city varchar(10), 
snum int(4) );

INSERT INTO customers VALUES (2001 , 'Hoffman', 'London' ,1001);
INSERT INTO customers VALUES (2002 , 'Giovanni', 'Rome' ,1003);
INSERT INTO customers VALUES (2003 , 'Liu', 'Sanjose' ,1002);
INSERT INTO customers VALUES (2004 , 'Grass' ,'Berlin', 1002);
INSERT INTO customers VALUES (2006 ,'Clemens' ,'London', 1001);
INSERT INTO customers VALUES (2008 ,'Cisneros' ,'Sanjose', 1007);
INSERT INTO customers VALUES (2007 ,'Pereira' ,'Rome' ,1004);

-- SELECT * FROM  customers ;

-- create a TABLE orders

CREATE TABLE orders ( 
onum int,
amt double, 
odate date, 
cnum int, 
snum int);

INSERT INTO orders VALUES (3001 ,18.69, '1990-10-03', 2008, 1007);
INSERT INTO orders VALUES (3003 ,767.19, '1990-10-03', 2001, 1001);
INSERT INTO orders VALUES (3002 ,1900.10 ,'1990-10-03' ,2007, 1004);
INSERT INTO orders VALUES (3005 , 5160.45, '1990-10-03', 2003, 1002);
INSERT INTO orders VALUES (3006  ,1098.16, '1990-10-03' ,2008, 1007);
INSERT INTO orders VALUES (3009 ,1713.23, '1990-10-04', 2002, 1003);
INSERT INTO orders VALUES (3007  ,75.75 ,'1990-10-04' ,2004 ,1002);
INSERT INTO orders VALUES (3008  ,4273.00, '1990-10-05' ,2006, 1001);
INSERT INTO orders VALUES (3010  ,1309.95, '1990-10-06', 2004, 1002);
INSERT INTO orders VALUES (3011  ,9891.88, '1990-10-06', 2006, 1001);

-- SELECT * FROM  orders ;

-- On the basis of above tables perform given below questions

--  Count the number of Salesperson whose name begin with ‘a’/’A’.
  SELECT Count(*)sname FROM salespeople WHERE sname LIKE 'a%' or sname LIKE 'A%' ;

--  Display all the Salesperson whose all orders worth is more than Rs. 2000.

   select * from orders WHERE amt > 2000;  
   
--   Count the number of Salesperson belonging to Newyork.
     SELECT Count(*) FROM salespeople WHERE city = 'Newyork' ;
 
--  Display the number of Salespeople belonging to London and belonging to Paris.

   SELECT Count(sname) from salespeople WHERE city='London' and city='Paris';
   
--   Display the number of orders taken by each Salesperson and their date of orders.

SELECT Count(*),odate,snum from orders group by odate,snum;

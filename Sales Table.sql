--create tables(ordertable and customertable)  
--return the customer's fullname and highest order amount

create table OrderTable
			 (ORDERID int, CUSTOMERID int, 
				ORDERDATE date, TOTALAMOUNT int)

insert into OrderTable values 
(101, 1, '2023-1-15', 500), (102, 2, '2023-02-20', 900), 
(103, 1, '2023-02-25', 300), (104, 3, '2023-03-10', 700), 
(101, 2, '2023-04-5', 600)

create table CustomerTable
			 (CUSTOMERID int, FIRSTNAME varchar(50), 
			 LASTNAME varchar(50)
			 )

insert into CustomerTable values
(1, 'Alice', 'Johnson'), (2, 'Bob', 'Smith'), 
(2, 'Carol', 'Brown'), (4, 'David', 'Lee'),
(5, 'Eve', 'Davis')

update customertable
set customerid = 3
where lastname = 'Brown'

select CONCAT(firstname,' ', lastname) as Fullname,
max(totalamount) as TotalOrderAmount 
from CustomerTable c 
join OrderTable o
on c.CUSTOMERID=o.CUSTOMERID
group by FIRSTNAME, LASTNAME
order by TotalOrderAmount desc
select * from payments
where customerNumber in (select customerNumber
from customers where creditLimit > 2500);

insert into payments
select * from customers 
where customerNumber in (select customerNumber from customers)

update orderdetails
set priceEach = priceEach * 0.25
where orderNumber in (select orderNumber from orders
	where orderNumber < 10200);
	
delete from orderdetails
where orderNumber in (select orderNumber from orders
	where orderNumber < 10100);
	
select * from products 
where buyPrice = (select max(buyprice) from products)

select contactLastName, contactFirstName
from customers 
where country = 'USA'
union
select lastName, firstName
from employees
where officeCode = '1'
order by 'lastName'

select contactLastName, contactFirstName
from customers 
where country = 'USA'
intersect 
select lastName, firstName
from employees
where officeCode = '1'
order by 'contactLastName,contactFirstName'


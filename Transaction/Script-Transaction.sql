insert into employees
values
(2001,"Shaw","Luke","x260","lukeshaw@classicmodel.com","7",1002,"Football Player"),
(2002,"Shanco","Jadon","x270","jadonsancho@classicmodel.com","7",1002,"Football Player"),
(2003,"Fernandes","Bruno","x280","brunofernandes@classicmodel.com","7",1002,"Football Player"),
(2004,"Garnacho","Alejandro","x290","garnacho@classicmodel.com","7",1002,"Football Player");
commit;

select * from employees 
where jobTitle = 'Football Player' 

update employees 
set firstName = "Casemiro" where employeeNumber = 2004;

select * from employees
where firstName = "Casemiro";

insert into employees
values
(2005,"Ronaldo","Christiano","x260","christianoronaldo@classicmodel.com","7",1002,"Football Player");
rollback;
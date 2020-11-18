select * From employee;
select ename from employee;
select distinct job, manager from employee;

select ename, eno from employee;
select eno, ename from employee;

select ename, salary from employee;

select ename, salary, salary*12 from employee;
select ename, salary/100 from employee;
select ename, salary + 100 from employee;
select ename, salary - 100 from employee;
select ename, salary, salary*12 AS 연봉 from employee;
select ename, salary, salary*12 연봉 from employee;
--한 줄 주석입니다.
/*여러 줄
  주석입니다.*/
  
select * from employee;
select ename, salary, commission, salary + commission from employee;
select ename, salary, commission, NVL(commission, 0) from employee;
select ename, salary + NVL(commission, 0) 꺅이달의월급 from employee;

--연습문제 p32-36
select * from employee;

select eno, ename from employee;

select ename, salary, salary*12 from employee;

select ename, salary, job, dno, nvl(commission, 0), salary * 12, salary*12+nvl(commission, 0)
from employee;

select ename, salary*12+nvl(commission, 0) 연봉 from employee;

select ename, salary*12+nvl(commission, 0) as 연봉 from employee;
select ename, salary*12+nvl(commission, 0) "이달의 연!봉!" from employee;

select DISTINCT dno From employee;



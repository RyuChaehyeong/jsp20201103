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
select ename, salary, salary*12 AS ���� from employee;
select ename, salary, salary*12 ���� from employee;
--�� �� �ּ��Դϴ�.
/*���� ��
  �ּ��Դϴ�.*/
  
select * from employee;
select ename, salary, commission, salary + commission from employee;
select ename, salary, commission, NVL(commission, 0) from employee;
select ename, salary + NVL(commission, 0) ���̴��ǿ��� from employee;

--�������� p32-36
select * from employee;

select eno, ename from employee;

select ename, salary, salary*12 from employee;

select ename, salary, job, dno, nvl(commission, 0), salary * 12, salary*12+nvl(commission, 0)
from employee;

select ename, salary*12+nvl(commission, 0) ���� from employee;

select ename, salary*12+nvl(commission, 0) as ���� from employee;
select ename, salary*12+nvl(commission, 0) "�̴��� ��!��!" from employee;

select DISTINCT dno From employee;



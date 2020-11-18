SELECT sysdate
FROM dual;

SELECT LOWER(ename) AS name FROM employee;
SELECT UPPER(ename) AS name FROM employee;

SELECT INITCAP('oracle mania') AS name FROM dual;

--å ����
select 'Oracle mania', UPPER('Oracle mania'), LOWER('Oracle mania'), INITCAP('Oracle mania')
from dual;

select ename, lower(ename), job, initcap(job)
from employee;

select eno, ename, dno
from employee 
where ename = 'scott';

select eno, ename, dno
from employee
where lower(ename) = 'scott';

select eno, ename, dno
from employee
where initcap(ename) = 'Scott';

select ename, Length(ename) as len FROM employee;
SELECT LENGTH('�����α׷���') from dual;

SELECT ename, LENGTH(ename) len FROM employee;
SELECT LENGTHB('�����α׷���') FROM dual;

--105����
SELECT LENGTH('OracleMania'), LENGTH('����Ŭ�ŴϾ�')
FROM dual;

SELECT LENGTHB('OracleMania'), LENGTHB('����Ŭ�ŴϾ�')
FROM dual;

SELECT CONCAT(ename, job) FROM employee;
SELECT ename || job FROM employee;
SELECT ename||', '||job from employee;

SELECT ename, SUBSTR(ename,1,2) 
from employee;

SELECT 'Oracle', 'mania', concat('Oracle', 'Mania')
from dual;

SELECT substr('Oracle mania', 4, 3), substr('Oracle mania', -4, 3)
from dual;

SELECT *
FROM employee
where substr(ename, -1, 1) = 'N';

SELECT *
FROM employee
WHERE substr(hiredate, 1, 2) = '87';

SELECT substr('Oracle mania', 4, 3), substrb('Oracle mania', 4, 3)
from dual;

SELECT *
FROM employee WHERE SUBSTR(TO_CHAR(hiredate, 'YYYY-MM-DD'), 1, 4) = '1987';

SELECT ename, INSTR(ename, 'A') FROM employee;
SELECT INSTR('Tiger Tea Tire Ton', 'T', 2, 2);

SELECT INSTR('Oracle mania', 'a') from dual;
 
SELECT INSTR('Oracle mania', 'a', 5, 2) from dual;
SELECT INSTR('����Ŭ�ŴϾ�', '��') from dual;

SELECT * from employee where INSTR(ename,'R', 3, 1) = 3;

SELECT ename, LPAD(ename, 10, '#') FROM employee;
SELECT ename, RPAD(ename, 10, '*') FROM employee;
SELECT LPAD(salary, 10, '*') FROM employee;
SELECT RPAD(salary, 10, '*') FROM employee;

SELECT TRIM('   ���� �� ��   ') FROM dual;
SELECT RTRIM('   ���� �� ��   ') FROM dual;
SELECT LTRIM('   ���� �� ��   ') FROM dual;

SELECT '   oracle maina   ', LTRIM('   oracle maina   '), RTRIM('   oracle maina   ')
FROM dual;

SELECT 'Oracle mania', TRIM('O' FROM 'Oracle mania') FROM dual;

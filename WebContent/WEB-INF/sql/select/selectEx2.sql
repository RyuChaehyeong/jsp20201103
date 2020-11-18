SELECT * 
FROM employee 
WHERE ENAME = 'SMITH';

SELECT * 
FROM employee
WHERE salary > 1000;

SELECT * 
FROM employee
WHERE commission <= 500;

SELECT *
FROM employee
WHERE salary >= 400;

SELECT * 
FROM employee
WHERE ename <= 'G';

SELECT *
FROM employee
WHERE ename <> 'SMITH';

SELECT *
FROM employee
WHERE hiredate = '1981/02/20';

--44-47p example
SELECT *
FROM employee
WHERE salary >= 1500;

SELECT
    *
FROM employee
WHERE dno = 10;

SELECT
    *
FROM employee
WHERE ename = 'SCOTT';

SELECT
    *
FROM employee
WHERE hiredate <= '1981/01/01';


SELECT
    *
FROM employee
WHERE dno = 10 and job ='MANAGER';

SELECT
    *
FROM employee
WHERE dno = 10 or job = 'MANAGER';

SELECT *
FROM employee
WHERE NOT dno=10; 

SELECT
    *
FROM employee
WHERE salary >= 3000 AND salary <= 5000;

SELECT
    *
FROM employee
WHERE salary BETWEEN 3000 AND 5000;

SELECT
    *
FROM employee
WHERE hiredate BETWEEN '1982/01/01' and '1982/12/31';

SELECT
    *
FROM employee
WHERE salary < 3000 OR salary > 5000;

SELECT
    *
FROM employee
WHERE salary NOT BETWEEN 3000 AND 50000;

SELECT
    *
FROM employee
WHERE dno = 10 OR dno = 20;

SELECT
    *
FROM employee
WHERE dno IN(10, 20);

SELECT
    *
FROM employee 
WHERE dno NOT IN(10, 20);

SELECT
    *
FROM employee
WHERE salary BETWEEN 1000 AND 1500;

SELECT
    *
FROM employee
WHERE salary >= 1000 AND salary <= 1500;

SELECT
    *
FROM employee
WHERE salary NOT BETWEEN 1000 AND 1500;

SELECT
    *
FROM employee
WHERE salary < 1000 AND salary > 1500;

SELECT
    *
FROM employee
WHERE hiredate BETWEEN '1982/01/01' and '1982/12/31';

SELECT
    *
FROM employee
WHERE commission IN (300, 500,  1400);

SELECT
    *
FROM employee
WHERE commission = 300 or commission = 500 or commission = 1400;

SELECT
    *
FROM employee
WHERE commission <> 300 and commission <> 500 and commission <> 1400;

SELECT
    *
FROM employee
WHERE commission NOT IN(300, 500, 1400);


--65p È¥ÀÚ ÇØº¸±â 
--1
SELECT
    ename, salary, salary+300
FROM employee;

--2
SELECT
    ename, salary, salary*12+100
FROM employee
ORDER BY salary*12+100 DESC;

--3
SELECT
    ename, salary
FROM employee
WHERE salary > 2000 
ORDER BY salary DESC;

--4
SELECT
    ename, dno
FROM employee
WHERE eno = 7788;

--5
SELECT
    ename, salary
FROM employee
WHERE salary NOT BETWEEN 2000 AND 3000;

--6
SELECT
    ename, job, hiredate
FROM employee
WHERE hiredate BETWEEN '1981/02/20' AND '1981/05/01';

--7
SELECT
    ename, dno
FROM employee
WHERE dno IN(20, 30)
ORDER BY ename ASC;

--8
SELECT
    ename, salary, dno
FROM employee
WHERE salary BETWEEN 2000 AND 3000 
    AND dno IN(20, 30)
ORDER BY ename ASC;

--9
SELECT
    ename, hiredate
FROM employee
WHERE hiredate like '81%';
--10
SELECT
    ename, job
FROM employee
WHERE manager is null;

--11
SELECT
    ename, salary, commission
FROM employee;

SELECT
    *
FROM employee
WHERE eno = 7499;

SELECT
    *
FROM department;


SELECT ename FROM employee;
SELECT job, MAX(salary) FROM employee
GROUP BY job;

--소속 부서별 평균 급여를 부서번호와 함께 출력하기
SELECT dno, AVG(salary)
FROM employee
GROUP BY dno;

--소속 부서별 평균 급여 구하기
SELECT AVG(salary)
FROM employee
GROUP BY dno;

SELECT dno,job, COUNT(*), SUM(salary) AS "부서별 월급 합계"
FROM employee
GROUP BY dno,job
ORDER BY dno, job;

SELECT job, AVG(salary)
FROM employee
GROUP BY job
HAVING AVG(salary) >= 3000;

SELECT dno, MAX(salary)
FROM employee
GROUP BY dno
HAVING MAX(salary) >= 3000;

SELECT job, COUNT(*), SUM(salary)
FROM employee
WHERE job <> 'MANAGER'
GROUP BY job
HAVING SUM(salary) >= 5000
ORDER BY job;

SELECT MAX(AVG(salary))
FROM employee
GROUP BY dno;

--혼자 해보기
--1&2 
SELECT job, MAX(salary) AS Maximum, MIN(salary) AS Minimun, 
ROUND(AVG(salary)) AS Average, SUM(salary) AS Summary
FROM employee
GROUP BY job;
--3
SELECT job, COUNT(*)
FROM employee
GROUP BY job;

--4
SELECT COUNT(*) AS "COUNT(MANAGER)"
FROM employee
WHERE job = 'MANAGER';

--5
SELECT MAX(salary)-MIN(salary) AS DIFFERENCE
FROM employee;

--6
SELECT job, MIN(salary)
FROM employee
GROUP BY job
HAVING MIN(salary) >= 2000
ORDER BY MIN(salary) DESC;

--
SELECT dno, COUNT(*) AS "Number of People", ROUND(AVG(salary),2) AS "Salary"
FROM employee
GROUP BY dno
ORDER BY dno ASC;

SELECT DECODE(dno, 10, 'ACCOUNTING', 20, 'RESEARCH', 30, 'SALES', 40, 'OPERATIONS') AS "dnam",
       DECODE(dno, 10, 'New York', 20, 'Dalls', 30, 'Chicago', 40, 'Boston') AS "Location",
       COUNT(*) AS "Number of People",
       ROUND(AVG(salary)) AS "Salary"
FROM employee
GROUP BY dno;
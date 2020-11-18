SELECT SUM(salary) AS 급여총액 FROM employee;
SELECT AVG(salary) AS 급여평균 FROM employee;
SELECT MIN(salary) AS 최소급여 FROM employee;
SELECT MAX(salary) AS 최대급여 FROM employee;
SELECT COUNT(salary) FROM employee; --14
SELECT * FROM employee;
SELECT COUNT(*) FROM employee;

SELECT MAX(hiredate), MIN(hiredate) FROM employee;
SELECT COUNT(commission) FROM employee; --4

SELECT SUM(commission) AS 커미션총액 FROM employee;
SELECT COUNT(*) AS 총사원수 FROM employee;
SELECT COUNT(commission) AS "커미션받는 사원 수" FROM employee;
SELECT COUNT(job) AS "직업 수" FROM employee;
SELECT COUNT(DISTINCT job) AS "직업 수" FROM employee;


SELECT ename
FROM employee
WHERE salary = (SELECT MAX(salary) FROM employee);


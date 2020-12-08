--ch07
--01
SELECT ename, job
FROM employee
WHERE job = (SELECT job FROM employee WHERE eno = 7788);

--02
SELECT ename, job
FROM EMPLOYEE
WHERE salary > (SELECT salary FROM EMPLOYEE WHERE eno = 7499);


--03
SELECT ename, job, salary
FROM EMPLOYEE
WHERE salary = (SELECT MIN(salary) FROM EMPLOYEE);

--04⭐
SELECT job, ROUND(AVG(salary),1)
FROM employee
GROUP BY job
HAVING ROUND(AVG(salary),1) = (SELECT MIN(ROUND(AVG(salary),1)) 
    							FROM EMPLOYEE
								GROUP BY job);

--05 (in 앞에는 = 을 붙이지 않음)
SELECT ename, salary, dno
FROM employee
WHERE (dno, salary) IN(SELECT dno, MIN(salary)
    						FROM employee
    						GROUP BY dno);

--06
SELECT eno, ename, job, salary
FROM employee
WHERE salary < ANY(SELECT salary FROM employee WHERE job = 'ANALYST')
AND job <> 'ANALYST';

--07-1
SELECT ename
FROM employee
WHERE manager IS NULL;

--07-2
SELECT ename
FROM employee
WHERE eno in (SELECT eno FROM employee WHERE manager IS NULL);


--08-1
SELECT ename
FROM employee
WHERE manager IS NOT NULL;


--08-2
SELECT ename
FROM employee
WHERE eno in (SELECT eno FROM employee WHERE manager IS NOT NULL);



--09
SELECT ename, hiredate
FROM employee
WHERE dno = (SELECT dno FROM employee WHERE ename = 'BLAKE');

--10
SELECT eno, ename
FROM employee
WHERE salary > (SELECT AVG(salary) FROM EMPLOYEE)
ORDER BY salary;


--11
SELECT eno, ename
FROM employee
WHERE dno IN(select dno FROM employee WHERE ename LIKE '%K%');

--12
SELECT ename, dno, job
FROM employee
WHERE dno = (SELECT dno FROM department WHERE loc = 'DALLAS');


--13
SELECT ename, salary
FROM employee
WHERE manager = (SELECT eno FROM employee WHERE ename = 'KING');

--14
SELECT dno, ename, job
FROM employee
WHERE dno = (SELECT dno FROM department WHERE dname = 'RESEARCH');

--15
SELECT eno, ename, salary
FROM employee
WHERE salary > (SELECT AVG(salary) FROM employee)
AND dno IN (SELECT dno FROM employee WHERE ename LIKE '%M%');


--16
SELECT job, AVG(salary)
FROM employee
GROUP BY job
HAVING AVG(salary) = (SELECT MIN(AVG(salary)) FROM employee GROUP BY job);

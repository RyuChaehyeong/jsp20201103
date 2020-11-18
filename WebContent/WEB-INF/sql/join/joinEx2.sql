SELECT * FROM employee;
SELECT * FROM salgrade;

SELECT * FROM employee e, salgrade s;

SELECT * FROM employee e, salgrade s
WHERE e.salary BETWEEN s.losal AND s.hisal;

--¹üÀ§·Î..
SELECT ename, salary, grade
FROM employee, salgrade
WHERE salary BETWEEN losal and hisal;

SELECT e.ename, d.dname, e.salary, s.grade
FROM employee e, department d, salgrade s
WHERE e.dno = d.dno
AND salary between losal and hisal;


SELECT e.ename 
FROM employee e, salgrade s 
WHERE e.salary BETWEEN s.losal AND s.hisal
AND s.grade = 4;
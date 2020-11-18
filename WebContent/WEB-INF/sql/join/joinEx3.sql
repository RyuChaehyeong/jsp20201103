--SELF JOIN
SELECT * FROM employee e, department d;

--같은 테이블을 조인
SELECT * FROM employee e1, employee e2;

SELECT * FROM employee WHERE eno = 7369;
SELECT * FROM employee WHERE eno = 7902;

SELECT * FROM employee e, department d
WHERE e.dno = d.dno; -- equi join 예시

SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1, employee e2
WHERE e1.manager = e2.eno; --self join 예시

SELECT employees.ename as "사원이름", manager.ename as "직속상관이름"
FROM employee employees, employee manager
WHERE employees.manager = manager.eno;

SELECT employees.ename||'의 직속상관이름은 '|| manager.ename
FROM employee employees, employee manager
WHERE employees.manager = manager.eno;

SELECT manager.ename FROM employee employees, employee manager
WHERE employees.manager = manager.eno
AND employees.eno = 7499;

SELECT employees.ename FROM employee employees, employee manager
WHERE employees.manager = manager.eno;

SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1 LEFT OUTER JOIN employee e2
ON e1.manager = e2.eno;
--왼쪽 테이블 정보 포함 : LEFT OUTER JOIN

SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1 JOIN employee e2
ON e1.manager = e2.eno;

SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1 RIGHT OUTER JOIN employee e2
ON e1.manager = e2.eno;

SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1 FULL OUTER JOIN employee e2
ON e1.manager = e2.eno;

SELECT employees.ename || ' 의 직속 상관은 ' ||  manager.ename
FROM employee employees JOIN employee manager
ON employees.manager = manager.eno(+);
--employees.manager에 null인 것이 있음
--null이어도 포함

SELECT employees.ename || '의 직속 상관은 '|| manager.ename
FROM employee employees LEFT OUTER JOIN employee manager
ON employees.manager = manager.eno;

--Do it yourself
select * from employee;
select * from department;
--6 Natural join을 사용, new york에 근무하는 사원의 이름, 업무, 부서번호
SELECT employees.ename, employees.job, d.dno, d.dname
FROM employee employees, department d
WHERE employees.dno = d.dno 
AND d.loc = 'NEW YORK';

--7
SELECT employees.ename, manager.ename, manager.eno
FROM employee employees JOIN employee manager
ON employees.eno = manager.eno;

--8
SELECT employees.ename, employees.eno, manager.eno, manager.ename
FROM employee employees LEFT OUTER JOIN employee manager
ON employees.manager = manager.eno
ORDER BY employees.eno DESC;

--9
SELECT e1.ename, e1.dno, e2.ename
FROM employee e1, employee e2
WHERE e1.dno = e2.dno
AND e1.ename = 'SCOTT';

--10
SELECT e2.ename, e2.hiredate
FROM employee e1, employee e2
WHERE e1.hiredate < e2.hiredate
AND e1.ename = 'WARD';

--11
SELECT employees.ename, employees.hiredate, manager.ename, manager.hiredate
FROM employee employees, employee manager
WHERE employees.manager = manager.eno
AND employees.hiredate <= manager.hiredate


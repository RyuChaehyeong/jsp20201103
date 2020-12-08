SELECT ename, dno
FROM employee
where dno = (SELECT dno
    		FROM EMPLOYEE
    		WHERE ename = 'SCOTT');

SELECT ename, job, salary
from employee
where salary = (select min(salary) from EMPLOYEE);

SELECT dno, MIN(salary)
FROM employee
GROUP BY dno
HAVING MIN(salary) > (SELECT MIN(salary) 
    					FROM EMPLOYEE
    					WHERE dno = 30);


SELECT eno, ename
FROM EMPLOYEE
WHERE (dno, salary) IN (SELECT dno, MIN(salary)
    			FROM employee
    			GROUP BY dno);


SELECT eno, ename, job, salary
FROM EMPLOYEE
WHERE salary < any (SELECT salary
    FROM EMPLOYEE
    WHERE job = 'SALESMAN')
AND job <> 'SALESMAN';

SELECT salary
    FROM EMPLOYEE
    WHERE job = 'SALESMAN';


SELECT eno, ename, job, salary
FROM EMPLOYEE
WHERE salary < any (1600, 1250, 1500);
--3개중 최고값보다 작은 것이 만족되면 출력
--부등호가 > 이거이면 3개 중 최소값보다 크기만 하면됨


--ALL은 모두다 만족해야 함
SELECT eno, ename, job, salary
FROM employee
WHERE salary < ALL(1600,1250,1250,1500)
AND job <> 'SALESMAN';
--3개 숫자보다 모두 작아야 함

SELECT salary FROM employee WHERE job = 'SALESMAN';
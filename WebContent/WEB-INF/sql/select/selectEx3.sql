SELECT
    *
FROM employee
WHERE ename = 'WARD';


-- like keyword
SELECT
    *
FROM employee WHERE ename LIKE 'W%';
--
SELECT
    *
FROM employee WHERE ename LIKE '%D';

SELECT
    *
FROM employee WHERE ename LIKE '%D%';

SELECT
    *
FROM employee WHERE ename LIKE '_A__';

SELECT
    *
FROM employee WHERE ename LIKE '_A%';

--P55
--F로 시작하는 사람
SELECT
    *
FROM employee WHERE ename LIKE 'F%';

--이름에 M이 포함되어 있는 사람
SELECT
    *
FROM employee WHERE ename LIKE '%M%';

--이름이 N으로 끝나는 사람
SELECT
    *
FROM employee WHERE ename LIKE '%N';

--이름의 두번째 글자가 'A'인 사원
SELECT
    *
FROM employee WHERE ename LIKE '_A%';

--이름의 세번째 글자가 'A'인 사원
SELECT
    *
FROM employee WHERE ename LIKE '__A%';


--이름에 A글자가 없는 사원
SELECT
    *
FROM employee WHERE ename NOT LIKE '%A%';


SELECT
    *
FROM employee WHERE commission is null;

SELECT
    *
FROM employee WHERE commission is not null;

--58
SELECT
    ename, dno, commission
FROM employee;

--59
SELECT
    *
FROM employee
WHERE commission is null;


SELECT
    *
FROM employee
ORDER BY ename;

SELECT
    *
FROM employee
WHERE salary > 2000 
ORDER BY eno DESC;

SELECT
    dno, ename
FROM employee
ORDER BY dno, ename;

SELECT
    dno, ename
FROM employee
ORDER BY dno DESC, ename ASC;

SELECT
    *
FROM employee
ORDER BY salary ASC;

SELECT
    *
FROM employee
ORDER BY salary;

SELECT
    *
FROM employee
ORDER BY salary DESC;

SELECT
    *
FROM employee
ORDER BY ename;

SELECT
    *
FROM employee
ORDER BY hiredate DESC;

SELECT
    *
FROM employee
ORDER BY salary DESC, ename ASC;

--혼자해보기 10
SELECT
    ename, job
FROM employee
WHERE manager IS NULL;

--11
SELECT
    ename, salary, commission
FROM employee
WHERE commission IS NOT NULL
ORDER BY salary DESC, commission DESC;

--12
SELECT
    ename
FROM employee
WHERE ename LIKE '__R%';

--13
SELECT
    ename
FROM employee
WHERE ename LIKE '%A%' AND ename LIKE '%E%';

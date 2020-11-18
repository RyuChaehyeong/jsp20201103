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
--F�� �����ϴ� ���
SELECT
    *
FROM employee WHERE ename LIKE 'F%';

--�̸��� M�� ���ԵǾ� �ִ� ���
SELECT
    *
FROM employee WHERE ename LIKE '%M%';

--�̸��� N���� ������ ���
SELECT
    *
FROM employee WHERE ename LIKE '%N';

--�̸��� �ι�° ���ڰ� 'A'�� ���
SELECT
    *
FROM employee WHERE ename LIKE '_A%';

--�̸��� ����° ���ڰ� 'A'�� ���
SELECT
    *
FROM employee WHERE ename LIKE '__A%';


--�̸��� A���ڰ� ���� ���
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

--ȥ���غ��� 10
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

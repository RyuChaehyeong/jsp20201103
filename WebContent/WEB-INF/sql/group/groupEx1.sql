SELECT SUM(salary) AS �޿��Ѿ� FROM employee;
SELECT AVG(salary) AS �޿���� FROM employee;
SELECT MIN(salary) AS �ּұ޿� FROM employee;
SELECT MAX(salary) AS �ִ�޿� FROM employee;
SELECT COUNT(salary) FROM employee; --14
SELECT * FROM employee;
SELECT COUNT(*) FROM employee;

SELECT MAX(hiredate), MIN(hiredate) FROM employee;
SELECT COUNT(commission) FROM employee; --4

SELECT SUM(commission) AS Ŀ�̼��Ѿ� FROM employee;
SELECT COUNT(*) AS �ѻ���� FROM employee;
SELECT COUNT(commission) AS "Ŀ�̼ǹ޴� ��� ��" FROM employee;
SELECT COUNT(job) AS "���� ��" FROM employee;
SELECT COUNT(DISTINCT job) AS "���� ��" FROM employee;


SELECT ename
FROM employee
WHERE salary = (SELECT MAX(salary) FROM employee);


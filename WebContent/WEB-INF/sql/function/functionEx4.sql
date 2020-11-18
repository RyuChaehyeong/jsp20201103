SELECT ename, salary, NVL(commission,0), salary+NVL(commission, 0) 
from employee;

SELECT ename, salary, commission, NVL(commission, 0), salary*12+NVL(commission, 0)
FROM employee
ORDER BY job;

SELECT ename, commission, NVL2(commission, commission, 0)
FROM employee;

SELECT ename, salary, commission, salary*12+NVL2(commission, salary*12+commission, salary*12)
FROM employee
ORDER BY job;


SELECT nullif('a', 'a') from dual;
SELECT nullif('b', 'a') from dual;

SELECT COALESCE('a', 'b', null, 'c') FROM dual;
SELECT COALESCE(null, 'b', null, 'c') FROM dual;
SELECT COALESCE(null, null, 'd', 'c') FROM dual;

SELECT ename, dno, DECODE(dno, 10, 'ACC',20, 'RES','DEF') AS dname
FROM employee;                                   

SELECT ename, salary, CASE WHEN salary >= 3000 THEN 'HIGH'
                           WHEN salary >=0 THEN 'LOW'
                           ELSE '0'
                        END AS salGrade
FROM employee;

SELECT ename, dno, CASE WHEN dno=10 THEN 'ACCOUNTING'
                        WHEN dno=20 THEN 'RESEARCH'
                        WHEN dno=30 THEN 'SALES'
                        WHEN dno=40 THEN 'OPERATIONS'
                        ELSE 'DEFAULT'
                    END AS DENAME
FROM employee;

SELECT eno, ename, NVL(manager, 0) AS manager
FROM employee ;

SELECT eno, ename, job, salary, DECODE(job, 'ANALYST', salary+200, 'SALESMAN', salary+180, 
'MANAGER', salary+150, 'CLERK', salary+100, 'PRESIDENT', salary) AS UPDATE_SALARY
FROM employee;
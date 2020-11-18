select sysdate from dual;
select sysdate+1 from dual;
select sysdate-1 from dual;

select ename, hiredate, sysdate, ROUND(sysdate-hiredate) AS 근무일수 FROM employee;

--117~119
select sysdate from dual;
select sysdate-1 AS 어제, sysdate AS 오늘, sysdate+1 AS 내일
FROM dual;

SELECT ROUND(sysdate) FROM dual;
SELECT ROUND(sysdate, 'YEAR') FROM dual;
SELECT ROUND(sysdate, 'MONTH') FROM dual;

SELECT TRUNC(sysdate, 'YEAR') FROM dual;
SELECT TRUNC(sysdate, 'MONTH') FROM dual;

SELECT hiredate, TRUNC(HIREDATE, 'MONTH') FROM employee;
SELECT MONTHS_BETWEEN(SYSDATE, hiredate) FROM employee;
SELECT MONTHS_BETWEEN(SYSDATE, TO_DATE('2020-10-13', 'yyyy-mm-dd'))
FROM dual;

SELECT ename, sysdate, hiredate, TRUNC(MONTHS_BETWEEN (SYSDATE, HIREDATE))
FROM employee;

SELECT ADD_MONTHS(sysdate, 12) FROM dual;
SELECT ADD_MONTHS(sysdate, 6) FROM dual;
SELECT ADD_MONTHS(sysdate, -12) FROM dual;

SELECT ename, hiredate, ADD_MONTHS(hiredate, 6) FROM employee;

SELECT NEXT_DAY(sysdate, 6) FROM dual;
SELECT * FROM employee;
SELECT LAST_DAY(sysdate) FROM dual;
SELECT LAST_DAY(ADD_MONTHS(sysdate, -9)) from dual;

SELECT SYSDATE, NEXT_DAY(SYSDATE, 6) FROM dual;
SELECT ename, hiredate, LAST_DAY(HIREDATE) FROM employee;
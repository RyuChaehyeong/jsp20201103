select substr(hiredate, 1, 2)³âµµ, substr(hiredate, 4, 2)´Þ from employee;
select * from employee WHERE substr(hiredate, 4, 2) = '04';
select * from employee WHERE MOD(eno, 2) = 0;
select hiredate, TO_CHAR(hiredate, 'YY/MON/DDDY') from employee;
select TRUNC(SYSDATE-TO_DATE('2011/01/01', 'YYYY/MM/DD')) FROM dual;
select TRUNC(SYSDATE-TO_DATE('2011/01/01')) FROM dual;
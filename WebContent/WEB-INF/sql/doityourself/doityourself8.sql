--ch08
--01
DROP TABLE DEPT;
CREATE TABLE dept (
    dno NUMBER(2),
    dname VARCHAR2(14),
    loc VARCHAR2(13)
);

--02
CREATE TABLE EMP (
	eno NUMBER(4),
    ename VARCHAR2(10),
    dno NUMBER(2)
);

--03
ALTER TABLE EMP
MODIFY ename VARCHAR2(25);

DESC EMP;


--04
CREATE TABLE employee2 (EMP_ID, NAME, SAL, DEPT_ID)
AS
SELECT eno, ename, salary, dno from employee;

--05
DROP TABLE emp;

--06
RENAME EMPLOYEE2 TO EMP;

--07
ALTER TABLE DEPT
DROP COLUMN dname;

DESC DEPT;

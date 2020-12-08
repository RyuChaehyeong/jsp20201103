--데이터 (record, row) 추가
--INSERT INTO tname(col1, col2) VALUES(val1, val2);

CREATE TABLE dept_copy
AS
SELECT * FROM DEPARTMENT WHERE 0=1;


DESC dept_copy;
SELECT * FROM DEPT_COPY;

INSERT INTO dept_copy (dno, dname, loc)
VALUES (10, 'ACCOUNTING', 'NEW YORK');

INSERT INTO dept_copy
VALUES (20, 'DALLAS', 'RESEARCH');


--NULL: 값이 존재하지 않음

INSERT INTO dept_copy(dno, dname)
VALUES (30, 'SALES');

INSERT INTO dept_copy
VALUES (40, 'OPERATIONS', NULL);

COMMIT;

--ORACLE에서는 NULL과 ''(빈스트링)도 NULL로 취급

DESC dept_copy;
INSERT INTO dept_copy
VALUES (50, 'COMPUTING','');

SELECT * FROM DEPT_COPY;

DROP TABLE EMP_COPY;

CREATE TABLE emp_copy
AS
SELECT eno, ename, job, hiredate, dno FROM EMPLOYEE WHERE 0=1;

DESC EMP_COPY;

commit;



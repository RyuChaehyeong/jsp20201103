--ch09
--01
CREATE TABLE emp_insert
AS
SELECT * FROM employee WHERE 1=0;

DESC emp_insert;

INSERT INTO emp_insert
VALUES (1, 'LEEJM', 'STUDENT', NULL, SYSDATE, 2700, 230, 10);


INSERT INTO emp_insert
VALUES (2, 'LEEJH', 'SOLDIER', NULL, TO_DATE('2020-12-01', 'YYYY-MM-DD'), 1150, NULL, 20);

SELECT * FROM emp_insert;

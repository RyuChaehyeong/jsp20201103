--
CREATE TABLE data_type_ex1 (
	num1 NUMBER,
	num2 NUMBER(2),
    num3 NUMBER(3, 2)  
);

INSERT INTO DATA_TYPE_EX1 (num1)
VALUES (0);
INSERT INTO DATA_TYPE_EX1 (num1)
VALUES (0.01);
INSERT INTO DATA_TYPE_EX1 (num1)
VALUES (9999999);

INSERT INTO DATA_TYPE_EX1 (num2)
VALUES (0);
INSERT INTO DATA_TYPE_EX1 (num2)
VALUES (0.1);
INSERT INTO DATA_TYPE_EX1 (num2)
VALUES (100); --실패
INSERT INTO DATA_TYPE_EX1 (num2)
VALUES (99);
INSERT INTO DATA_TYPE_EX1 (num3)
VALUES (0.01);
INSERT INTO DATA_TYPE_EX1 (num3)
VALUES (0.015);--반올림
INSERT INTO DATA_TYPE_EX1 (num3)
VALUES (9.015);--반올림
INSERT INTO DATA_TYPE_EX1 (num3)
VALUES (10.015);--실패
SELECT * FROM DATA_TYPE_EX1;

commit;

--문자열
CREATE TABLE data_type_ex2 (
	char1 CHAR(3),
    vchar2 VARCHAR2(6)
);

INSERT INTO data_type_ex2 (char1)
VALUES ('');

SELECT * FROM data_type_ex2;

INSERT INTO data_type_ex2 (char1)
VALUES ('a'); --빈 스트링이 뒤에 붙어서 총 3개의 char


INSERT INTO data_type_ex2 (char1)
VALUES ('abc');


INSERT INTO data_type_ex2 (char1)
VALUES ('abcd'); --too larger to insert

INSERT INTO data_type_ex2 (vchar2)
VALUES ('abc');--다 차지 않은 부분 공간으로 채우지 않음

SELECT * FROM data_type_ex2;

INSERT INTO data_type_ex2 (vchar2)
VALUES ('abcdefg');--too large to insert

commit;

INSERT INTO data_type_ex2 (vchar2)
VALUES ('한');

INSERT INTO data_type_ex2 (vchar2)
VALUES ('한글');

INSERT INTO data_type_ex2 (vchar2)
VALUES ('한글날'); --9bytes

SELECT * FROM data_type_ex2;


commit;


--날짜
--date
CREATE TABLE data_type_ex3(
	date1 DATE
);

SELECT SYSDATE FROM DUAL;

INSERT INTO data_type_ex3
VALUES (sysdate);

SELECT * FROM data_type_ex3;

SELECT TO_CHAR(date1, 'YYYY-MM-DD HH:MI:SS')
FROM data_type_ex3;

INSERT INTO data_type_ex3
VALUES ('2020/11/10'); -- 안됨

INSERT INTO data_type_ex3
VALUES (TO_DATE('2020-10-10', 'YYYY-MM-DD')); -- 잘됨

INSERT INTO data_type_ex3
VALUES (TO_DATE('2020-09-09 17:33:22', 'YYYY-MM-DD HH24:MI:SS'));

COMMIT;

--229
INSERT INTO emp_copy
VALUES (7000, 'CANDY','MANAGER', TO_DATE('2012-05-01', 'YYYY-MM-DD'), 10);

INSERT INTO emp_copy
VALUES(7010, 'TOM', 'MANAGER', TO_DATE('2012-05-01', 'YYYY-MM-DD'), 20);

INSERT INTO emp_copy
VALUES(7020, 'JERRY', 'SALESMAN', SYSDATE, 30);


SELECT * FROM EMP_COPY;

DROP TABLE dept_copy;

CREATE TABLE dept_copy
AS
SELECT * FROM department WHERE 0=1;

INSERT INTO dept_copy
SELECT * FROM department;

SELECT * FROM dept_copy;

commit;
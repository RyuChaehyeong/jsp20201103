--table 만들기
--CREATE TABLE

SELECT * FROM department;

CREATE TABLE table1 (
	col1 number(3, 1), 
    col2 VARCHAR2(6), 
    col3 CHAR(4),
    col4 DATE
);

--DATA TYPE (17P)
--숫자, 문자열, 날짜시간
--숫자: NUMBER(값), 값: 숫자 자리수
--숫자: NUMBER(값1, 값2), 값1: 총길이, 값2: 소수점아래 자리수

--문자열: VARCHAR2(값), 값: byte수, 가변길이
--값: byte수
--CHAR(값), 값: 고정된 값, 적게 넣으면 스페이스 채워져서 넘어감

--날짜시간: DATE


--207
SELECT * FROM table1;
DESC TABLE1;



--책예제 207쪽
CREATE TABLE dept (
	dno NUMBER(2),
    dname VARCHAR2(14),
    loc VARCHAR2(13)
);

DESC DEPT;


--이미 있는 테이블 복사
--1.같은 구조 테이블 만들고
--2.옛TABLE을 SELECT한 결과를 새TABLE에 INSERT

CREATE TABLE new_table
AS
SELECT * FROM old_table;

CREATE TABLE dept_second
AS
SELECT *
FROM DEPARTMENT;

DESC DEPT_SECOND;

SELECT *
FROM DEPT_SECOND;

CREATE TABLE dept20
AS
SELECT eno, ename, salary*12 annsal
FROM employee
WHERE dno = 20;

SELECT *
FROM dept20;

--책209p
--선택되는 레코드가 없어서 구조만 복사
CREATE TABLE dept_third
AS
SELECT dno, dname
FROM department
WHERE 0=1;

SELECT * FROM dept_third;


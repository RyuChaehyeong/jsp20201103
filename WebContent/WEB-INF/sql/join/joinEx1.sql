--joinEx1

--14행, 8열
SELECT * FROM employee;

--4행, 3열
SELECT * FROM department;
--
--14개 행을 4개 행에 match (56개행) 
--FROM 절에 2개의 테이블
SELECT * FROM employee, department;

SELECT eno, ename, dname FROM employee, department;
--같은 이름 컬럼은 명확하게 써주어야 함

SELECT eno, ename, employee.dno edno, department.dno ddno, dname
FROM employee, department
WHERE eno = 7369;

SELECT eno, ename, employee.dno edno,  dname
FROM employee, department
WHERE  employee.dno = department.dno;

--각 사원들이 소속된 부서정보 얻기
SELECT *
FROM employee, department
WHERE employee.dno = department.dno;


--사원번호, 사원이름, 소속부서 이름 출력하기
SELECT eno, ename, dname
FROM employee, department
WHERE employee.dno = department.dno AND eno = 7788;

--모호한 칼럼명으로 인한 오류 예
SELECT eno, ename, dname, dno
FROM employee, department
WHERE employee.dno = department.dno AND eno = 7788;

--컬럼명 앞에 테이블명 명시하기
SELECT eno, ename, dname, department.dno
FROM employee, department
WHERE employee.dno = department.dno AND eno = 7788;

--equi join (둘의 열의 값이 같은 것만 묶는 것)
--조건이 없으면 행끼리 곱, 열끼리 합 만큼의 행, 열 테이블이 나옴

--테이블이 너무 길어서 반복하기 불편, 테이블 명에도 별칭을 줄 수있다. 
SELECT e.eno, e.ename, e.dno, d.dname
FROM employee e, department d
WHERE e.dno = d.dno;

--테이블명에 별칭 사용하기
SELECT e.eno, e.ename, d.dname, e.dno
FROM employee e, department d
WHERE e.dno = d.dno AND e.eno = 7788;

--EQUI JOIN을 이용하여 SCOTT 사원의 부서번호와 부서이름 출력
SELECT ename, e.dno, d.dname
FROM employee e, department d
WHERE e.dno = d.dno AND e.ename = 'SCOTT';

--natural join
SELECT * FROM employee natural join department --두테이블 컬럼 중 같은 컬럼명으로 조인
WHERE eno = 7782;
-->> 컬럼명 & 데이터 타입이 같아야 함

--join using
SELECT * FROM employee join department USING(dno); --컬럼명 지정
-->> 컬럼명만 같아도 됨. 데이터 타입 달라도됨

--join on
SELECT * FROM employee e JOIN department d ON e.dno = d.dno;
-->> 타입, 컬럼명 달라도 조인가능

--169
--natural join에서는 join 컬럼명에 별칭을 사용하면 안된다.
SELECT e.eno, e.ename, d.dname, dno
FROM employee e natural join department d
WHERE e.eno = 7788;

--USING 절 사용하기
SELECT e.eno, e.ename, d.dname, dno
FROM employee e join department d USING (dno)
WHERE e.eno = 7788;

--ON절 사용하기, join 컬럼명에 별칭을 써주어야 함
SELECT e.eno, e.ename, d.dname, e.dno
FROM employee e join department d on e.dno = d.dno
WHERE e.eno = 7788;

--inner join과 on 연산자를 사용하여 사원이름, 부서, 지역명 출력
SELECT e.ename, d.dname, d.loc
FROM employee e join department d ON e.dno = d.dno;

--inner join과 using 연산자를 사용하여 10번 부서에 속하는 담당업무의 고유목록, 부서, 지역명 함께 표시
SELECT DISTINCT e.job, d.dname, d.loc
FROM employee e join department d USING(dno)
WHERE dno = 10;

--natural join을 사용하여 커미션을 받는 모든 사원의 이름, 부서이름, 지역명 출력
SELECT e.ename, d.dname, d.loc
FROM employee e natural join department d
WHERE e.commission IS NOT NULL;

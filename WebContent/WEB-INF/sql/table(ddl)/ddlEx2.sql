--테이블 변경
--ALTER TABLE
--컬럼 추가, 컬럼 변경, 컬럼 삭제

--컬럼 추가
--ALTER TABLE table_name
--ADD(new_col DATATYPE, , , );

DESC DEPT20;

ALTER TABLE DEPT20
ADD(birth DATE);

--컬럼 변경
--ALTER TABLE tname MODIFY (colName type,,,);

ALTER TABLE DEPT20
MODIFY ename varchar2(30);


--컬럼 삭제
--ALTER TABLE tname
--DROP COLUMN col_name;

DESC dept20;

ALTER table dept20
drop column ename;




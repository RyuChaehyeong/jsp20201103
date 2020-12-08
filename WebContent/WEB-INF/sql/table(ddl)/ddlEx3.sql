--TABLE 이름 변경(214p)
--RENAME
RENAME dept20 TO emp20;

--TABLE 아예 삭제(215p)
DROP TABLE emp20;

desc emp20;


--TABLE 구조 두고 데이터만 삭제 (216P)
--TRUNCATE TABLE 
SELECT * FROM DEPT_SECOND;
TRUNCATE TABLE dept_second;
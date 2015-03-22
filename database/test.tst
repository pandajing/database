SELECT * FROM cat;


--student
create table student(
  sno VARCHAR2(10) CONSTRAINT pk_student_sno PRIMARY KEY ,
  sname varchar2(20),
  sex char(1),
  birthday date,
  --address varchar2(100),
dno varchar2(5) CONSTRAINT fk_student_dno REFERENCES dep(dno)
  );

create table dep(
  dno varchar2(5) CONSTRAINT pk_dep_dno PRIMARY KEY ,
  dname varchar2(20),
  tel varchar2(20)
);
create table course(
  cno varchar2(5) CONSTRAINT pk_course_cno PRIMARY KEY ,
  cname varchar2(20),
  credit number(1)
);
create table sc(
   sno varchar2(10),
  cno varchar2(5),
  grade number(3),
  CONSTRAINT pk_sc_sno_cno PRIMARY KEY (sno,cno) ,
  CONSTRAINT fk_sc_sno FOREIGN KEY(sno) REFERENCES student(sno),
  CONSTRAINT fk_sc_cno FOREIGN KEY (cno) REFERENCES course(cno)
);
SELECT * from course;
INSERT INTO  course  VALUES ('c001','c++',2);
INSERT INTO  course(cno,cname) VALUES ('c002','java');
DELETE FROM course WHERE cno='c002';
UPDATE course SET credit=credit+2 WHERE cno='c001';
SELECT * FROM dept;
SELECT * FROM emp;
SELECT ename ,sal*12  年工资 ,sysdate 日期 FROM emp;
SELECT 20 ,sin(20) FROM dual;

SELECT ename,job FROM emp WHERE ename LIKE '%K%';
drdfg
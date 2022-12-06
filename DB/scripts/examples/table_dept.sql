drop table EMP;
create table EMP
( EMPNO number(4) not null,
	  ENAME varchar2(10),
	  JOB varchar2(9),
	  MGR number(4),
	  HIREDATE date,
	  SAL number(7,2),
	  COMM number(7,2),
	  DEPTNO number(2) );
insert into EMP values (7369,'Smith','clerk',7902,'17-DEC-80',800,NULL,20);
insert into EMP values (7499,'Allen','salesman',7698,'20-FEB-81',1600,300,30);

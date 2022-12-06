create table R (
	A number primary key,
	B number
);
create table S (
	C number primary key,
	D number references R deferrable
);
alter table R
add constraint BREFC foreign key (B) references S deferrable
;
set constraint all deferred;
insert into R values (1, 10);
insert into R values (2, 20);
insert into S values (10, 1);
insert into S values (20, 2);
set constraint all immediate;

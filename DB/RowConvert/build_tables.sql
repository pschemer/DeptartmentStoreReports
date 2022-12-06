/* TODO -
	MOVE TABLES TO SEQUENTIAL ORDER
	CHECK ROW INPUTS
	DOUBLE CHECK SCHEMA ORDER
	TRIPLE CHECK ALL
*/
drop table	CCARD;
create table	CCARD
(
	Ccno	number(20, 0)	PRIMARY KEY,
	Cctype	VARCHAR(20),
	Ccexp	number(6, 0),
	Cclimit	INTEGER
	/*	IC (Ccno) < USAGE(Ccno)	*/
)
insert into	CCARD	values	(732497102,MasterCard,191231,5200);
insert into	CCARD	values	(155933579,Visa,200131,2800);
insert into	CCARD	values	(196980383,MasterCard,190430,6500);
insert into	CCARD	values	(188520364,AmEx,191031,20000);
insert into	CCARD	values	(181091540,Visa,210430,1500);
insert into	CCARD	values	(406232123,AmEx,200131,3000);
insert into	CCARD	values	(866490223,MasterCard,200831,9300);
insert into	CCARD	values	(105379286,Visa,200430,5000);
insert into	CCARD	values	(493597477,MasterCard,191031,5000);
insert into	CCARD	values	(331689915,AmEx,200831,4500);
insert into	CCARD	values	(499544274,Visa,210430,1500);
insert into	CCARD	values	(340528397,Visa,200131,8100);
insert into	CCARD	values	(529551348,MasterCard,200430,8100);
insert into	CCARD	values	(574429956,MasterCard,191031,6000);
insert into	CCARD	values	(593653463,Visa,191231,3800);
insert into	CCARD	values	(675478174,MasterCard,210630,4200);
insert into	CCARD	values	(247010852,Visa,190131,3000);
insert into	CCARD	values	(889539258,AmEx,191231,7700);
insert into	CCARD	values	(490044192,Visa,190131,10000);
insert into	CCARD	values	(103570287,MasterCard,210430,10000);
insert into	CCARD	values	(890136255,Visa,210430,3000);
insert into	CCARD	values	(645826081,AmEx,191231,10000);
insert into	CCARD	values	(273726939,Visa,200831,8100);
insert into	CCARD	values	(342655122,AmEx,191231,4000);
insert into	CCARD	values	(890864954,MasterCard,200831,10000);
insert into	CCARD	values	(324728798,Visa,210630,8100);
insert into	CCARD	values	(627056460,MasterCard,191031,9300);
insert into	CCARD	values	(584249315,Visa,200430,10000);
insert into	CCARD	values	(985216409,MasterCard,200430,8100);
insert into	CCARD	values	(441247998,AmEx,191031,15000);
insert into	CCARD	values	(597299739,MasterCard,200930,11000);
insert into	CCARD	values	(912541326,Visa,191231,10000);
insert into	CCARD	values	(957947344,AmEx,210430,2900);
insert into	CCARD	values	(862793210,Visa,210630,7700);
insert into	CCARD	values	(381681932,MasterCard,191031,18000);
insert into	CCARD	values	(807738930,AmEx,200930,3900);
insert into	CCARD	values	(686827220,Visa,210630,7700);
insert into	CCARD	values	(122428087,AmEx,200930,12500);
insert into	CCARD	values	(900015674,Visa,210331,3400);

drop table	CUSTOMER;
create table	CUSTOMER
(
	Cid	CHAR(4)	PRIMARY KEY,
	Cname	VARCHAR(20),
	Caddress	VARCHAR(20)
	/*	IC	(Cid) < USAGE(Cid)	*/
)
insert into	CUSTOMER	values	(C02,Spears,Springfield);
insert into	CUSTOMER	values	(C03,Lawrence,Franklin);
insert into	CUSTOMER	values	(C04,Barrett,Clinton);
insert into	CUSTOMER	values	(C05,Bradshaw,Greenville);
insert into	CUSTOMER	values	(C06,Valencia,Bristol);
insert into	CUSTOMER	values	(C07,Hendrix,Fairview);
insert into	CUSTOMER	values	(C08,Carroll,Salem);
insert into	CUSTOMER	values	(C09,Frederick,Madison);
insert into	CUSTOMER	values	(C10,Greene,Georgetown);
insert into	CUSTOMER	values	(C11,Nash,Arlington);
insert into	CUSTOMER	values	(C12,Pineda,Ashland);
insert into	CUSTOMER	values	(C13,Sanford,Dover);
insert into	CUSTOMER	values	(C14,Dorsey,Oxford);
insert into	CUSTOMER	values	(C15,David,Jackson);
insert into	CUSTOMER	values	(C16,Hamilton,Burlington);
insert into	CUSTOMER	values	(C17,Downs,Manchester);
insert into	CUSTOMER	values	(C18,Scott,Milton);
insert into	CUSTOMER	values	(C19,Williams,Newport);
insert into	CUSTOMER	values	(C20,Rios,Auborn);
insert into	CUSTOMER	values	(C21,Joyce,Centerville);
insert into	CUSTOMER	values	(C22,Cruz,Clayton);
insert into	CUSTOMER	values	(C23,Perkins,Dayton);
insert into	CUSTOMER	values	(C24,Gould,Lexington);
insert into	CUSTOMER	values	(C25,Maxwell,Milford);
insert into	CUSTOMER	values	(C26,Snyder,Oakland);
insert into	CUSTOMER	values	(C27,Mercado,Winchester);
insert into	CUSTOMER	values	(C28,Fields,Cleveland);
insert into	CUSTOMER	values	(C29,Riggs,Hudson);
insert into	CUSTOMER	values	(C30,David,Kingston);

drop table	DEPARTMENT;
create table	DEPARTMENT
(
	Did CHAR(4)	PRIMARY KEY,
	Dname	VARCHAR(20)
	/*	IC	(Did) < EMPLOYEE(Did)	*/
)
insert into	DEPARTMENT	values	(D02,Shipping);
insert into	DEPARTMENT	values	(D03,Technology);
insert into	DEPARTMENT	values	(D04,Apparel);
insert into	DEPARTMENT	values	(D05,Kitchen);
insert into	DEPARTMENT	values	(D06,Electronics);
insert into	DEPARTMENT	values	(D07,Hardware);

drop table	EMPLOYEE;
create table	EMPLOYEE
(
	Eid CHAR(4)	PRIMARY KEY,
	Ename	VARCHAR(20),
	Did	CHAR(4),
	FOREIGN KEY	(Did) REFERENCES DEPARTMENT(Did)
)
insert into	EMPLOYEE	values	(E02,Garrison,D02);
insert into	EMPLOYEE	values	(E03,Maynard,D05);
insert into	EMPLOYEE	values	(E04,Conley,D02);
insert into	EMPLOYEE	values	(E05,Soto,D01);
insert into	EMPLOYEE	values	(E06,Pierce,D02);
insert into	EMPLOYEE	values	(E07,Gallegos,D01);
insert into	EMPLOYEE	values	(E08,Mcbride,D05);
insert into	EMPLOYEE	values	(E09,Gill,D01);
insert into	EMPLOYEE	values	(E10,Sexton,D02);
insert into	EMPLOYEE	values	(E11,Glass,D04);
insert into	EMPLOYEE	values	(E12,Arias,D06);
insert into	EMPLOYEE	values	(E13,Thompson,D05);
insert into	EMPLOYEE	values	(E14,Owens,D06);
insert into	EMPLOYEE	values	(E15,Shelton,D03);
insert into	EMPLOYEE	values	(E16,Chang,D06);
insert into	EMPLOYEE	values	(E17,Dalton,D03);
insert into	EMPLOYEE	values	(E18,Walsh,D07);
insert into	EMPLOYEE	values	(E19,Johnston,D07);
insert into	EMPLOYEE	values	(E20,Garcia,D04);

drop table	ADMIN;
create table	ADMIN
(
	Did CHAR(4)	PRIMARY KEY,
	Manager	CHAR(4),
	FOREIGN KEY	(Did, Manager) REFERENCES EMPLOYEE(Did, Eid)
)
insert into	ADMIN	values	(D02,E10);
insert into	ADMIN	values	(D03,E15);

drop table	RETAIL;
create table	RETAIL
(
	Did CHAR(4)	PRIMARY KEY,
	FOREIGN KEY	(Did) REFERENCES DEPARTMENT(Did)
)
insert into	RETAIL	values	(D05);
insert into	RETAIL	values	(D06);
insert into	RETAIL	values	(D07);

drop table	ITEM;
create table	ITEM
(
	Iid CHAR(4)	PRIMARY KEY,
	Idescription	VARCHAR(20),
	Price	number(10,2),
	Ship	number(10,2),
	Qoh	INTEGER,
	Did	CHAR(4),
	FOREIGN KEY	(Did) REFERENCES RETAIL(Did)
	/*	IC	(Iid) < AVAIL(Iid)	*/
)
insert into	ITEM	values	(I02,Shirt,83,15,92,D04);
insert into	ITEM	values	(I03,Dress,181,8,48,D04);
insert into	ITEM	values	(I04,Pants,48,13,4,D04);
insert into	ITEM	values	(I05,Sweater,79,16,35,D04);
insert into	ITEM	values	(I06,Jacket,77,20,85,D04);
insert into	ITEM	values	(I07,Pants,52,14,14,D04);
insert into	ITEM	values	(I08,Dress,82,14,26,D04);
insert into	ITEM	values	(I09,Suit,196,2,37,D04);
insert into	ITEM	values	(I10,Shoes,48,20,93,D04);
insert into	ITEM	values	(I11,Coat,141,5,27,D04);
insert into	ITEM	values	(I12,Dress,119,9,62,D04);
insert into	ITEM	values	(I13,Jacket,114,3,92,D04);
insert into	ITEM	values	(I14,Shoes,85,7,79,D04);
insert into	ITEM	values	(I15,Sandals,40,12,96,D04);
insert into	ITEM	values	(I16,Glasses,19,13,73,D05);
insert into	ITEM	values	(I17,CoffeeMaker,151,20,36,D05);
insert into	ITEM	values	(I18,Blender,110,6,2,D05);
insert into	ITEM	values	(I19,Toaster,49,7,58,D05);
insert into	ITEM	values	(I20,Plates,31,13,38,D05);
insert into	ITEM	values	(I21,Blender,187,13,2,D05);
insert into	ITEM	values	(I22,Pans,162,14,85,D05);
insert into	ITEM	values	(I23,Pots,167,7,10,D05);
insert into	ITEM	values	(I24,Cutlery,52,4,94,D05);
insert into	ITEM	values	(I25,CoffeeMaker,104,1,41,D05);
insert into	ITEM	values	(I26,Mixer,187,18,1,D05);
insert into	ITEM	values	(I27,Mixer,105,15,14,D05);
insert into	ITEM	values	(I28,Plates,44,7,70,D05);
insert into	ITEM	values	(I29,Cutlery,85,10,84,D05);
insert into	ITEM	values	(I30,Glasses,18,13,7,D05);
insert into	ITEM	values	(I31,HardDisk,134,13,43,D06);
insert into	ITEM	values	(I32,Tablet,156,20,83,D06);
insert into	ITEM	values	(I33,Switch,26,5,75,D06);
insert into	ITEM	values	(I34,Printer,133,7,10,D06);
insert into	ITEM	values	(I35,Printer,115,12,1,D06);
insert into	ITEM	values	(I36,Telephone,158,15,42,D06);
insert into	ITEM	values	(I37,Charger,26,5,2,D06);
insert into	ITEM	values	(I38,Tablet,195,7,77,D06);
insert into	ITEM	values	(I39,HardDisk,104,7,89,D06);
insert into	ITEM	values	(I40,Camera,148,2,11,D06);
insert into	ITEM	values	(I41,Cable,12,2,10,D06);
insert into	ITEM	values	(I42,Camera,187,16,78,D06);
insert into	ITEM	values	(I43,Router,74,16,90,D06);
insert into	ITEM	values	(I44,Telephone,169,10,51,D06);
insert into	ITEM	values	(I45,Earphones,30,10,6,D06);
insert into	ITEM	values	(I46,Earphones,77,13,95,D07);
insert into	ITEM	values	(I47,Lock,48,13,82,D07);
insert into	ITEM	values	(I48,Pliers,7,14,91,D07);
insert into	ITEM	values	(I49,LawnMower,188,19,73,D07);
insert into	ITEM	values	(I50,Screwdriver,9,2,57,D07);
insert into	ITEM	values	(I51,Sink,102,15,41,D07);
insert into	ITEM	values	(I52,Saw,50,5,26,D07);
insert into	ITEM	values	(I53,Sink,142,10,22,D07);
insert into	ITEM	values	(I54,LawnMower,146,2,94,D07);
insert into	ITEM	values	(I55,Faucet,84,20,34,D07);
insert into	ITEM	values	(I56,Hammer,19,3,60,D07);
insert into	ITEM	values	(I57,Drill,156,4,11,D07);
insert into	ITEM	values	(I58,Sander,56,11,82,D07);
insert into	ITEM	values	(I59,Saw,61,3,36,D07);
insert into	ITEM	values	(I60,Drill,188,2,94,D07);

drop table	SUPPLIER;
create table	SUPPLIER
(
	Sid CHAR(4)	PRIMARY KEY,
	Sname	VARCHAR(20),
	Location	VARCHAR(20)
	/*	IC	(Sid) < AVAIL(Sid)	*/
)
insert into	SUPPLIER	values	(S02,Apex,Maryland);
insert into	SUPPLIER	values	(S03,Best,Georgia);
insert into	SUPPLIER	values	(S04,Universal,Virginia);
insert into	SUPPLIER	values	(S05,Genuine,Florida);
insert into	SUPPLIER	values	(S06,Reliable,Minnesota);
insert into	SUPPLIER	values	(S07,Quick,Colorado);
insert into	SUPPLIER	values	(S08,Amazon,Texas);
insert into	SUPPLIER	values	(S09,Metro,Maryland);
insert into	SUPPLIER	values	(S10,Superior,Colorado);
insert into	SUPPLIER	values	(S11,Perfection,California);
insert into	SUPPLIER	values	(S12,Solutions,Florida);
insert into	SUPPLIER	values	(S13,Rapid,Oregon);
insert into	SUPPLIER	values	(S14,Always,Texas);
insert into	SUPPLIER	values	(S15,Swift,Virginia);
insert into	SUPPLIER	values	(S16,Whirlwind,Ohio);

drop table	AVAIL;
create table	AVAIL
(
	Sid CHAR(4)	PRIMARY KEY,
	Iid	CHAR(4)	PRIMARY KEY,
	Cost	number(10),
	FOREIGN KEY	(Sid) REFERENCES SUPPLIER(Sid),
	FOREIGN KEY	(Iid) REFERENCES ITEM(Iid)
)
insert into	AVAIL	values	(S01,I52,30);
insert into	AVAIL	values	(S01,I44,85);
insert into	AVAIL	values	(S01,I58,45);
insert into	AVAIL	values	(S01,I59,49);
insert into	AVAIL	values	(S01,I55,117);
insert into	AVAIL	values	(S02,I60,132);
insert into	AVAIL	values	(S02,I39,52);
insert into	AVAIL	values	(S02,I17,121);
insert into	AVAIL	values	(S02,I01,38);
insert into	AVAIL	values	(S03,I03,91);
insert into	AVAIL	values	(S03,I09,118);
insert into	AVAIL	values	(S03,I27,63);
insert into	AVAIL	values	(S03,I18,66);
insert into	AVAIL	values	(S03,I13,80);
insert into	AVAIL	values	(S03,I55,67);
insert into	AVAIL	values	(S03,I15,6);
insert into	AVAIL	values	(S03,I47,34);
insert into	AVAIL	values	(S04,I25,52);
insert into	AVAIL	values	(S04,I56,13);
insert into	AVAIL	values	(S04,I57,125);
insert into	AVAIL	values	(S04,I37,13);
insert into	AVAIL	values	(S05,I12,95);
insert into	AVAIL	values	(S05,I51,25);
insert into	AVAIL	values	(S05,I07,42);
insert into	AVAIL	values	(S05,I09,137);
insert into	AVAIL	values	(S05,I04,34);
insert into	AVAIL	values	(S06,I33,10);
insert into	AVAIL	values	(S06,I46,46);
insert into	AVAIL	values	(S06,I31,67);
insert into	AVAIL	values	(S06,I43,37);
insert into	AVAIL	values	(S07,I27,95);
insert into	AVAIL	values	(S07,I53,114);
insert into	AVAIL	values	(S07,I07,6);
insert into	AVAIL	values	(S07,I31,67);
insert into	AVAIL	values	(S07,I10,14);
insert into	AVAIL	values	(S08,I26,37);
insert into	AVAIL	values	(S08,I17,60);
insert into	AVAIL	values	(S08,I21,56);
insert into	AVAIL	values	(S08,I33,21);
insert into	AVAIL	values	(S09,I51,92);
insert into	AVAIL	values	(S09,I38,59);
insert into	AVAIL	values	(S09,I53,71);
insert into	AVAIL	values	(S09,I19,20);
insert into	AVAIL	values	(S09,I52,35);
insert into	AVAIL	values	(S09,I41,8);
insert into	AVAIL	values	(S09,I54,114);
insert into	AVAIL	values	(S09,I39,62);
insert into	AVAIL	values	(S09,I45,15);
insert into	AVAIL	values	(S09,I42,94);
insert into	AVAIL	values	(S09,I49,113);
insert into	AVAIL	values	(S09,I11,99);
insert into	AVAIL	values	(S09,I25,83);
insert into	AVAIL	values	(S09,I20,25);
insert into	AVAIL	values	(S10,I35,81);
insert into	AVAIL	values	(S10,I59,37);
insert into	AVAIL	values	(S10,I08,7);
insert into	AVAIL	values	(S10,I41,6);
insert into	AVAIL	values	(S10,I54,117);
insert into	AVAIL	values	(S10,I60,150);
insert into	AVAIL	values	(S11,I57,62);
insert into	AVAIL	values	(S11,I40,104);
insert into	AVAIL	values	(S11,I01,22);
insert into	AVAIL	values	(S11,I51,61);
insert into	AVAIL	values	(S11,I45,15);
insert into	AVAIL	values	(S12,I02,58);
insert into	AVAIL	values	(S12,I06,5);
insert into	AVAIL	values	(S12,I20,25);
insert into	AVAIL	values	(S12,I23,67);
insert into	AVAIL	values	(S12,I12,71);
insert into	AVAIL	values	(S12,I36,79);
insert into	AVAIL	values	(S13,I14,77);
insert into	AVAIL	values	(S13,I47,29);
insert into	AVAIL	values	(S13,I15,28);
insert into	AVAIL	values	(S13,I05,16);
insert into	AVAIL	values	(S13,I57,94);
insert into	AVAIL	values	(S13,I54,73);
insert into	AVAIL	values	(S14,I11,99);
insert into	AVAIL	values	(S14,I23,100);
insert into	AVAIL	values	(S14,I49,113);
insert into	AVAIL	values	(S14,I56,15);
insert into	AVAIL	values	(S14,I05,55);
insert into	AVAIL	values	(S14,I30,11);
insert into	AVAIL	values	(S14,I21,112);
insert into	AVAIL	values	(S14,I29,68);
insert into	AVAIL	values	(S15,I32,47);
insert into	AVAIL	values	(S15,I35,58);
insert into	AVAIL	values	(S15,I03,127);
insert into	AVAIL	values	(S15,I13,68);
insert into	AVAIL	values	(S15,I28,31);
insert into	AVAIL	values	(S16,I29,26);
insert into	AVAIL	values	(S16,I43,22);
insert into	AVAIL	values	(S16,I22,81);
insert into	AVAIL	values	(S16,I34,53);
insert into	AVAIL	values	(S16,I48,4);
insert into	AVAIL	values	(S16,I50,5);
insert into	AVAIL	values	(S16,I37,21);
insert into	AVAIL	values	(S16,I55,42);
insert into	AVAIL	values	(S16,I58,22);
insert into	AVAIL	values	(S16,I16,11);

drop table	PROCURE;
create table	PROCURE
(
	Tid CHAR(4)	PRIMARY KEY,
	Iid	CHAR(4),
	Sid	CHAR(4),
	ProcureDate	DATE,
	Quantity	INTEGER,
	FOREIGN KEY	(Iid, Sid) REFERENCES AVAIL(Iid, Sid)
)
insert into	PROCURE	values	(T02,I52,S01,180505,40);
insert into	PROCURE	values	(T03,I60,S02,190606,38);
insert into	PROCURE	values	(T04,I39,S02,181213,43);
insert into	PROCURE	values	(T05,I17,S02,180714,22);
insert into	PROCURE	values	(T06,I01,S02,190323,50);
insert into	PROCURE	values	(T07,I57,S11,190430,47);
insert into	PROCURE	values	(T08,I56,S14,180515,10);
insert into	PROCURE	values	(T09,I25,S04,180323,22);
insert into	PROCURE	values	(T10,I56,S04,180929,13);
insert into	PROCURE	values	(T11,I57,S04,190222,31);
insert into	PROCURE	values	(T12,I37,S04,190115,15);
insert into	PROCURE	values	(T13,I12,S05,180909,25);
insert into	PROCURE	values	(T14,I51,S05,180323,5);
insert into	PROCURE	values	(T15,I07,S05,190525,28);
insert into	PROCURE	values	(T16,I09,S05,180818,24);
insert into	PROCURE	values	(T17,I46,S06,190426,13);
insert into	PROCURE	values	(T18,I31,S06,190617,19);
insert into	PROCURE	values	(T19,I27,S07,181014,1);
insert into	PROCURE	values	(T20,I53,S07,181121,50);
insert into	PROCURE	values	(T21,I07,S07,180830,17);
insert into	PROCURE	values	(T22,I26,S08,180229,47);
insert into	PROCURE	values	(T23,I17,S08,180917,19);
insert into	PROCURE	values	(T24,I21,S08,190414,29);
insert into	PROCURE	values	(T25,I51,S09,190331,3);
insert into	PROCURE	values	(T26,I38,S09,190323,46);
insert into	PROCURE	values	(T27,I51,S09,180603,4);
insert into	PROCURE	values	(T28,I59,S10,190519,36);
insert into	PROCURE	values	(T29,I41,S10,180327,46);
insert into	PROCURE	values	(T30,I60,S10,181231,13);
insert into	PROCURE	values	(T31,I57,S11,180930,44);
insert into	PROCURE	values	(T32,I40,S11,190104,39);
insert into	PROCURE	values	(T33,I57,S11,190131,7);
insert into	PROCURE	values	(T34,I02,S12,181224,47);
insert into	PROCURE	values	(T35,I06,S12,180804,37);
insert into	PROCURE	values	(T36,I20,S12,190617,40);
insert into	PROCURE	values	(T37,I14,S13,180728,26);
insert into	PROCURE	values	(T38,I14,S13,190323,42);
insert into	PROCURE	values	(T39,I14,S13,181226,10);
insert into	PROCURE	values	(T40,I11,S14,181128,16);
insert into	PROCURE	values	(T41,I23,S14,180818,35);
insert into	PROCURE	values	(T42,I49,S14,190104,10);
insert into	PROCURE	values	(T43,I32,S15,180327,46);
insert into	PROCURE	values	(T44,I35,S15,180929,2);
insert into	PROCURE	values	(T45,I03,S15,181231,7);
insert into	PROCURE	values	(T46,I22,S16,180818,14);
insert into	PROCURE	values	(T47,I34,S16,180930,9);
insert into	PROCURE	values	(T48,I48,S16,180917,41);
insert into	PROCURE	values	(T49,I26,S08,190414,41);
insert into	PROCURE	values	(T50,I33,S06,190331,31);
insert into	PROCURE	values	(T51,I51,S09,190323,41);
insert into	PROCURE	values	(T52,I02,S12,190707,10);
insert into	PROCURE	values	(T53,I13,S15,190526,3);
insert into	PROCURE	values	(T54,I60,S02,190416,36);
insert into	PROCURE	values	(T55,I37,S04,180202,45);
insert into	PROCURE	values	(T56,I17,S08,181030,5);
insert into	PROCURE	values	(T57,I54,S10,190323,48);
insert into	PROCURE	values	(T58,I12,S12,180505,39);
insert into	PROCURE	values	(T59,I29,S14,190222,12);
insert into	PROCURE	values	(T60,I48,S16,180101,38);

drop table	PURCHASE;
create table	PURCHASE
(
	Cid CHAR(4)	PRIMARY KEY,
	Iid CHAR(4)	PRIMARY KEY,
	PurchaseDate	DATE,
	Quantity	INTEGER,
	Ccno	number(20,0),
	FOREIGN KEY	(Ccno) REFERENCES CCARD(Ccno)
)
insert into	PURCHASE	values	(C01,I42,180505,10,105379286);
insert into	PURCHASE	values	(C01,I51,190606,1,103570287);
insert into	PURCHASE	values	(C01,I31,181213,3,105379286);
insert into	PURCHASE	values	(C01,I19,180714,6,105379286);
insert into	PURCHASE	values	(C02,I60,190323,2,122428087);
insert into	PURCHASE	values	(C02,I39,190430,1,155933579);
insert into	PURCHASE	values	(C02,I17,180515,6,122428087);
insert into	PURCHASE	values	(C02,I01,180323,4,155933579);
insert into	PURCHASE	values	(C02,I41,180929,1,155933579);
insert into	PURCHASE	values	(C03,I07,190222,1,188520364);
insert into	PURCHASE	values	(C03,I27,190115,5,188520364);
insert into	PURCHASE	values	(C03,I49,180909,2,188520364);
insert into	PURCHASE	values	(C03,I31,180323,5,188520364);
insert into	PURCHASE	values	(C04,I53,190525,2,247010852);
insert into	PURCHASE	values	(C04,I55,180818,1,247010852);
insert into	PURCHASE	values	(C04,I43,190426,4,247010852);
insert into	PURCHASE	values	(C04,I52,190617,4,247010852);
insert into	PURCHASE	values	(C04,I44,181014,2,247010852);
insert into	PURCHASE	values	(C05,I43,181121,10,273726939);
insert into	PURCHASE	values	(C05,I44,180830,5,298433300);
insert into	PURCHASE	values	(C05,I11,180229,2,273726939);
insert into	PURCHASE	values	(C05,I41,180917,1,298433300);
insert into	PURCHASE	values	(C06,I12,190414,2,298433300);
insert into	PURCHASE	values	(C06,I36,190331,1,298433300);
insert into	PURCHASE	values	(C06,I29,190323,9,298433300);
insert into	PURCHASE	values	(C06,I06,180603,10,298433300);
insert into	PURCHASE	values	(C06,I13,190519,4,298433300);
insert into	PURCHASE	values	(C07,I37,180327,1,324728798);
insert into	PURCHASE	values	(C07,I49,181231,1,324728798);
insert into	PURCHASE	values	(C07,I21,180930,9,324728798);
insert into	PURCHASE	values	(C07,I25,190104,10,324728798);
insert into	PURCHASE	values	(C08,I53,190131,3,331689915);
insert into	PURCHASE	values	(C08,I54,181224,1,340528397);
insert into	PURCHASE	values	(C08,I59,180804,3,331689915);
insert into	PURCHASE	values	(C08,I32,190617,10,340528397);
insert into	PURCHASE	values	(C08,I14,180728,1,331689915);
insert into	PURCHASE	values	(C09,I02,190323,2,342655122);
insert into	PURCHASE	values	(C09,I08,181226,7,381681932);
insert into	PURCHASE	values	(C09,I38,181128,7,342655122);
insert into	PURCHASE	values	(C09,I10,180818,9,381681932);
insert into	PURCHASE	values	(C09,I33,190104,1,342655122);
insert into	PURCHASE	values	(C09,I20,180327,2,381681932);
insert into	PURCHASE	values	(C09,I34,180929,3,342655122);
insert into	PURCHASE	values	(C11,I26,181231,1,490044192);
insert into	PURCHASE	values	(C12,I48,180818,1,490044192);
insert into	PURCHASE	values	(C12,I50,180930,6,490044192);
insert into	PURCHASE	values	(C12,I52,180917,7,490044192);
insert into	PURCHASE	values	(C12,I45,190414,10,490044192);
insert into	PURCHASE	values	(C13,I45,190331,4,493597477);
insert into	PURCHASE	values	(C13,I05,190323,2,493597477);
insert into	PURCHASE	values	(C13,I23,190707,1,493597477);
insert into	PURCHASE	values	(C13,I11,190526,6,493597477);
insert into	PURCHASE	values	(C14,I33,190416,7,499544274);
insert into	PURCHASE	values	(C14,I37,180202,8,499544274);
insert into	PURCHASE	values	(C14,I58,181030,1,499544274);
insert into	PURCHASE	values	(C14,I22,190323,1,499544274);
insert into	PURCHASE	values	(C15,I25,180505,10,499544274);
insert into	PURCHASE	values	(C15,I18,190222,7,499544274);
insert into	PURCHASE	values	(C15,I39,180101,4,499544274);
insert into	PURCHASE	values	(C15,I17,181010,1,499544274);
insert into	PURCHASE	values	(C16,I31,180505,10,529551348);
insert into	PURCHASE	values	(C16,I09,190606,1,574429956);
insert into	PURCHASE	values	(C16,I35,181213,5,529551348);
insert into	PURCHASE	values	(C16,I14,180714,5,574429956);
insert into	PURCHASE	values	(C17,I04,190323,6,593653463);
insert into	PURCHASE	values	(C17,I48,190430,1,593653463);
insert into	PURCHASE	values	(C17,I24,180515,7,597299739);
insert into	PURCHASE	values	(C17,I10,180323,3,597299739);
insert into	PURCHASE	values	(C18,I13,180929,8,593653463);
insert into	PURCHASE	values	(C18,I21,190222,10,597299739);
insert into	PURCHASE	values	(C18,I22,190115,8,593653463);
insert into	PURCHASE	values	(C18,I08,180909,1,597299739);
insert into	PURCHASE	values	(C19,I16,180323,3,890136255);
insert into	PURCHASE	values	(C19,I27,190525,9,890136255);
insert into	PURCHASE	values	(C19,I36,180818,1,890136255);
insert into	PURCHASE	values	(C19,I17,190426,4,890136255);
insert into	PURCHASE	values	(C19,I46,190617,5,890136255);
insert into	PURCHASE	values	(C21,I39,181014,10,675478174);
insert into	PURCHASE	values	(C21,I18,181121,1,686827220);
insert into	PURCHASE	values	(C22,I34,180830,2,732497102);
insert into	PURCHASE	values	(C22,I39,180229,8,732497102);
insert into	PURCHASE	values	(C22,I47,180917,2,732497102);
insert into	PURCHASE	values	(C22,I09,190414,1,732497102);
insert into	PURCHASE	values	(C22,I31,190331,5,732497102);
insert into	PURCHASE	values	(C23,I47,190323,3,807738930);
insert into	PURCHASE	values	(C23,I28,180603,2,807738930);
insert into	PURCHASE	values	(C23,I50,190519,6,807738930);
insert into	PURCHASE	values	(C23,I15,180327,9,807738930);
insert into	PURCHASE	values	(C24,I42,181231,3,862793210);
insert into	PURCHASE	values	(C24,I32,180930,5,866490223);
insert into	PURCHASE	values	(C24,I16,190104,6,866490223);
insert into	PURCHASE	values	(C25,I24,190131,1,889539258);
insert into	PURCHASE	values	(C25,I06,181224,10,889539258);
insert into	PURCHASE	values	(C25,I46,180804,2,889539258);
insert into	PURCHASE	values	(C25,I54,190617,10,889539258);
insert into	PURCHASE	values	(C26,I35,180728,9,890136255);
insert into	PURCHASE	values	(C26,I12,190323,3,890136255);
insert into	PURCHASE	values	(C26,I15,181226,1,890136255);
insert into	PURCHASE	values	(C27,I56,181128,2,890864954);
insert into	PURCHASE	values	(C27,I01,180818,2,890864954);
insert into	PURCHASE	values	(C27,I20,190104,2,890864954);
insert into	PURCHASE	values	(C27,I23,180327,1,890864954);
insert into	PURCHASE	values	(C28,I29,180929,5,900015674);
insert into	PURCHASE	values	(C28,I38,181231,1,912541326);
insert into	PURCHASE	values	(C28,I57,180818,7,912541326);
insert into	PURCHASE	values	(C29,I05,180930,4,957947344);
insert into	PURCHASE	values	(C29,I19,180917,2,985216409);
insert into	PURCHASE	values	(C29,I28,190414,8,957947344);
insert into	PURCHASE	values	(C29,I41,190331,1,985216409);

drop table	USAGE;
create table	USAGE
(
	Cid CHAR(4)	PRIMARY KEY,
	Ccno	number(20,0) PRIMARY KEY,
	FOREIGN KEY	(Cid) REFERENCES CUSTOMER(Cid),
	FOREIGN KEY	(Ccno) REFERENCES CCARD(Ccno)
)
insert into	USAGE	values	(C01,105379286);
insert into	USAGE	values	(C02,122428087);
insert into	USAGE	values	(C02,155933579);
insert into	USAGE	values	(C03,181091540);
insert into	USAGE	values	(C03,188520364);
insert into	USAGE	values	(C03,196980383);
insert into	USAGE	values	(C04,196980383);
insert into	USAGE	values	(C04,247010852);
insert into	USAGE	values	(C05,273726939);
insert into	USAGE	values	(C05,298433300);
insert into	USAGE	values	(C06,298433300);
insert into	USAGE	values	(C07,324728798);
insert into	USAGE	values	(C08,331689915);
insert into	USAGE	values	(C08,340528397);
insert into	USAGE	values	(C09,342655122);
insert into	USAGE	values	(C09,381681932);
insert into	USAGE	values	(C10,406232123);
insert into	USAGE	values	(C10,441247998);
insert into	USAGE	values	(C11,441247998);
insert into	USAGE	values	(C11,490044192);
insert into	USAGE	values	(C12,490044192);
insert into	USAGE	values	(C13,493597477);
insert into	USAGE	values	(C14,499544274);
insert into	USAGE	values	(C15,499544274);
insert into	USAGE	values	(C16,529551348);
insert into	USAGE	values	(C16,574429956);
insert into	USAGE	values	(C17,593653463);
insert into	USAGE	values	(C17,597299739);
insert into	USAGE	values	(C18,593653463);
insert into	USAGE	values	(C18,597299739);
insert into	USAGE	values	(C19,890136255);
insert into	USAGE	values	(C20,627056460);
insert into	USAGE	values	(C20,645826081);
insert into	USAGE	values	(C21,675478174);
insert into	USAGE	values	(C21,686827220);
insert into	USAGE	values	(C22,732497102);
insert into	USAGE	values	(C23,807738930);
insert into	USAGE	values	(C24,862793210);
insert into	USAGE	values	(C24,866490223);
insert into	USAGE	values	(C25,866490223);
insert into	USAGE	values	(C25,889539258);
insert into	USAGE	values	(C26,890136255);
insert into	USAGE	values	(C27,890864954);
insert into	USAGE	values	(C28,900015674);
insert into	USAGE	values	(C28,912541326);
insert into	USAGE	values	(C29,957947344);
insert into	USAGE	values	(C29,985216409);
insert into	USAGE	values	(C30,985216409);
insert into	USAGE	values	(C30,900015674);

-- T05 Restaurant
-- T05.1: create restaurant table
CREATE TABLE restaurant(
	resid int,
	resname varchar2 (255) not null,
	resphonenum varchar2 (10),
	resstatus varchar2 (6), --open or closed
	resaddress varchar2 (255),
	reszipcode number (5),
	resstate varchar2 (2),
	resavgwaittime int,
	resavgreviewscore int,
	
	primary key (resid)
);

-- T05.2: create sequence for RESID
CREATE sequence res_seq
	minvalue 0
	start with 1
	increment by 1
	cache 50;

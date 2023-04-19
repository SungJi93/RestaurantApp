-- T03 Sale Tax
-- T03.1: create saletax table
CREATE TABLE salestax (
	stid int,
	ststt varchar2(2) not null,
	strt decimal not null,
	
	primary key (stid)
);

-- T03.2: create sequence for STID
CREATE sequence seq_stid
	minvalue 0
	start with 1
	increment by 1
	cache 50;

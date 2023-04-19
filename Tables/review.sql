-- T06 Review
-- T09.1: create review table
CREATE TABLE review (
	rvid int,
	cid int not null,
	resid int not null,
	rvdate date not null,
	rvscr decimal not null check (rvscr between 0.0 and 5.0),
	rvcmt varchar2 (255),
	
	primary key (rvid),
	foreign key (cid) references customer (cid),
	foreign key (resid) references restaurant (resid)
);

-- T06.2: create sequence for RVID
CREATE sequence seq_rvid
	minvalue 0
	start with 1
	increment by 1
	cache 50;

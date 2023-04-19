-- T15 Message
-- T15.1: create message table
CREATE TABLE message (
	mesid int,
	cid int,
	mtime date,
	mbody varchar2 (255),

	primary key (mesid),
	foreign key (cid) references customer (cid)
);

-- T15.2: create sequence for MESID
CREATE sequence mes_seq
	minvalue 0
	start with 1
	increment by 1
	cache 50;

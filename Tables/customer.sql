-- T01 Customer
-- T01.1: create customer table
CREATE TABLE customer (
	cid int,
	cname varchar2 (255) not null,
	cadr varchar2 (255),
	cstt varchar2 (2),
	czip varchar2 (5),
	cemail varchar2 (255),
	credit decimal,
	
	primary key (cid)
);

-- T01.2: create autosequence for CID
CREATE sequence seq_cid
	minvalue 0
	start with 1
	increment by 1
	cache 50;

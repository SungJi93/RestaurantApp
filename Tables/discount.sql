-- T02 Discount
-- T02.1: create discount table
CREATE TABLE discount (
	did int,
	discount_description varchar2 (255),
	discount_type int,

	primary key (did)
);

-- T02.2: create autosequence for DID
CREATE sequence discount_seq
	minvalue 0
	start with 1
	increment by 1
	cache 50;

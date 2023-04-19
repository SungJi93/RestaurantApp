-- T10 Cart
-- T10.1: create cart table
CREATE TABLE cart(
	cartid int,
	cid int,
	resid int,
	
	primary key (cartid),
	foreign key (cid) references customer,
	foreign key (resid) references restaurant
);

-- T10.2: create sequence for CARTID
CREATE sequence seq_cart
	minvalue 0
	start with 1
	increment by 1
	cache 50;

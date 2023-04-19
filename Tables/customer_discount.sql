-- T04 Customer Discount
-- T04.1: create customer_discount table
CREATE TABLE customer_discount (
	cid int not null,
	did int not null,
	discount_start_date date not null,
	discount_end_date date not null,

	primary key (cid, did),
	foreign key (cid) references customer(cid),
	foreign key (did) references discount(did)
);

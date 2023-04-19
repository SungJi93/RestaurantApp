-- T14 Payment
-- T14.1: create payment table
CREATE TABLE payment (
	payid int,
	orderid int,
	cid int,
	pamount number(5,2),
	method varchar(255)
	constraint check_payment check(method in ('Credit/Debit Card','Apple Pay','PayPal')) not null,
	
	primary key (payid),
	foreign key (orderid) references itemOrder (orderid),
	foreign key (cid) references customer (cid)
);

-- T14.2: create sequence for PAYID
CREATE sequence pay_seq
	minvalue 0
	start with 1
	increment by 1
	cache 50;

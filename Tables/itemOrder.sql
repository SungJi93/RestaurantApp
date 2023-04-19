-- T12 Order
-- T12.1: create itemorder table
CREATE TABLE itemOrder(
	orderid int,
	cid int, 
	resid int,
	order_time timestamp,
	delivery_time timestamp,
	estimated_time timestamp,
	status int,
	payment_status int, 
	total_cost decimal (5,2), 
	delivery_method int,
	
	primary key (orderid),
	foreign key (cid) references customer,
	foreign key (resid) references restaurant, 
	constraint check_order_delivery_method check(delivery_method in (1, 2)),
	constraint check_order_status check(status in (1, 2, 3))
);

-- T12.2: create sequence for ORDERID
CREATE sequence seq_itemOrder
	minvalue 0
	start with 1
	increment by 1
	cache 50;

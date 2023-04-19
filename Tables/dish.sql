-- T07 Dish
-- T07.1: create dish table
CREATE TABLE dish(
	dishid int,
	resid int,
	dishname varchar2 (30),
	dishprice decimal (5,2),
	
	primary key (dishid),
	foreign key (resid) references restaurant
);

-- T07.2: create sequence for DISHID
CREATE sequence dish_seq
	minvalue 0
	start with 1
	increment by 1
	cache 50;

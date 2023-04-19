-- T13 Dish Order
-- T13.1: create dish_order table
CREATE TABLE dish_order (
	orderid int,
	dishid  int,
	
	primary key (orderid, dishid),
	foreign key (orderid) references itemOrder (orderid),
	foreign key (dishid) references dish (dishid)
);

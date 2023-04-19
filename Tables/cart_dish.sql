-- T11 Cart Dish
-- T11.1: create cart_dish table
CREATE TABLE cart_dish(
	cartid int,
	resid int,
	dishid int,
	quantity int,
	
	foreign key (cartid) references cart,
	foreign key (resid) references restaurant,
	foreign key (dishid) references dish
);

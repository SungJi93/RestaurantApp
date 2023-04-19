-- T09 Restaurant Category
-- T09.1: create res_cat table
CREATE TABLE res_cat(
	catid int,
	resid int,

	primary key (catid, resid),
	foreign key (catid) references category,
	foreign key (resid) references restaurant
);

-- DataBank - Last updated 04/19/2023 07:45PM EST

-- T02.3: insert date to discount
INSERT INTO discount (did, discount_description, discount_type) 
	VALUES (discount_seq.nextval, 'Free delivery', 1);
INSERT INTO discount (did, discount_description, discount_type) 
	VALUES (discount_seq.nextval, '10% off total charge', 2);
INSERT INTO discount (did, discount_description, discount_type) 
	VALUES (discount_seq.nextval, '20% off total charge', 3);

-- T03.3: insert data to saletax
INSERT INTO salestax
	VALUES (seq_stid.nextval, 'AL', '0.0400');
INSERT INTO salestax
	VALUES (seq_stid.nextval, 'AK', 0.0000);
INSERT INTO salestax
	VALUES (seq_stid.nextval, 'DC', 0.0600);
INSERT INTO salestax
	VALUES (seq_stid.nextval, 'MA', 0.0550);
INSERT INTO salestax
	VALUES (seq_stid.nextval, 'MD', 0.0600);
INSERT INTO salestax
	VALUES (seq_stid.nextval, 'NY', 0.0450);
INSERT INTO salestax
	VALUES (seq_stid.nextval, 'PA', 0.0600);
INSERT INTO salestax
	VALUES (seq_stid.nextval, 'VA', 0.0530);
INSERT INTO salestax
	VALUES (seq_stid.nextval, 'TX', 0.0625);

-- T04.2: insert data to customer_discount
INSERT INTO customer_discount (cid, did, discount_start_date, discount_end_date) 
	VALUES (1, 1, date '2023-02-12', date '2023-02-18');
INSERT INTO customer_discount (cid, did, discount_start_date, discount_end_date) 
	VALUES (2, 2, date '2023-06-11', date '2023-06-17');
INSERT INTO customer_discount (cid, did, discount_start_date, discount_end_date) 
	VALUES (3, 3, date '2023-01-09', date '2023-02-15');

-- T05.3: insert data to restaurant
INSERT INTO restaurant 
	VALUES (res_seq.nextval, 'Bobs Pizza', '4434568171', 'open', '123 street', '46172', 'MD', null, null);
INSERT INTO restaurant 
	VALUES(res_seq.nextval, 'Timmy Tams', '4637263758', 'closed', '123 ave', '74582', 'NY', null, null);
INSERT INTO restaurant 
	VALUES(res_seq.nextval, 'Burger Place', '7584726486', 'open', '123 drive', '18374', 'MA', null, null);

-- T06.3: insert data to review
INSERT INTO review
	VALUES (seq_rvid.nextval, 3, 3, date '2023-02-01', 1.0, 'Terrible');
INSERT INTO review
	VALUES (seq_rvid.nextval, 1, 1, date '2023-02-02', 5.0, 'very good');
INSERT INTO review
	VALUES (seq_rvid.nextval, 2, 2, date '2023-02-04', 4.0, 'It is okay');
INSERT INTO review
	VALUES (seq_rvid.nextval, 1, 2, date '2023-02-02', 4.5, 'food is good, service is okay');

-- T07.3: insert data to dish
INSERT INTO dish 
	VALUES (dish_seq.nextval, 1, 'Cheese Pizza', 9.00);
INSERT INTO dish 
	VALUES (dish_seq.nextval, 1, 'Pineapple Pizza', 10.00);
INSERT INTO dish 
	VALUES (dish_seq.nextval, 1, 'Vegan Pizza', 19.99);
INSERT INTO dish 
	VALUES (dish_seq.nextval, 2, 'Tams', 2);
INSERT INTO dish 
	VALUES (dish_seq.nextval, 3, 'Veggie Burger', 35);

-- T08.3: insert data to category
INSERT INTO category 
	VALUES (cat_seq.nextval, 'Italian');
INSERT INTO category 
	VALUES (cat_seq.nextval, 'Fast Food');
INSERT INTO category 
	VALUES (cat_seq.nextval, 'American');
INSERT INTO category 
	VALUES (cat_seq.nextval, 'French');

-- T09.3: insert data to res_cat 
INSERT INTO res_cat 
	VALUES (1, 1);
INSERT INTO res_cat 
	VALUES (2, 2);
INSERT INTO res_cat 
	VALUES (3, 3);

-- T10.3: insert data to cart
INSERT INTO cart
	VALUES (seq_cart.nextval, 1, 1);
INSERT INTO cart
	VALUES (seq_cart.nextval, 1, 2);
INSERT INTO cart
	VALUES (seq_cart.nextval, 2, 2);

-- T11.3: Doesn't exsit

-- T12.3: insert data to itemorder
INSERT INTO itemOrder
	VALUES (seq_itemOrder.nextval, 1, 1, timestamp '2023-3-12 09:00:30.75', timestamp '2023-3-12 09:30:30.75', timestamp '2023-3-12 09:20:30.75', 1, 1, 20.20, 1);
INSERT INTO itemOrder
	VALUES (seq_itemOrder.nextval, 2, 2, timestamp '2023-3-12 10:00:30.75', null, timestamp '2023-3-12 10:15:30.75', 1, 2, 50.25, 2);
INSERT INTO itemOrder
	VALUES (seq_itemOrder.nextval, 3, 2, timestamp '2023-3-12 12:15:30.75', null, null, 3, 2, 0, 2);

-- T13.2: insert data to dish_order
INSERT INTO dish_order 
	VALUES (1,1);
INSERT INTO dish_order 
	VALUES (2,2);
INSERT INTO dish_order 
	VALUES (3,3);

-- T14.3: insert data to payment
INSERT INTO payment 
	VALUES (pay_seq.nextval,1,1,76.88,'Credit/Debit Card');
INSERT INTO payment 
	VALUES (pay_seq.nextval,2,2,64.12,'Credit/Debit Card');
INSERT INTO payment 
	VALUES (pay_seq.nextval,3,3,97.57,'Apple Pay');

-- T15.3: insert data to message
INSERT INTO message 
	VALUES (mes_seq.nextval, 1, date '2023-1-28', 'Receipt concerns with previous visit to the restaurant');
INSERT INTO message 
	VALUES (mes_seq.nextval, 2, date '2023-1-30', 'A personal message thanking the head chef.');
INSERT INTO message 
	VALUES (mes_seq.nextval,3, date '2023-2-15', 'Is this restaurant open on weekends?');

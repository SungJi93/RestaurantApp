-- DataBank - Last updated 04/19/2023 07:45PM EST

-- T02.3: insert date to discount
DECLARE
  v_cid NUMBER;
BEGIN
  INSERT INTO discount (did, discount_description, discount_type) 
	VALUES (discount_seq.nextval, 'Free delivery', 1);
  
  INSERT INTO discount (did, discount_description, discount_type) 
	VALUES (discount_seq.nextval, '10% off total charge', 2);
  
  INSERT INTO discount (did, discount_description, discount_type) 
	VALUES (discount_seq.nextval, '20% off total charge', 3);
  
  INSERT INTO discount (did, discount_description, discount_type) 
	VALUES (discount_seq.nextval, '30% off total charge', 4);
  
  INSERT INTO discount (did, discount_description, discount_type) 
	VALUES (discount_seq.nextval, '40% off total charge', 5);
  
  INSERT INTO discount (did, discount_description, discount_type) 
	VALUES (discount_seq.nextval, '50% off total charge', 6);
    
  COMMIT;
  
  DBMS_OUTPUT.PUT_LINE('Rows inserted successfully.');
END;
/

select * from discount;

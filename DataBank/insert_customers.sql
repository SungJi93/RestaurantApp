-- DataBank - Last updated 05/04/2023 07:47PM EST

-- T01.3: insert data to customer
CREATE OR REPLACE FUNCTION insert_customers RETURN NUMBER IS
BEGIN
  -- Inserting the values into the customer table
  INSERT INTO customer VALUES (seq_cid.nextval, 'Wendi Robles', '202 W. Shore Ave', 'OH', 43612, 'rattha@problemstory.us', 0);
  INSERT INTO customer VALUES (seq_cid.nextval, 'Darnell House', '7765 Taklin Hill Dr.', 'CA', 95301, 'fxllipek@mtcxmail.com', 350.00);
  INSERT INTO customer VALUES (seq_cid.nextval, 'Korey Booth', '67 Sycamore St', 'GA', 31021, 'tavaira@kientao.online', 200.00);
  INSERT INTO customer VALUES (seq_cid.nextval, 'Milly Jenkins', '13458 Centennial Lane', 'MD', 21042, 'milly@gmail.com', 15.00);
  INSERT INTO customer VALUES (seq_cid.nextval, 'Sam Houston', '4277 Winsor mills rd.', 'MD', 22442, 'sam@gmail.com', 1.00);
  INSERT INTO customer VALUES (seq_cid.nextval, 'Ben Franklin', '84 Milky way', 'MD', 21444, 'benf@gmail.com', 0);
  
  RETURN SQL%ROWCOUNT;
END;
/

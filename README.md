# RestaurantApp
UMBC IS420 23SP Project. Restaurant review app that has multiple sql tables and interconnected.

This app includes serveral features as followed:

Feature 1
Create a new customer. Input includes customer name, address, state, zip, email. This feature checks whether any customer with the same email exists. If so, it prints a message 'the client already exists' and updates address, state, and zip. Otherwise, it generates a new customer ID (using sequence) and inserts a row into the customer table with given ID, name, address, state, zip, email and credit (as zero). Please also print out the new customer ID.
 
Feature 2
Given a customer email, first check if there is a customer with that email. If not, print a message now such as the customer. Otherwise print out the profile of the customer, including name, address, state, zip code, email, credit, total number of orders with status 2 (delivered) in the last six months and total amount spent (sum of total cost for orders with status 2) in the last six months. 

Feature 3
Search for a restaurant by category. Input is a part of category name (e.g., for fast food the input could be just 'fast'). Please print out the name, average review score, average wait time, and zip code for restaurants that are open and match the input category name.

Feature 4
Show dishes offered by a restaurant. Input is a restaurant ID. The procedure first checks whether this is a valid restaurant ID. If not, please print a message ‘no such restaurant’. Otherwise print out all dishes in this restaurant, along with dish name and price.

Feature 5
Show all dishes in a shopping cart. Input is a cart ID. First check whether that cart ID is valid. If not, print a message invalid cart ID. If the ID is valid, print out every dish in the shopping cart, including dish name, price, quantity.

Feature 6
Remove a dish from the shopping cart. Input includes dish ID and cart ID. 
First check whether the cart with the given ID has that dish. If not, print a message 'Invalid input'. If the input ID is valid, check the quantity of that dish. If it is more than one, then reduce the quantity of that dish from the cart and print a message saying ‘quantity reduced’. If the quantity is one, delete that row from the cart and print out 'dish removed'.

Feature 7
Update status of an order. Input is order ID, new status (1 is in progress, 2 is delivered, 3 is canceled), and input time. The procedure does the following:
First check whether the order ID is valid. If not, print a message saying invalid order id.  
Update the status of the order to the input status. In case new status is in progress, no additional action is needed. 
In case the new status is ‘delivered’, insert a message into the message table for the corresponding customer, with message time as input time, and a message body saying 'Your order X has been delivered!' where X is the order ID. 
In case the new status is ‘canceled’, update the status to canceled, insert a message into the message table for the corresponding customer, with message time as input time, and a message body saying 'Your order X has been canceled and refund issued!' where X is the order ID. Please also insert into the payment table a refund record with a new payment ID, the corresponding customer id and order id, time as input time, and amount as the negative of the total amount in the order, and payment method the same as the original payment record.    

Feature 8
Enter a review. Input includes a customer ID, a restaurant ID, a review date, a review score and review comment. This procedure does the following:
first check if the customer ID is valid. If not, print a message saying invalid customer ID. 
Check if the restaurant ID is valid. If not, print a message saying invalid restaurant ID. 
if both are valid, insert a row into the review table with the input customer id, restaurant ID, review date, score and comment. 
update the average review score of the restaurant to reflect the new review.

Feature 9
Display all reviews of a restaurant. Input is restaurant ID. First check whether the restaurant ID is valid. If not, print a message. Then print out all reviews of the restaurant, including review date, score, and comment.

Feature 10: 
Add a dish to the shopping cart. Input includes customer ID, restaurant ID, and a dish ID. 
First check whether the customer ID is valid. If not, print out a message with no such customer. 
Then check whether the restaurant ID is valid and the restaurant is open. If not print out invalid restaurant ID or the restaurant is closed. 
Finally check whether the dish belongs to the input restaurant. If it does not print out an invalid dish ID. 
Otherwise where there is an existing shopping cart for the customer. If the cart does not exist, create a new cart for the customer and restaurant and print out the new cart ID.
Now you can check whether the dish is already in the cart. If so, just increase the quantity by one. Otherwise inserting a new row to the table keeps dishes in a cart.
Lead: Jawan Blunt

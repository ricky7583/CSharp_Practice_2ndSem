	

SELECT DISTINCT firstname, lastname

 FROM customers 

 WHERE customers.customer# = orders.customer#

   AND orders.order# = orderitems.order#

   AND orderitems.ISBN = books.ISBN

   AND state  = 'GA' OR  'FL'

 GROUP BY orders.order#, firstname, lastname

 HAVING SUM(retail*quantity) > 80;
	

SELECT DISTINCT firstname, lastname

 FROM customers, books, orders, orderitems

 WHERE c.customer# = orders.customer#

   AND orders.order# = orderitems.order#

   AND orderitems.ISBN = books.ISBN

   AND (state = 'GA' , state = 'FL')

 GROUP BY orders.order#, firstname, lastname;
	

SELECT DISTINCT firstname, lastname

 FROM customers, books, orders, orderitems

 WHERE customers.customer# = orders.customer#

   AND orders.order# = orderitems.order#

   AND orderitems.ISBN = books.ISBN

GROUP BY o.order#, firstname, lastname

 HAVING SUM(retail*quantity) > 80;
	

SELECT DISTINCT firstname, lastname

 FROM customers, books, orders, orderitems

 WHERE customers.customer# = orders.customer#

   AND orders.order# = orderitems.order#

   AND orderitems.ISBN = books.ISBN

   AND (state = 'GA' OR state = 'FL')

 GROUP BY orders.order#, firstname, lastname

 HAVING SUM(retail*quantity) > 80;
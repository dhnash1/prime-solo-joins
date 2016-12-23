--begin assignment
--1.Get all customers and their addresses
SELECT * FROM customers
INNER JOIN addresses
ON customers.id=addresses.customer_id;
--2.get all orders and their line items
Select orders.order_date, orders.total, line_items.unit_price, line_items.quantity FROM orders
RIGHT JOIN line_items
ON orders.id=line_items.order_id;
--3.Where the cheetoes at?
select warehouse.warehouse
from warehouse
inner join warehouse_product
on warehouse.id=warehouse_product.warehouse_id
where warehouse_product.product_id = 5;
--4.have some pepsi with that
select warehouse.warehouse
from warehouse
inner join warehouse_product
on warehouse.id=warehouse_product.warehouse_id
where warehouse_product.product_id = 6;
--5.Orders per customer
select  first_name,last_name
from customers
inner join addresses
on addresses.customer_id=customers.id
inner join orders
on orders.address_id=addresses.id;
--6.how many customers
select count(distinct id) from customers;
--7. how many products?
select count(distinct id) from products;
--8.how many pepsi?
SELECT sum( on_hand)
FROM warehouse_product
where product_id=6;

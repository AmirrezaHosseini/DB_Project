use final_project;

SELECT * FROM product;

SELECT * FROM Customer , Profile where cid = Customer_cid ;

SELECT DISTINCT category FROM product ;

SELECT * FROM Cart, Cart_has_Product, Product;

SELECT * FROM customer , cart , invoice inv 
where month(date) = 1 and cid = Customer_cid
order by inv.total_cost DESC LIMIT 10;

SELECT * FROM Cart , Product , Cart_has_Product
order by amount desc limit 10;

SELECT * FROM product where discount_percent > 15 ;

SELECT sname FROM product , suplier , product_has_suplier
where pid = Product_pid and contract_num = Suplier_contract_num and pid = 1;

SELECT sname FROM product , suplier , product_has_suplier phs
where pid = Product_pid and contract_num = Suplier_contract_num and pid = 1
order by phs.price ASC LIMIT 1 ;

-- SELECT * FROM customer , cart , invoice 
-- where cid = Customer_cid and cartid = Cart_cartid
-- order by invoice.date desc limit 10;


SELECT amount FROM product , cart_has_product chp , cart , invoice inv
where pid = chp.Product_pid and cartid = chp.Cart_cartid and cartid = inv.Cart_cartid
and month(inv.date) = 1 and pid = 1;

SELECT month(date) , avg(total_cost) FROM invoice 
group by month(date); 


SELECT cname FROM customer , profile 
where cid = Customer_cid and city = "Mashhad" ;

SELECT sname FROM suplier
where city = "Mashhad";


use final_project;

UPDATE `final_project`.`Suplier`
SET
`city` = 'mashhad'
WHERE `contract_num` = 1;
UPDATE `final_project`.`Suplier`
SET
`city` = 'mashhad'
WHERE `contract_num` = 1;
UPDATE `final_project`.`Suplier`
SET
`city` = 'esfahan'
WHERE `contract_num` = 2;
UPDATE `final_project`.`Suplier`
SET
`city` = 'qom'
WHERE `contract_num` = 3;
UPDATE `final_project`.`Suplier`
SET
`city` = 'tehran'
WHERE `contract_num` = 4;
UPDATE `final_project`.`Suplier`
SET
`city` = 'rasht'
WHERE `contract_num` = 5;
UPDATE `final_project`.`Suplier`
SET
`city` = 'ahwaz'
WHERE `contract_num` = 6;
UPDATE `final_project`.`Suplier`
SET
`city` = 'tehran'
WHERE `contract_num` = 7;







*******************************************************************
-- all comments
select pname, C.* 
from Comment C, Product P
where C.pid = P.pid;

*******************
-- top 3 most rated comments
select pname, C.* 
from Comment C, Product P
where C.pid = P.pid
order by C.point desc
limit 3;
*******************
-- top 3 least rated comments
select pname, C.* 
from Comment C, Product P
where C.pid = P.pid
order by C.point ASC
limit 3;
*******************

-- products sale
select pname, amount 
from Product p, Cart_has_Product chp, Cart c, Invoice i
where i.Cart_cartid = c.cartid and chp.Cart_cartid = c.cartid and chp.Product_pid = p.pid and month(i.date) = 11;
****************************
-- users of a city
select * 
from User
where city like '%Mashhad%';
****************************
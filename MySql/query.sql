use final_project;

SELECT * FROM product;

SELECT * FROM customer , profile where cid = Customer_cid ;

SELECT DISTINCT category FROM product ;

SELECT * FROM cart WHERE Customer_cid = 1 ;

SELECT * FROM customer , cart , invoice inv 
where month(date) = 1 and cid = Customer_cid
order by inv.total_cost DESC LIMIT 10;

-- SELECT * FROM cart , product , cart_has_product
-- order by amount desc limit 10;

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









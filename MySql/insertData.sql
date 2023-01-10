START TRANSACTION;
INSERT INTO `final_project`.`customer` (`cid`, `cname`) VALUES ('1', 'Amirreza');
INSERT INTO `final_project`.`customer` (`cid`, `cname`) VALUES ('2', 'reza');
INSERT INTO `final_project`.`customer` (`cid`, `cname`) VALUES ('3', 'mahdi');
INSERT INTO `final_project`.`customer` (`cid`, `cname`) VALUES ('4', 'Arash');
INSERT INTO `final_project`.`customer` (`cid`, `cname`) VALUES ('5', 'zahra');
INSERT INTO `final_project`.`customer` (`cid`, `cname`) VALUES ('6', 'karim');
INSERT INTO `final_project`.`customer` (`cid`, `cname`) VALUES ('7', 'Ali');
INSERT INTO `final_project`.`customer` (`cid`, `cname`) VALUES ('8', 'rahim');
INSERT INTO `final_project`.`customer` (`cid`, `cname`) VALUES ('9', 'morteza');
INSERT INTO `final_project`.`customer` (`cid`, `cname`) VALUES ('10', 'ayda');

COMMIT;

START TRANSACTION;
INSERT INTO `final_project`.`profile` (`pid`, `Customer_cid`, `username`, `address`, `phone`, `gender`, `email`) VALUES ('1', '1', 'Amirreza_', 'masss', '091209', 'Male', 'evrv@.com');
INSERT INTO `final_project`.`profile` (`pid`, `Customer_cid`, `username`, `address`, `phone`, `gender`, `email`) VALUES ('2', '2', 'reza_', 'marv', '09145', 'Male', 'evrv@.com');
INSERT INTO `final_project`.`profile` (`pid`, `Customer_cid`, `username`, `address`, `phone`, `gender`, `email`) VALUES ('3', '3', 'mahdi_', 'pos', '09056', 'Male', 'evrv@.com');
INSERT INTO `final_project`.`profile` (`pid`, `Customer_cid`, `username`, `address`, `phone`, `gender`, `email`) VALUES ('4', '4', 'Arash_', 'prkmsss', '091278', 'Male', 'evrv@.com');
INSERT INTO `final_project`.`profile` (`pid`, `Customer_cid`, `username`, `address`, `phone`, `gender`, `email`) VALUES ('5', '5', 'zahra_', 'vkkkekk', '0912455', 'Male', 'evrv@.com');
INSERT INTO `final_project`.`profile` (`pid`, `Customer_cid`, `username`, `address`, `phone`, `gender`, `email`) VALUES ('6', '6', 'karim_', 'ekeff', '091244', 'Male', 'evrv@.com');
INSERT INTO `final_project`.`profile` (`pid`, `Customer_cid`, `username`, `address`, `phone`, `gender`, `email`) VALUES ('7', '7', 'Ali_', 'lls', '09982', 'Male', 'evrv@.com');
INSERT INTO `final_project`.`profile` (`pid`, `Customer_cid`, `username`, `address`, `phone`, `gender`, `email`) VALUES ('8', '8', 'rahim_', 'dlcss', '099912', 'Male', 'evrv@.com');
INSERT INTO `final_project`.`profile` (`pid`, `Customer_cid`, `username`, `address`, `phone`, `gender`, `email`) VALUES ('9', '9', 'morteza_', 'wwqasss', '091772', 'Male', 'evrv@.com');
INSERT INTO `final_project`.`profile` (`pid`, `Customer_cid`, `username`, `address`, `phone`, `gender`, `email`) VALUES ('10', '10', 'ayda_', 'poorsss', '091286', 'Male', 'evrv@.com');


COMMIT;

START TRANSACTION;
INSERT INTO `final_project`.`cart` (`cartid`, `Customer_cid`, `status`, `total_cost`) VALUES ('01', '1', '0', '0');
INSERT INTO `final_project`.`cart` (`cartid`, `Customer_cid`, `status`, `total_cost`) VALUES ('02', '2', '0', '0');
INSERT INTO `final_project`.`cart` (`cartid`, `Customer_cid`, `status`, `total_cost`) VALUES ('03', '3', '0', '0');
INSERT INTO `final_project`.`cart` (`cartid`, `Customer_cid`, `status`, `total_cost`) VALUES ('04', '4', '0', '0');
INSERT INTO `final_project`.`cart` (`cartid`, `Customer_cid`, `status`, `total_cost`) VALUES ('05', '5', '0', '0');
INSERT INTO `final_project`.`cart` (`cartid`, `Customer_cid`, `status`, `total_cost`) VALUES ('06', '6', '0', '0');
INSERT INTO `final_project`.`cart` (`cartid`, `Customer_cid`, `status`, `total_cost`) VALUES ('07', '7', '0', '0');
INSERT INTO `final_project`.`cart` (`cartid`, `Customer_cid`, `status`, `total_cost`) VALUES ('08', '8', '0', '0');
INSERT INTO `final_project`.`cart` (`cartid`, `Customer_cid`, `status`, `total_cost`) VALUES ('09', '9', '0', '0');
INSERT INTO `final_project`.`cart` (`cartid`, `Customer_cid`, `status`, `total_cost`) VALUES ('010', '10', '0', '0');



COMMIT;

START TRANSACTION;
INSERT INTO `final_project`.`invoice` (`Cart_cartid`, `total_cost`, `date`) VALUES ('01', '0', '2022/12/19');
INSERT INTO `final_project`.`invoice` (`Cart_cartid`, `total_cost`, `date`) VALUES ('02', '0', '2022/12/26');
INSERT INTO `final_project`.`invoice` (`Cart_cartid`, `total_cost`, `date`) VALUES ('03', '0', '2022/12/29');
INSERT INTO `final_project`.`invoice` (`Cart_cartid`, `total_cost`, `date`) VALUES ('04', '0', '2022/12/24');
INSERT INTO `final_project`.`invoice` (`Cart_cartid`, `total_cost`, `date`) VALUES ('05', '0', '2022/12/19');
INSERT INTO `final_project`.`invoice` (`Cart_cartid`, `total_cost`, `date`) VALUES ('06', '0', '2022/12/18');
INSERT INTO `final_project`.`invoice` (`Cart_cartid`, `total_cost`, `date`) VALUES ('07', '0', '2022/12/28');
INSERT INTO `final_project`.`invoice` (`Cart_cartid`, `total_cost`, `date`) VALUES ('08', '0', '2022/12/29');
INSERT INTO `final_project`.`invoice` (`Cart_cartid`, `total_cost`, `date`) VALUES ('09', '0', '2022/12/27');
INSERT INTO `final_project`.`invoice` (`Cart_cartid`, `total_cost`, `date`) VALUES ('010', '0', '2022/12/24');


COMMIT;

START TRANSACTION;
INSERT INTO `final_project`.`product` (`pid`, `pname`, `available_amount`, `discount_percent`, `pruduce_date`, `expire_date`) VALUES ('1', 'panel', '120', '15', '2022/10/9', '2023/10/9');
INSERT INTO `final_project`.`product` (`pid`, `pname`, `available_amount`, `discount_percent`, `pruduce_date`, `expire_date`) VALUES ('2', 'Iphone 12', '12', '0', '2021/10/9', '2023/10/9');
INSERT INTO `final_project`.`product` (`pid`, `pname`, `available_amount`, `discount_percent`, `pruduce_date`, `expire_date`) VALUES ('3', 'Iphone 12 pro', '15', '0', '2021/10/9', '2023/10/9');
INSERT INTO `final_project`.`product` (`pid`, `pname`, `available_amount`, `discount_percent`, `pruduce_date`, `expire_date`) VALUES ('4', 'S22', '14', '15', '2022/6/9', '2023/10/9');
INSERT INTO `final_project`.`product` (`pid`, `pname`, `available_amount`, `discount_percent`, `pruduce_date`, `expire_date`) VALUES ('5', 'S22 Ultra', '10', '10', '2022/6/9', '2023/10/9');
INSERT INTO `final_project`.`product` (`pid`, `pname`, `available_amount`, `discount_percent`, `pruduce_date`, `expire_date`) VALUES ('6', 'LCD', '26', '25', '2020/10/9', '2023/10/9');
INSERT INTO `final_project`.`product` (`pid`, `pname`, `available_amount`, `discount_percent`, `pruduce_date`, `expire_date`) VALUES ('7', 'LED', '68', '20', '2022/4/9', '2023/10/9');
INSERT INTO `final_project`.`product` (`pid`, `pname`, `available_amount`, `discount_percent`, `pruduce_date`, `expire_date`) VALUES ('8', 'Printer', '31', '35', '2021/7/9', '2023/10/9');
INSERT INTO `final_project`.`product` (`pid`, `pname`, `available_amount`, `discount_percent`, `pruduce_date`, `expire_date`) VALUES ('9', 'Ideapad 340v', '12', '15', '2022/2/9', '2023/10/9');
INSERT INTO `final_project`.`product` (`pid`, `pname`, `available_amount`, `discount_percent`, `pruduce_date`, `expire_date`) VALUES ('10', 'Ideapad 380v', '17', '15', '2022/3/9', '2023/10/9');
INSERT INTO `final_project`.`product` (`pid`, `pname`, `available_amount`, `discount_percent`, `pruduce_date`, `expire_date`) VALUES ('11', 'Mathmathical Calculator', '84', '40', '2020/8/9', '2023/10/9');
INSERT INTO `final_project`.`product` (`pid`, `pname`, `available_amount`, `discount_percent`, `pruduce_date`, `expire_date`) VALUES ('12', 'Macbook pro', '15', '10', '2022/7/9', '2023/10/9');
INSERT INTO `final_project`.`product` (`pid`, `pname`, `available_amount`, `discount_percent`, `pruduce_date`, `expire_date`) VALUES ('13', 'Macbook Air', '23', '18', '2022/6/9', '2023/10/9');
INSERT INTO `final_project`.`product` (`pid`, `pname`, `available_amount`, `discount_percent`, `pruduce_date`, `expire_date`) VALUES ('14', 'IMac 2022', '7', '0', '2022/3/9', '2023/10/9');
INSERT INTO `final_project`.`product` (`pid`, `pname`, `available_amount`, `discount_percent`, `pruduce_date`, `expire_date`) VALUES ('15', 'Keyboard', '42', '25', '2021/3/9', '2023/10/9');
INSERT INTO `final_project`.`product` (`pid`, `pname`, `available_amount`, `discount_percent`, `pruduce_date`, `expire_date`) VALUES ('16', 'Samrt Tv', '16', '30', '2022/2/9', '2023/10/9');

COMMIT;

START TRANSACTION;
INSERT INTO `final_project`.`cart_has_product` (`Cart_cartid`, `Product_pid`, `amount`, `unit_price`, `total_price`) VALUES ('01', '2', '1', '990', '990');
INSERT INTO `final_project`.`cart_has_product` (`Cart_cartid`, `Product_pid`, `amount`, `unit_price`, `total_price`) VALUES ('01', '6', '1', '590', '590');
INSERT INTO `final_project`.`cart_has_product` (`Cart_cartid`, `Product_pid`, `amount`, `unit_price`, `total_price`) VALUES ('02', '4', '2', '890', '1780');
INSERT INTO `final_project`.`cart_has_product` (`Cart_cartid`, `Product_pid`, `amount`, `unit_price`, `total_price`) VALUES ('03', '8', '5', '200', '1000');
INSERT INTO `final_project`.`cart_has_product` (`Cart_cartid`, `Product_pid`, `amount`, `unit_price`, `total_price`) VALUES ('04', '3', '1', '1090', '1090');
INSERT INTO `final_project`.`cart_has_product` (`Cart_cartid`, `Product_pid`, `amount`, `unit_price`, `total_price`) VALUES ('04', '16', '1', '690', '690');
INSERT INTO `final_project`.`cart_has_product` (`Cart_cartid`, `Product_pid`, `amount`, `unit_price`, `total_price`) VALUES ('05', '11', '1', '90', '90');
INSERT INTO `final_project`.`cart_has_product` (`Cart_cartid`, `Product_pid`, `amount`, `unit_price`, `total_price`) VALUES ('05', '9', '2', '790', '1480');
INSERT INTO `final_project`.`cart_has_product` (`Cart_cartid`, `Product_pid`, `amount`, `unit_price`, `total_price`) VALUES ('06', '12', '1', '1300', '1300');
INSERT INTO `final_project`.`cart_has_product` (`Cart_cartid`, `Product_pid`, `amount`, `unit_price`, `total_price`) VALUES ('07', '14', '1', '1450', '1450');
INSERT INTO `final_project`.`cart_has_product` (`Cart_cartid`, `Product_pid`, `amount`, `unit_price`, `total_price`) VALUES ('08', '15', '1', '160', '1600');
INSERT INTO `final_project`.`cart_has_product` (`Cart_cartid`, `Product_pid`, `amount`, `unit_price`, `total_price`) VALUES ('09', '5', '1', '1190', '1190');
INSERT INTO `final_project`.`cart_has_product` (`Cart_cartid`, `Product_pid`, `amount`, `unit_price`, `total_price`) VALUES ('09', '1', '3', '120', '360');
INSERT INTO `final_project`.`cart_has_product` (`Cart_cartid`, `Product_pid`, `amount`, `unit_price`, `total_price`) VALUES ('010', '7', '1', '850', '850');
INSERT INTO `final_project`.`cart_has_product` (`Cart_cartid`, `Product_pid`, `amount`, `unit_price`, `total_price`) VALUES ('09', '12', '1', '1300', '1300');
INSERT INTO `final_project`.`cart_has_product` (`Cart_cartid`, `Product_pid`, `amount`, `unit_price`, `total_price`) VALUES ('04', '5', '1', '1190', '1190');
INSERT INTO `final_project`.`cart_has_product` (`Cart_cartid`, `Product_pid`, `amount`, `unit_price`, `total_price`) VALUES ('010', '2', '1', '990', '990');
INSERT INTO `final_project`.`cart_has_product` (`Cart_cartid`, `Product_pid`, `amount`, `unit_price`, `total_price`) VALUES ('010', '1', '1', '90', '90');

COMMIT;

START TRANSACTION;
INSERT INTO `final_project`.`discountcode` (`discount_code`, `discount_percent`, `expire_date`) VALUES ('1', '5', '2022/12/30');
INSERT INTO `final_project`.`discountcode` (`discount_code`, `discount_percent`, `expire_date`) VALUES ('2', '10', '2022/12/30');
INSERT INTO `final_project`.`discountcode` (`discount_code`, `discount_percent`, `expire_date`) VALUES ('3', '15', '2022/12/30');
INSERT INTO `final_project`.`discountcode` (`discount_code`, `discount_percent`, `expire_date`) VALUES ('4', '20', '2022/12/30');
INSERT INTO `final_project`.`discountcode` (`discount_code`, `discount_percent`, `expire_date`) VALUES ('5', '25', '2022/12/30');
INSERT INTO `final_project`.`discountcode` (`discount_code`, `discount_percent`, `expire_date`) VALUES ('6', '30', '2022/12/30');
INSERT INTO `final_project`.`discountcode` (`discount_code`, `discount_percent`, `expire_date`) VALUES ('7', '35', '2022/12/30');
INSERT INTO `final_project`.`discountcode` (`discount_code`, `discount_percent`, `expire_date`) VALUES ('9', '40', '2022/12/30');
INSERT INTO `final_project`.`discountcode` (`discount_code`, `discount_percent`, `expire_date`) VALUES ('10', '45', '2022/12/30');

COMMIT;

START TRANSACTION;
INSERT INTO `final_project`.`customer_has_discountcode` (`Customer_cid`, `DiscountCode_discount_code`) VALUES ('1', '2');
INSERT INTO `final_project`.`customer_has_discountcode` (`Customer_cid`, `DiscountCode_discount_code`) VALUES ('2', '1');
INSERT INTO `final_project`.`customer_has_discountcode` (`Customer_cid`, `DiscountCode_discount_code`) VALUES ('3', '5');
INSERT INTO `final_project`.`customer_has_discountcode` (`Customer_cid`, `DiscountCode_discount_code`) VALUES ('4', '6');
INSERT INTO `final_project`.`customer_has_discountcode` (`Customer_cid`, `DiscountCode_discount_code`) VALUES ('9', '10');
INSERT INTO `final_project`.`customer_has_discountcode` (`Customer_cid`, `DiscountCode_discount_code`) VALUES ('7', '4');


COMMIT;
START TRANSACTION;
INSERT INTO `final_project`.`suplier` (`contract_num`, `sname`, `address`, `phone`) VALUES ('1', 'Apple', 'Cupertino', '0145');
INSERT INTO `final_project`.`suplier` (`contract_num`, `sname`, `address`, `phone`) VALUES ('2', 'SumSung', 'Korea', '0895');
INSERT INTO `final_project`.`suplier` (`contract_num`, `sname`, `address`, `phone`) VALUES ('3', 'Lenovo', 'China', '095');
INSERT INTO `final_project`.`suplier` (`contract_num`, `sname`, `address`, `phone`) VALUES ('4', 'Hp', 'California', '025');
INSERT INTO `final_project`.`suplier` (`contract_num`, `sname`, `address`, `phone`) VALUES ('5', 'Canon', 'China', '0220');
INSERT INTO `final_project`.`suplier` (`contract_num`, `sname`, `address`, `phone`) VALUES ('6', 'Sony', 'Japon', '0190');
INSERT INTO `final_project`.`suplier` (`contract_num`, `sname`, `address`, `phone`) VALUES ('7', 'LG', 'Japon', '0990');

COMMIT;

START TRANSACTION;
INSERT INTO `final_project`.`product_has_suplier` (`Product_pid`, `Suplier_contract_num`, `amount`) VALUES ('1', '7', '120');
INSERT INTO `final_project`.`product_has_suplier` (`Product_pid`, `Suplier_contract_num`, `amount`) VALUES ('2', '1', '120');
INSERT INTO `final_project`.`product_has_suplier` (`Product_pid`, `Suplier_contract_num`, `amount`) VALUES ('3', '1', '120');
INSERT INTO `final_project`.`product_has_suplier` (`Product_pid`, `Suplier_contract_num`, `amount`) VALUES ('14', '1', '120');
INSERT INTO `final_project`.`product_has_suplier` (`Product_pid`, `Suplier_contract_num`, `amount`) VALUES ('13', '1', '120');
INSERT INTO `final_project`.`product_has_suplier` (`Product_pid`, `Suplier_contract_num`, `amount`) VALUES ('12', '1', '120');
INSERT INTO `final_project`.`product_has_suplier` (`Product_pid`, `Suplier_contract_num`, `amount`) VALUES ('4', '2', '120');
INSERT INTO `final_project`.`product_has_suplier` (`Product_pid`, `Suplier_contract_num`, `amount`) VALUES ('5', '2', '120');
INSERT INTO `final_project`.`product_has_suplier` (`Product_pid`, `Suplier_contract_num`, `amount`) VALUES ('6', '2', '120');
INSERT INTO `final_project`.`product_has_suplier` (`Product_pid`, `Suplier_contract_num`, `amount`) VALUES ('16', '2', '120');
INSERT INTO `final_project`.`product_has_suplier` (`Product_pid`, `Suplier_contract_num`, `amount`) VALUES ('9', '3', '120');
INSERT INTO `final_project`.`product_has_suplier` (`Product_pid`, `Suplier_contract_num`, `amount`) VALUES ('10', '3', '120');
INSERT INTO `final_project`.`product_has_suplier` (`Product_pid`, `Suplier_contract_num`, `amount`) VALUES ('11', '3', '120');
INSERT INTO `final_project`.`product_has_suplier` (`Product_pid`, `Suplier_contract_num`, `amount`) VALUES ('9', '5', '120');
INSERT INTO `final_project`.`product_has_suplier` (`Product_pid`, `Suplier_contract_num`, `amount`) VALUES ('15', '5', '120');
INSERT INTO `final_project`.`product_has_suplier` (`Product_pid`, `Suplier_contract_num`, `amount`) VALUES ('6', '6', '120');
INSERT INTO `final_project`.`product_has_suplier` (`Product_pid`, `Suplier_contract_num`, `amount`) VALUES ('7', '6', '120');

COMMIT;

START TRANSACTION;
INSERT INTO `final_project`.`pricehistory` (`Product_pid`, `date`, `price`) VALUES ('1', '2022/12/8', '90');
INSERT INTO `final_project`.`pricehistory` (`Product_pid`, `date`, `price`) VALUES ('2', '2022/11/8', '990');
INSERT INTO `final_project`.`pricehistory` (`Product_pid`, `date`, `price`) VALUES ('3', '2022/10/8', '1090');
INSERT INTO `final_project`.`pricehistory` (`Product_pid`, `date`, `price`) VALUES ('4', '2022/12/8', '890');
INSERT INTO `final_project`.`pricehistory` (`Product_pid`, `date`, `price`) VALUES ('5', '2022/12/8', '1190');
INSERT INTO `final_project`.`pricehistory` (`Product_pid`, `date`, `price`) VALUES ('6', '2022/12/8', '590');
INSERT INTO `final_project`.`pricehistory` (`Product_pid`, `date`, `price`) VALUES ('7', '2022/12/8', '850');
INSERT INTO `final_project`.`pricehistory` (`Product_pid`, `date`, `price`) VALUES ('8', '2022/12/8', '200');
INSERT INTO `final_project`.`pricehistory` (`Product_pid`, `date`, `price`) VALUES ('9', '2022/12/8', '790');
INSERT INTO `final_project`.`pricehistory` (`Product_pid`, `date`, `price`) VALUES ('10', '2022/12/8', '860');
INSERT INTO `final_project`.`pricehistory` (`Product_pid`, `date`, `price`) VALUES ('11', '2022/12/8', '90');
INSERT INTO `final_project`.`pricehistory` (`Product_pid`, `date`, `price`) VALUES ('12', '2022/12/8', '1300');
INSERT INTO `final_project`.`pricehistory` (`Product_pid`, `date`, `price`) VALUES ('13', '2022/12/8', '780');
INSERT INTO `final_project`.`pricehistory` (`Product_pid`, `date`, `price`) VALUES ('14', '2022/12/8', '1450');
INSERT INTO `final_project`.`pricehistory` (`Product_pid`, `date`, `price`) VALUES ('15', '2022/12/8', '160');
INSERT INTO `final_project`.`pricehistory` (`Product_pid`, `date`, `price`) VALUES ('16', '2022/12/8', '690');

COMMIT;

START TRANSACTION;
INSERT INTO `final_project`.`store` (`brandname`) VALUES ('Apple'),('SumSung'),('Lenovo');
COMMIT;

/*START TRANSACTION;
INSERT INTO `final_project`.`branch` (`bid`, `Store_brandname`, `baddress`, `city`, `phone`, `managerid`) VALUES ('1', 'AppleB', 'Tehran,niavaran', 'Tehran', '98346', '1');
INSERT INTO `final_project`.`branch` (`bid`, `Store_brandname`, `baddress`, `city`, `phone`, `managerid`) VALUES ('2', 'AppleB', 'LA,kaland', 'LA', '9806', '2');
INSERT INTO `final_project`.`branch` (`bid`, `Store_brandname`, `baddress`, `city`, `phone`, `managerid`) VALUES ('3', 'SumSungB', 'Tehran,vakilesatn', 'Tehran', '5676', '3');
INSERT INTO `final_project`.`branch` (`bid`, `Store_brandname`, `baddress`, `city`, `phone`, `managerid`) VALUES ('4', 'LenovoB', 'Ahmadabad', 'Mashhhad', '12876', '4');
INSERT INTO `final_project`.`branch` (`bid`, `Store_brandname`, `baddress`, `city`, `phone`, `managerid`) VALUES ('5', 'SonyB', 'amjadyieh', 'Esfehan', '77876', '5');
INSERT INTO `final_project`.`branch` (`bid`, `Store_brandname`, `baddress`, `city`, `phone`, `managerid`) VALUES ('6', 'LGB', 'Azadi', 'Tabriz', '9096', '6');

Foreign key Error
COMMIT;
*/
/*
Foreign key Error
START TRANSACTION;
INSERT INTO `final_project`.`employee` (`eid`, `Branch_bid`, `ename`, `phone`, `address`, `salary`, `Warehouse_wid`) VALUES ('981', '1', 'ahad', '934', 'mashhad', '900', '');

COMMIT;

START TRANSACTION;
INSERT INTO `final_project`.`warehouse` (`wid`, `warehouse_keeper _id`, `waddress`, `wcapacity`) VALUES ('1', '1', 'iran', '');

COMMIT;
*/


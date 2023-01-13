START TRANSACTION;
INSERT INTO `final_project`.`Customer` (`cid`, `cname`) VALUES ('1', 'Amirreza');
INSERT INTO `final_project`.`Customer` (`cid`, `cname`) VALUES ('2', 'reza');
INSERT INTO `final_project`.`Customer` (`cid`, `cname`) VALUES ('3', 'mahdi');
INSERT INTO `final_project`.`Customer` (`cid`, `cname`) VALUES ('4', 'Arash');
INSERT INTO `final_project`.`Customer` (`cid`, `cname`) VALUES ('5', 'zahra');
INSERT INTO `final_project`.`Customer` (`cid`, `cname`) VALUES ('6', 'karim');
INSERT INTO `final_project`.`Customer` (`cid`, `cname`) VALUES ('7', 'Ali');
INSERT INTO `final_project`.`Customer` (`cid`, `cname`) VALUES ('8', 'rahim');
INSERT INTO `final_project`.`Customer` (`cid`, `cname`) VALUES ('9', 'morteza');
INSERT INTO `final_project`.`Customer` (`cid`, `cname`) VALUES ('10', 'ayda');
INSERT INTO `final_project`.`Customer` (`cid`, `cname`) VALUES ('11', 'taraneh');
INSERT INTO `final_project`.`Customer` (`cid`, `cname`) VALUES ('12', 'javad');
INSERT INTO `final_project`.`Customer` (`cid`, `cname`) VALUES ('13', 'pourya');
INSERT INTO `final_project`.`Customer` (`cid`, `cname`) VALUES ('14', 'babak');
INSERT INTO `final_project`.`Customer` (`cid`, `cname`) VALUES ('15', 'sajedeh');
INSERT INTO `final_project`.`Customer` (`cid`, `cname`) VALUES ('16', 'mahla');
INSERT INTO `final_project`.`Customer` (`cid`, `cname`) VALUES ('17', 'roz');
INSERT INTO `final_project`.`Customer` (`cid`, `cname`) VALUES ('18', 'mahin');

COMMIT;

START TRANSACTION;
INSERT INTO `final_project`.`Profile` (`pid`, `Customer_cid`, `username`, `address`, `phone`, `gender`, `email`) VALUES ('1', '1', 'Amirreza_', 'mashhad', '091209', 'Male', 'evrv@.com');
INSERT INTO `final_project`.`Profile` (`pid`, `Customer_cid`, `username`, `address`, `phone`, `gender`, `email`) VALUES ('2', '2', 'reza_', 'Tehran', '09145', 'Male', 'evrv@.com');
INSERT INTO `final_project`.`Profile` (`pid`, `Customer_cid`, `username`, `address`, `phone`, `gender`, `email`) VALUES ('3', '3', 'mahdi_', 'mashhad', '09056', 'Male', 'evrv@.com');
INSERT INTO `final_project`.`Profile` (`pid`, `Customer_cid`, `username`, `address`, `phone`, `gender`, `email`) VALUES ('4', '4', 'Arash_', 'mashhad', '091278', 'Male', 'evrv@.com');
INSERT INTO `final_project`.`Profile` (`pid`, `Customer_cid`, `username`, `address`, `phone`, `gender`, `email`) VALUES ('5', '5', 'zahra_', 'Tehran', '0912455', 'Male', 'evrv@.com');
INSERT INTO `final_project`.`Profile` (`pid`, `Customer_cid`, `username`, `address`, `phone`, `gender`, `email`) VALUES ('6', '6', 'karim_', 'Tehran', '091244', 'Male', 'evrv@.com');
INSERT INTO `final_project`.`Profile` (`pid`, `Customer_cid`, `username`, `address`, `phone`, `gender`, `email`) VALUES ('7', '7', 'Ali_', 'Tehran', '09982', 'Male', 'evrv@.com');
INSERT INTO `final_project`.`Profile` (`pid`, `Customer_cid`, `username`, `address`, `phone`, `gender`, `email`) VALUES ('8', '8', 'rahim_', 'Tehran', '099912', 'Male', 'evrv@.com');
INSERT INTO `final_project`.`Profile` (`pid`, `Customer_cid`, `username`, `address`, `phone`, `gender`, `email`) VALUES ('9', '9', 'morteza_', 'Shiraz', '091772', 'Male', 'evrv@.com');
INSERT INTO `final_project`.`Profile` (`pid`, `Customer_cid`, `username`, `address`, `phone`, `gender`, `email`) VALUES ('10', '10', 'ayda_', 'mashhad', '091286', 'Male', 'evrv@.com');
INSERT INTO `final_project`.`Profile` (`pid`, `Customer_cid`, `username`, `address`, `phone`, `gender`, `email`) VALUES ('11', '11', 'taraneh_', 'rasht', '091286', 'Male', 'evrv@.com');
INSERT INTO `final_project`.`Profile` (`pid`, `Customer_cid`, `username`, `address`, `phone`, `gender`, `email`) VALUES ('12', '12', 'javad_', 'sari', '091286', 'Male', 'evrv@.com');
INSERT INTO `final_project`.`Profile` (`pid`, `Customer_cid`, `username`, `address`, `phone`, `gender`, `email`) VALUES ('13', '13', 'pourya_', 'Ardebil', '091286', 'Male', 'evrv@.com');
INSERT INTO `final_project`.`Profile` (`pid`, `Customer_cid`, `username`, `address`, `phone`, `gender`, `email`) VALUES ('14', '14', 'babak_', 'Shiraz', '091286', 'Male', 'evrv@.com');
INSERT INTO `final_project`.`Profile` (`pid`, `Customer_cid`, `username`, `address`, `phone`, `gender`, `email`) VALUES ('15', '15', 'sajedeh_', 'Shiraz', '091286', 'Male', 'evrv@.com');
INSERT INTO `final_project`.`Profile` (`pid`, `Customer_cid`, `username`, `address`, `phone`, `gender`, `email`) VALUES ('16', '16', 'mahla_', 'Esfehan', '091286', 'Male', 'evrv@.com');
INSERT INTO `final_project`.`Profile` (`pid`, `Customer_cid`, `username`, `address`, `phone`, `gender`, `email`) VALUES ('17', '17', 'roz_', 'Esfehan', '091286', 'Male', 'evrv@.com');
INSERT INTO `final_project`.`Profile` (`pid`, `Customer_cid`, `username`, `address`, `phone`, `gender`, `email`) VALUES ('18', '18', 'mahin_', 'Esfehan', '091286', 'Male', 'evrv@.com');


COMMIT;

START TRANSACTION;
INSERT INTO `final_project`.`Cart` (`Cartid`, `Customer_cid`, `status`, `total_cost`) VALUES ('01', '1', '0', '0');
INSERT INTO `final_project`.`Cart` (`Cartid`, `Customer_cid`, `status`, `total_cost`) VALUES ('02', '2', '0', '0');
INSERT INTO `final_project`.`Cart` (`Cartid`, `Customer_cid`, `status`, `total_cost`) VALUES ('03', '3', '0', '0');
INSERT INTO `final_project`.`Cart` (`Cartid`, `Customer_cid`, `status`, `total_cost`) VALUES ('04', '4', '0', '0');
INSERT INTO `final_project`.`Cart` (`Cartid`, `Customer_cid`, `status`, `total_cost`) VALUES ('05', '5', '0', '0');
INSERT INTO `final_project`.`Cart` (`Cartid`, `Customer_cid`, `status`, `total_cost`) VALUES ('06', '6', '0', '0');
INSERT INTO `final_project`.`Cart` (`Cartid`, `Customer_cid`, `status`, `total_cost`) VALUES ('07', '7', '0', '0');
INSERT INTO `final_project`.`Cart` (`Cartid`, `Customer_cid`, `status`, `total_cost`) VALUES ('08', '8', '0', '0');
INSERT INTO `final_project`.`Cart` (`Cartid`, `Customer_cid`, `status`, `total_cost`) VALUES ('09', '9', '0', '0');
INSERT INTO `final_project`.`Cart` (`Cartid`, `Customer_cid`, `status`, `total_cost`) VALUES ('010', '10', '0', '0');



COMMIT;

START TRANSACTION;
INSERT INTO `final_project`.`Invoice` (`Cart_Cartid`, `total_cost`, `date`) VALUES ('01', '0', '2022/12/19');
INSERT INTO `final_project`.`Invoice` (`Cart_Cartid`, `total_cost`, `date`) VALUES ('02', '0', '2022/12/26');
INSERT INTO `final_project`.`Invoice` (`Cart_Cartid`, `total_cost`, `date`) VALUES ('03', '0', '2022/12/29');
INSERT INTO `final_project`.`Invoice` (`Cart_Cartid`, `total_cost`, `date`) VALUES ('04', '0', '2022/12/24');
INSERT INTO `final_project`.`Invoice` (`Cart_Cartid`, `total_cost`, `date`) VALUES ('05', '0', '2022/12/19');
INSERT INTO `final_project`.`Invoice` (`Cart_Cartid`, `total_cost`, `date`) VALUES ('06', '0', '2022/12/18');
INSERT INTO `final_project`.`Invoice` (`Cart_Cartid`, `total_cost`, `date`) VALUES ('07', '0', '2022/12/28');
INSERT INTO `final_project`.`Invoice` (`Cart_Cartid`, `total_cost`, `date`) VALUES ('08', '0', '2022/12/29');
INSERT INTO `final_project`.`Invoice` (`Cart_Cartid`, `total_cost`, `date`) VALUES ('09', '0', '2022/12/27');
INSERT INTO `final_project`.`Invoice` (`Cart_Cartid`, `total_cost`, `date`) VALUES ('010', '0', '2022/12/24');


COMMIT;

START TRANSACTION;
INSERT INTO `final_project`.`Product` (`pid`, `pname`, `available_amount`, `discount_percent`, `pruduce_date`, `expire_date`) VALUES ('1', 'panel', '120', '15', '2022/10/9', '2023/10/9');
INSERT INTO `final_project`.`Product` (`pid`, `pname`, `available_amount`, `discount_percent`, `pruduce_date`, `expire_date`) VALUES ('2', 'Iphone 12', '12', '0', '2021/10/9', '2023/10/9');
INSERT INTO `final_project`.`Product` (`pid`, `pname`, `available_amount`, `discount_percent`, `pruduce_date`, `expire_date`) VALUES ('3', 'Iphone 12 pro', '15', '0', '2021/10/9', '2023/10/9');
INSERT INTO `final_project`.`Product` (`pid`, `pname`, `available_amount`, `discount_percent`, `pruduce_date`, `expire_date`) VALUES ('4', 'S22', '14', '15', '2022/6/9', '2023/10/9');
INSERT INTO `final_project`.`Product` (`pid`, `pname`, `available_amount`, `discount_percent`, `pruduce_date`, `expire_date`) VALUES ('5', 'S22 Ultra', '10', '10', '2022/6/9', '2023/10/9');
INSERT INTO `final_project`.`Product` (`pid`, `pname`, `available_amount`, `discount_percent`, `pruduce_date`, `expire_date`) VALUES ('6', 'LCD', '26', '25', '2020/10/9', '2023/10/9');
INSERT INTO `final_project`.`Product` (`pid`, `pname`, `available_amount`, `discount_percent`, `pruduce_date`, `expire_date`) VALUES ('7', 'LED', '68', '20', '2022/4/9', '2023/10/9');
INSERT INTO `final_project`.`Product` (`pid`, `pname`, `available_amount`, `discount_percent`, `pruduce_date`, `expire_date`) VALUES ('8', 'Printer', '31', '35', '2021/7/9', '2023/10/9');
INSERT INTO `final_project`.`Product` (`pid`, `pname`, `available_amount`, `discount_percent`, `pruduce_date`, `expire_date`) VALUES ('9', 'Ideapad 340v', '12', '15', '2022/2/9', '2023/10/9');
INSERT INTO `final_project`.`Product` (`pid`, `pname`, `available_amount`, `discount_percent`, `pruduce_date`, `expire_date`) VALUES ('10', 'Ideapad 380v', '17', '15', '2022/3/9', '2023/10/9');
INSERT INTO `final_project`.`Product` (`pid`, `pname`, `available_amount`, `discount_percent`, `pruduce_date`, `expire_date`) VALUES ('11', 'Mathmathical Calculator', '84', '40', '2020/8/9', '2023/10/9');
INSERT INTO `final_project`.`Product` (`pid`, `pname`, `available_amount`, `discount_percent`, `pruduce_date`, `expire_date`) VALUES ('12', 'Macbook pro', '15', '10', '2022/7/9', '2023/10/9');
INSERT INTO `final_project`.`Product` (`pid`, `pname`, `available_amount`, `discount_percent`, `pruduce_date`, `expire_date`) VALUES ('13', 'Macbook Air', '23', '18', '2022/6/9', '2023/10/9');
INSERT INTO `final_project`.`Product` (`pid`, `pname`, `available_amount`, `discount_percent`, `pruduce_date`, `expire_date`) VALUES ('14', 'IMac 2022', '7', '0', '2022/3/9', '2023/10/9');
INSERT INTO `final_project`.`Product` (`pid`, `pname`, `available_amount`, `discount_percent`, `pruduce_date`, `expire_date`) VALUES ('15', 'Keyboard', '42', '25', '2021/3/9', '2023/10/9');
INSERT INTO `final_project`.`Product` (`pid`, `pname`, `available_amount`, `discount_percent`, `pruduce_date`, `expire_date`) VALUES ('16', 'Samrt Tv', '16', '30', '2022/2/9', '2023/10/9');

COMMIT;

START TRANSACTION;
INSERT INTO `final_project`.`Cart_has_Product` (`Cart_Cartid`, `Product_pid`, `amount`, `unit_price`, `total_price`) VALUES ('01', '2', '1', '990', '990');
INSERT INTO `final_project`.`Cart_has_Product` (`Cart_Cartid`, `Product_pid`, `amount`, `unit_price`, `total_price`) VALUES ('01', '6', '1', '590', '590');
INSERT INTO `final_project`.`Cart_has_Product` (`Cart_Cartid`, `Product_pid`, `amount`, `unit_price`, `total_price`) VALUES ('02', '4', '2', '890', '1780');
INSERT INTO `final_project`.`Cart_has_Product` (`Cart_Cartid`, `Product_pid`, `amount`, `unit_price`, `total_price`) VALUES ('03', '8', '5', '200', '1000');
INSERT INTO `final_project`.`Cart_has_Product` (`Cart_Cartid`, `Product_pid`, `amount`, `unit_price`, `total_price`) VALUES ('04', '3', '1', '1090', '1090');
INSERT INTO `final_project`.`Cart_has_Product` (`Cart_Cartid`, `Product_pid`, `amount`, `unit_price`, `total_price`) VALUES ('04', '16', '1', '690', '690');
INSERT INTO `final_project`.`Cart_has_Product` (`Cart_Cartid`, `Product_pid`, `amount`, `unit_price`, `total_price`) VALUES ('05', '11', '1', '90', '90');
INSERT INTO `final_project`.`Cart_has_Product` (`Cart_Cartid`, `Product_pid`, `amount`, `unit_price`, `total_price`) VALUES ('05', '9', '2', '790', '1480');
INSERT INTO `final_project`.`Cart_has_Product` (`Cart_Cartid`, `Product_pid`, `amount`, `unit_price`, `total_price`) VALUES ('06', '12', '1', '1300', '1300');
INSERT INTO `final_project`.`Cart_has_Product` (`Cart_Cartid`, `Product_pid`, `amount`, `unit_price`, `total_price`) VALUES ('07', '14', '1', '1450', '1450');
INSERT INTO `final_project`.`Cart_has_Product` (`Cart_Cartid`, `Product_pid`, `amount`, `unit_price`, `total_price`) VALUES ('08', '15', '1', '160', '1600');
INSERT INTO `final_project`.`Cart_has_Product` (`Cart_Cartid`, `Product_pid`, `amount`, `unit_price`, `total_price`) VALUES ('09', '5', '1', '1190', '1190');
INSERT INTO `final_project`.`Cart_has_Product` (`Cart_Cartid`, `Product_pid`, `amount`, `unit_price`, `total_price`) VALUES ('09', '1', '3', '120', '360');
INSERT INTO `final_project`.`Cart_has_Product` (`Cart_Cartid`, `Product_pid`, `amount`, `unit_price`, `total_price`) VALUES ('010', '7', '1', '850', '850');
INSERT INTO `final_project`.`Cart_has_Product` (`Cart_Cartid`, `Product_pid`, `amount`, `unit_price`, `total_price`) VALUES ('09', '12', '1', '1300', '1300');
INSERT INTO `final_project`.`Cart_has_Product` (`Cart_Cartid`, `Product_pid`, `amount`, `unit_price`, `total_price`) VALUES ('04', '5', '1', '1190', '1190');
INSERT INTO `final_project`.`Cart_has_Product` (`Cart_Cartid`, `Product_pid`, `amount`, `unit_price`, `total_price`) VALUES ('010', '2', '1', '990', '990');
INSERT INTO `final_project`.`Cart_has_Product` (`Cart_Cartid`, `Product_pid`, `amount`, `unit_price`, `total_price`) VALUES ('010', '1', '1', '90', '90');

COMMIT;

START TRANSACTION;
INSERT INTO `final_project`.`Discountcode` (`discount_code`, `discount_percent`, `expire_date`) VALUES ('1', '5', '2022/12/30');
INSERT INTO `final_project`.`Discountcode` (`discount_code`, `discount_percent`, `expire_date`) VALUES ('2', '10', '2022/12/30');
INSERT INTO `final_project`.`Discountcode` (`discount_code`, `discount_percent`, `expire_date`) VALUES ('3', '15', '2022/12/30');
INSERT INTO `final_project`.`Discountcode` (`discount_code`, `discount_percent`, `expire_date`) VALUES ('4', '20', '2022/12/30');
INSERT INTO `final_project`.`Discountcode` (`discount_code`, `discount_percent`, `expire_date`) VALUES ('5', '25', '2022/12/30');
INSERT INTO `final_project`.`Discountcode` (`discount_code`, `discount_percent`, `expire_date`) VALUES ('6', '30', '2022/12/30');
INSERT INTO `final_project`.`Discountcode` (`discount_code`, `discount_percent`, `expire_date`) VALUES ('7', '35', '2022/12/30');
INSERT INTO `final_project`.`Discountcode` (`discount_code`, `discount_percent`, `expire_date`) VALUES ('9', '40', '2022/12/30');
INSERT INTO `final_project`.`Discountcode` (`discount_code`, `discount_percent`, `expire_date`) VALUES ('10', '45', '2022/12/30');

COMMIT;

START TRANSACTION;
INSERT INTO `final_project`.`Customer_has_Discountcode` (`Customer_cid`, `Discountcode_discount_code`) VALUES ('1', '2');
INSERT INTO `final_project`.`Customer_has_Discountcode` (`Customer_cid`, `Discountcode_discount_code`) VALUES ('2', '1');
INSERT INTO `final_project`.`Customer_has_Discountcode` (`Customer_cid`, `Discountcode_discount_code`) VALUES ('3', '5');
INSERT INTO `final_project`.`Customer_has_Discountcode` (`Customer_cid`, `Discountcode_discount_code`) VALUES ('4', '6');
INSERT INTO `final_project`.`Customer_has_Discountcode` (`Customer_cid`, `Discountcode_discount_code`) VALUES ('9', '10');
INSERT INTO `final_project`.`Customer_has_Discountcode` (`Customer_cid`, `Discountcode_discount_code`) VALUES ('7', '4');


COMMIT;
START TRANSACTION;
INSERT INTO `final_project`.`Suplier` (`contract_num`, `sname`, `address`, `phone`) VALUES ('1', 'Apple', 'Cupertino', '0145');
INSERT INTO `final_project`.`Suplier` (`contract_num`, `sname`, `address`, `phone`) VALUES ('2', 'SumSung', 'Korea', '0895');
INSERT INTO `final_project`.`Suplier` (`contract_num`, `sname`, `address`, `phone`) VALUES ('3', 'Lenovo', 'China', '095');
INSERT INTO `final_project`.`Suplier` (`contract_num`, `sname`, `address`, `phone`) VALUES ('4', 'Hp', 'California', '025');
INSERT INTO `final_project`.`Suplier` (`contract_num`, `sname`, `address`, `phone`) VALUES ('5', 'Canon', 'China', '0220');
INSERT INTO `final_project`.`Suplier` (`contract_num`, `sname`, `address`, `phone`) VALUES ('6', 'Sony', 'Japon', '0190');
INSERT INTO `final_project`.`Suplier` (`contract_num`, `sname`, `address`, `phone`) VALUES ('7', 'LG', 'Japon', '0990');

COMMIT;

START TRANSACTION;
INSERT INTO `final_project`.`Product_has_Suplier` (`Product_pid`, `Suplier_contract_num`, `amount`) VALUES ('1', '7', '120');
INSERT INTO `final_project`.`Product_has_Suplier` (`Product_pid`, `Suplier_contract_num`, `amount`) VALUES ('2', '1', '120');
INSERT INTO `final_project`.`Product_has_Suplier` (`Product_pid`, `Suplier_contract_num`, `amount`) VALUES ('3', '1', '120');
INSERT INTO `final_project`.`Product_has_Suplier` (`Product_pid`, `Suplier_contract_num`, `amount`) VALUES ('14', '1', '120');
INSERT INTO `final_project`.`Product_has_Suplier` (`Product_pid`, `Suplier_contract_num`, `amount`) VALUES ('13', '1', '120');
INSERT INTO `final_project`.`Product_has_Suplier` (`Product_pid`, `Suplier_contract_num`, `amount`) VALUES ('12', '1', '120');
INSERT INTO `final_project`.`Product_has_Suplier` (`Product_pid`, `Suplier_contract_num`, `amount`) VALUES ('4', '2', '120');
INSERT INTO `final_project`.`Product_has_Suplier` (`Product_pid`, `Suplier_contract_num`, `amount`) VALUES ('5', '2', '120');
INSERT INTO `final_project`.`Product_has_Suplier` (`Product_pid`, `Suplier_contract_num`, `amount`) VALUES ('6', '2', '120');
INSERT INTO `final_project`.`Product_has_Suplier` (`Product_pid`, `Suplier_contract_num`, `amount`) VALUES ('16', '2', '120');
INSERT INTO `final_project`.`Product_has_Suplier` (`Product_pid`, `Suplier_contract_num`, `amount`) VALUES ('9', '3', '120');
INSERT INTO `final_project`.`Product_has_Suplier` (`Product_pid`, `Suplier_contract_num`, `amount`) VALUES ('10', '3', '120');
INSERT INTO `final_project`.`Product_has_Suplier` (`Product_pid`, `Suplier_contract_num`, `amount`) VALUES ('11', '3', '120');
INSERT INTO `final_project`.`Product_has_Suplier` (`Product_pid`, `Suplier_contract_num`, `amount`) VALUES ('9', '5', '120');
INSERT INTO `final_project`.`Product_has_Suplier` (`Product_pid`, `Suplier_contract_num`, `amount`) VALUES ('15', '5', '120');
INSERT INTO `final_project`.`Product_has_Suplier` (`Product_pid`, `Suplier_contract_num`, `amount`) VALUES ('6', '6', '120');
INSERT INTO `final_project`.`Product_has_Suplier` (`Product_pid`, `Suplier_contract_num`, `amount`) VALUES ('7', '6', '120');

COMMIT;

START TRANSACTION;
INSERT INTO `final_project`.`Pricehistory` (`Product_pid`, `date`, `price`) VALUES ('1', '2022/12/8', '90');
INSERT INTO `final_project`.`Pricehistory` (`Product_pid`, `date`, `price`) VALUES ('2', '2022/11/8', '990');
INSERT INTO `final_project`.`Pricehistory` (`Product_pid`, `date`, `price`) VALUES ('3', '2022/10/8', '1090');
INSERT INTO `final_project`.`Pricehistory` (`Product_pid`, `date`, `price`) VALUES ('4', '2022/12/8', '890');
INSERT INTO `final_project`.`Pricehistory` (`Product_pid`, `date`, `price`) VALUES ('5', '2022/12/8', '1190');
INSERT INTO `final_project`.`Pricehistory` (`Product_pid`, `date`, `price`) VALUES ('6', '2022/12/8', '590');
INSERT INTO `final_project`.`Pricehistory` (`Product_pid`, `date`, `price`) VALUES ('7', '2022/12/8', '850');
INSERT INTO `final_project`.`Pricehistory` (`Product_pid`, `date`, `price`) VALUES ('8', '2022/12/8', '200');
INSERT INTO `final_project`.`Pricehistory` (`Product_pid`, `date`, `price`) VALUES ('9', '2022/12/8', '790');
INSERT INTO `final_project`.`Pricehistory` (`Product_pid`, `date`, `price`) VALUES ('10', '2022/12/8', '860');
INSERT INTO `final_project`.`Pricehistory` (`Product_pid`, `date`, `price`) VALUES ('11', '2022/12/8', '90');
INSERT INTO `final_project`.`Pricehistory` (`Product_pid`, `date`, `price`) VALUES ('12', '2022/12/8', '1300');
INSERT INTO `final_project`.`Pricehistory` (`Product_pid`, `date`, `price`) VALUES ('13', '2022/12/8', '780');
INSERT INTO `final_project`.`Pricehistory` (`Product_pid`, `date`, `price`) VALUES ('14', '2022/12/8', '1450');
INSERT INTO `final_project`.`Pricehistory` (`Product_pid`, `date`, `price`) VALUES ('15', '2022/12/8', '160');
INSERT INTO `final_project`.`Pricehistory` (`Product_pid`, `date`, `price`) VALUES ('16', '2022/12/8', '690');

COMMIT;

START TRANSACTION;
INSERT INTO `final_project`.`Store` (`brandname`) VALUES ('Apple'),('SumSung'),('Lenovo');
COMMIT;

START TRANSACTION;
INSERT INTO `final_project`.`Branch` (`bid`, `Store_brandname`, `baddress`, `city`, `phone`) VALUES ('1', 'Apple', 'Tehran,niavaran', 'Tehran', '98346');
INSERT INTO `final_project`.`Branch` (`bid`, `Store_brandname`, `baddress`, `city`, `phone`) VALUES ('2', 'Apple', 'LA,kaland', 'LA', '9806');
INSERT INTO `final_project`.`Branch` (`bid`, `Store_brandname`, `baddress`, `city`, `phone`) VALUES ('3', 'SumSung', 'Tehran','vakilesatn', 'Tehran');
INSERT INTO `final_project`.`Branch` (`bid`, `Store_brandname`, `baddress`, `city`, `phone`) VALUES ('4', 'Lenovo', 'Ahmadabad', 'Mashhhad', '12876');
INSERT INTO `final_project`.`Branch` (`bid`, `Store_brandname`, `baddress`, `city`, `phone`) VALUES ('5', 'SumSung', 'amjadyieh', 'Esfehan', '77876');
INSERT INTO `final_project`.`Branch` (`bid`, `Store_brandname`, `baddress`, `city`, `phone`) VALUES ('6', 'Lenovo', 'Azadi', 'Tabriz', '9096');

-- Foreign key Error
COMMIT;


-- Foreign key Error
START TRANSACTION;
INSERT INTO `final_project`.`Employee` (`eid`, `Branch_bid`, `ename`, `phone`, `address`, `salary`) VALUES ('1', '1', 'ahad', '934', 'Tehran', '900');
INSERT INTO `final_project`.`Employee` (`eid`, `Branch_bid`, `ename`, `phone`, `address`, `salary`) VALUES ('2', '1', 'ahmad', '934', 'Tehran', '900');
INSERT INTO `final_project`.`Employee` (`eid`, `Branch_bid`, `ename`, `phone`, `address`, `salary`) VALUES ('3', '2', 'nazi', '934', 'mashhad', '900');
INSERT INTO `final_project`.`Employee` (`eid`, `Branch_bid`, `ename`, `phone`, `address`, `salary`) VALUES ('4', '2', 'fatemeh', '934', 'Tehran', '900');
INSERT INTO `final_project`.`Employee` (`eid`, `Branch_bid`, `ename`, `phone`, `address`, `salary`) VALUES ('5', '2', 'reza', '934', 'mashhad', '900');
INSERT INTO `final_project`.`Employee` (`eid`, `Branch_bid`, `ename`, `phone`, `address`, `salary`) VALUES ('6', '3', 'farha', '934', 'LA', '900');
INSERT INTO `final_project`.`Employee` (`eid`, `Branch_bid`, `ename`, `phone`, `address`, `salary`) VALUES ('7', '3', 'parham', '934', 'LA', '900');
INSERT INTO `final_project`.`Employee` (`eid`, `Branch_bid`, `ename`, `phone`, `address`, `salary`) VALUES ('8', '3', 'roya', '934', 'LA', '900');
INSERT INTO `final_project`.`Employee` (`eid`, `Branch_bid`, `ename`, `phone`, `address`, `salary`) VALUES ('9', '4', 'abbas', '934', 'mashhad', '900');
INSERT INTO `final_project`.`Employee` (`eid`, `Branch_bid`, `ename`, `phone`, `address`, `salary`) VALUES ('10', '4', 'farid', '934', 'mashhad', '900');
INSERT INTO `final_project`.`Employee` (`eid`, `Branch_bid`, `ename`, `phone`, `address`, `salary`) VALUES ('11', '5', 'roya', '934', 'Esfehan', '900');
INSERT INTO `final_project`.`Employee` (`eid`, `Branch_bid`, `ename`, `phone`, `address`, `salary`) VALUES ('12', '5', 'sobhan', '934', 'mashhad', '900');
INSERT INTO `final_project`.`Employee` (`eid`, `Branch_bid`, `ename`, `phone`, `address`, `salary`) VALUES ('13', '5', 'azar', '934', 'Esfehan', '900');
INSERT INTO `final_project`.`Employee` (`eid`, `Branch_bid`, `ename`, `phone`, `address`, `salary`) VALUES ('14', '6', 'taghi', '934', 'Tabriz', '900');
INSERT INTO `final_project`.`Employee` (`eid`, `Branch_bid`, `ename`, `phone`, `address`, `salary`) VALUES ('15', '6', 'milad', '934', 'Tabriz', '900');


COMMIT;

START TRANSACTION;
INSERT INTO `final_project`.`Warehouse` (`wid`, `Warehouse_keeper _id`, `waddress`, `wcapacity`) VALUES ('981', '1', 'mashhad', '');
INSERT INTO `final_project`.`Warehouse` (`wid`, `Warehouse_keeper _id`, `waddress`, `wcapacity`) VALUES ('982', '2', 'mashhad', '10');
INSERT INTO `final_project`.`Warehouse` (`wid`, `Warehouse_keeper _id`, `waddress`, `wcapacity`) VALUES ('983', '3', 'LA', '13');
INSERT INTO `final_project`.`Warehouse` (`wid`, `Warehouse_keeper _id`, `waddress`, `wcapacity`) VALUES ('984', '4', 'Tehran', '10');
INSERT INTO `final_project`.`Warehouse` (`wid`, `Warehouse_keeper _id`, `waddress`, `wcapacity`) VALUES ('985', '5', 'Esfehan', '10');
INSERT INTO `final_project`.`Warehouse` (`wid`, `Warehouse_keeper _id`, `waddress`, `wcapacity`) VALUES ('986', '6', 'Tabriz', '10');

COMMIT;

START TRANSACTION;
INSERT INTO `final_project`.`Warehouse_has_Product` (`Warehouse_wid`, `Product_pid`, `quantity`) VALUES ('981', '1', '100'), ('981', '2', '100'), ('981', '3', '100');
INSERT INTO `final_project`.`Warehouse_has_Product` (`Warehouse_wid`, `Product_pid`, `quantity`) VALUES ('982', '4', '100'),('982', '5', '100'),('982', '6', '100');
INSERT INTO `final_project`.`Warehouse_has_Product` (`Warehouse_wid`, `Product_pid`, `quantity`) VALUES ('983', '7', '100'),('983', '8', '100'),('983', '9', '100');
INSERT INTO `final_project`.`Warehouse_has_Product` (`Warehouse_wid`, `Product_pid`, `quantity`) VALUES ('984', '10', '100'),('984', '11', '100'),('982', '15', '100');
INSERT INTO `final_project`.`Warehouse_has_Product` (`Warehouse_wid`, `Product_pid`, `quantity`) VALUES ('985', '12', '100'),('985', '13', '1');
INSERT INTO `final_project`.`Warehouse_has_Product` (`Warehouse_wid`, `Product_pid`, `quantity`) VALUES ('986', '13', '100'),('986', '14', '100');

COMMIT;
/*
START TRANSACTION;
INSERT INTO `final_project`.`Customer_has_Branch` (`Customer_cid`, `Branch_bid`, `total_cost`) VALUES ('1', '981', '220');
INSERT INTO `final_project`.`Customer_has_Branch` (`Customer_cid`, `Branch_bid`, `total_cost`) VALUES ('2', '981', '280');
INSERT INTO `final_project`.`Customer_has_Branch` (`Customer_cid`, `Branch_bid`, `total_cost`) VALUES ('3', '981', '270');
INSERT INTO `final_project`.`Customer_has_Branch` (`Customer_cid`, `Branch_bid`, `total_cost`) VALUES ('4', '982', '290');
INSERT INTO `final_project`.`Customer_has_Branch` (`Customer_cid`, `Branch_bid`, `total_cost`) VALUES ('5', '982', '1320');
INSERT INTO `final_project`.`Customer_has_Branch` (`Customer_cid`, `Branch_bid`, `total_cost`) VALUES ('6', '986', '420');
INSERT INTO `final_project`.`Customer_has_Branch` (`Customer_cid`, `Branch_bid`, `total_cost`) VALUES ('7', '982', '620');
INSERT INTO `final_project`.`Customer_has_Branch` (`Customer_cid`, `Branch_bid`, `total_cost`) VALUES ('8', '983', '1820');
INSERT INTO `final_project`.`Customer_has_Branch` (`Customer_cid`, `Branch_bid`, `total_cost`) VALUES ('9', '983', '920');
INSERT INTO `final_project`.`Customer_has_Branch` (`Customer_cid`, `Branch_bid`, `total_cost`) VALUES ('11', '983', '620');
INSERT INTO `final_project`.`Customer_has_Branch` (`Customer_cid`, `Branch_bid`, `total_cost`) VALUES ('12', '984', '400');
INSERT INTO `final_project`.`Customer_has_Branch` (`Customer_cid`, `Branch_bid`, `total_cost`) VALUES ('13', '984', '200');
INSERT INTO `final_project`.`Customer_has_Branch` (`Customer_cid`, `Branch_bid`, `total_cost`) VALUES ('14', '984', '300');
INSERT INTO `final_project`.`Customer_has_Branch` (`Customer_cid`, `Branch_bid`, `total_cost`) VALUES ('15', '985', '1000');
INSERT INTO `final_project`.`Customer_has_Branch` (`Customer_cid`, `Branch_bid`, `total_cost`) VALUES ('16', '985', '1220');
INSERT INTO `final_project`.`Customer_has_Branch` (`Customer_cid`, `Branch_bid`, `total_cost`) VALUES ('17', '986', '820');
INSERT INTO `final_project`.`Customer_has_Branch` (`Customer_cid`, `Branch_bid`, `total_cost`) VALUES ('18', '986', '1500');

COMMIT;
*/
START TRANSACTION;
INSERT INTO `final_project`.`Branch_has_Product` (`Branch_bid`, `Product_pid`, `quantity`) VALUES ('1', '1', '10');
INSERT INTO `final_project`.`Branch_has_Product` (`Branch_bid`, `Product_pid`, `quantity`) VALUES ('2', '2', '10');
INSERT INTO `final_project`.`Branch_has_Product` (`Branch_bid`, `Product_pid`, `quantity`) VALUES ('3', '3', '15');
INSERT INTO `final_project`.`Branch_has_Product` (`Branch_bid`, `Product_pid`, `quantity`) VALUES ('4', '4', '15');
INSERT INTO `final_project`.`Branch_has_Product` (`Branch_bid`, `Product_pid`, `quantity`) VALUES ('5', '5', '20');
INSERT INTO `final_project`.`Branch_has_Product` (`Branch_bid`, `Product_pid`, `quantity`) VALUES ('6', '6', '20');

COMMIT;
START TRANSACTION;
INSERT INTO `final_project`.`Transaction_history` (`id`, `date`, `value`, `Customer_cid`) VALUES ('1', '2022/10/9', '340', '1');
INSERT INTO `final_project`.`Transaction_history` (`id`, `date`, `value`, `Customer_cid`) VALUES ('2', '2022/12/19', '340', '2');
INSERT INTO `final_project`.`Transaction_history` (`id`, `date`, `value`, `Customer_cid`) VALUES ('3', '2022/12/26', '440', '3');
INSERT INTO `final_project`.`Transaction_history` (`id`, `date`, `value`, `Customer_cid`) VALUES ('4', '2022/12/29', '740', '4');
INSERT INTO `final_project`.`Transaction_history` (`id`, `date`, `value`, `Customer_cid`) VALUES ('5', '2022/12/27', '940', '5');
INSERT INTO `final_project`.`Transaction_history` (`id`, `date`, `value`, `Customer_cid`) VALUES ('6', '2022/12/28', '840', '6');
INSERT INTO `final_project`.`Transaction_history` (`id`, `date`, `value`, `Customer_cid`) VALUES ('7', '2022/12/27', '640', '7');

COMMIT;
START TRANSACTION;

COMMIT;

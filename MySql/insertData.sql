
START TRANSACTION;
UPDATE `project`.`workhouse` SET `name` = 'Apple inc', `address` = 'US', `telephone` = '1 45' WHERE (`wid` = '1');
UPDATE `project`.`workhouse` SET `name` = 'G3' WHERE (`wid` = '2');
INSERT INTO `project`.`workhouse` (`wid`, `name`, `address`, `telephone`, `manager_mid`) VALUES ('3', 'Sony', 'Kore', '1 34', '45');
INSERT INTO `project`.`workhouse` (`wid`, `name`, `address`, `telephone`, `manager_mid`) VALUES ('4', 'Tcl', 'Vitnam', '346', '2');

COMMIT;

START TRANSACTION;
INSERT INTO `project`.`employee` (`eid`, `nmae`, `workhouse_wid`, `manager_mid`) VALUES ('981019', 'ahmad', '1', '1');
INSERT INTO `project`.`employee` (`eid`, `nmae`, `workhouse_wid`, `manager_mid`) VALUES ('981013', 'ali', '1', '1');
INSERT INTO `project`.`employee` (`eid`, `nmae`, `workhouse_wid`, `manager_mid`) VALUES ('981056', 'ahad', '2', '2');
INSERT INTO `project`.`employee` (`eid`, `nmae`, `workhouse_wid`, `manager_mid`) VALUES ('981017', 'rahim', '2', '2');
INSERT INTO `project`.`employee` (`eid`, `nmae`, `workhouse_wid`, `manager_mid`) VALUES ('981011', 'javad', '3', '45');
INSERT INTO `project`.`employee` (`eid`, `nmae`, `workhouse_wid`, `manager_mid`) VALUES ('981010', 'sadegh', '3', '45');
INSERT INTO `project`.`employee` (`eid`, `nmae`, `workhouse_wid`, `manager_mid`) VALUES ('981020', 'reza', '3', '45');
INSERT INTO `project`.`employee` (`eid`, `nmae`, `workhouse_wid`, `manager_mid`) VALUES ('981024', 'taha', '3', '45');
INSERT INTO `project`.`employee` (`eid`, `nmae`, `workhouse_wid`, `manager_mid`) VALUES ('981025', 'david', '4', '2');
INSERT INTO `project`.`employee` (`eid`, `nmae`, `workhouse_wid`, `manager_mid`) VALUES ('981026', 'karim', '4', '2');
INSERT INTO `project`.`employee` (`eid`, `nmae`, `workhouse_wid`, `manager_mid`) VALUES ('981018', 'soheil', '4', '2');
INSERT INTO `project`.`employee` (`eid`, `nmae`, `workhouse_wid`, `manager_mid`) VALUES ('9810127', 'naeim', '4', '2');
INSERT INTO `project`.`employee` (`eid`, `nmae`, `workhouse_wid`, `manager_mid`) VALUES ('981029', 'davoud', '1', '1');
INSERT INTO `project`.`employee` (`eid`, `nmae`, `workhouse_wid`, `manager_mid`) VALUES ('6', 'vahid', '1', '1');
INSERT INTO `project`.`employee` (`eid`, `nmae`, `workhouse_wid`, `manager_mid`) VALUES ('7', 'Emad', '1', '1');




COMMIT;

START TRANSACTION;
INSERT INTO `project`.`marketer` (`name`, `employee_eid`, `marketer_employee_eid`) VALUES ('vahid', '6', '3');
INSERT INTO `project`.`marketer` (`name`, `employee_eid`, `marketer_employee_eid`) VALUES ('Emad', '7', '3');
INSERT INTO `project`.`marketer` (`name`, `employee_eid`, `marketer_employee_eid`) VALUES ('vahid', '8', '4');
INSERT INTO `project`.`marketer` (`name`, `employee_eid`, `marketer_employee_eid`) VALUES ('vahid', '9', '4');
INSERT INTO `project`.`marketer` (`name`, `employee_eid`, `marketer_employee_eid`) VALUES ('vahid', '10', '4');
INSERT INTO `project`.`marketer` (`name`, `employee_eid`, `marketer_employee_eid`) VALUES ('vahid', '11', '5');
INSERT INTO `project`.`marketer` (`name`, `employee_eid`, `marketer_employee_eid`) VALUES ('vahid', '12', '5');
INSERT INTO `project`.`marketer` (`name`, `employee_eid`, `marketer_employee_eid`) VALUES ('vahid', '13', '5');
INSERT INTO `project`.`marketer` (`name`, `employee_eid`, `marketer_employee_eid`) VALUES ('vahid', '14', '5');
INSERT INTO `project`.`marketer` (`name`, `employee_eid`, `marketer_employee_eid`) VALUES ('vahid', '15', '6');
INSERT INTO `project`.`marketer` (`name`, `employee_eid`, `marketer_employee_eid`) VALUES ('vahid', '16', '6');

COMMIT;

START TRANSACTION;
INSERT INTO `project`.`customer` (`cid`, `name`, `marketer_employee_eid`, `phone`, `address`) VALUES ('7', 'zahra', '3', '435', 'mashhad');
INSERT INTO `project`.`customer` (`cid`, `name`, `marketer_employee_eid`, `phone`, `address`) VALUES ('8', 'raha', '3', '435', 'tehran');
INSERT INTO `project`.`customer` (`cid`, `name`, `marketer_employee_eid`, `phone`, `address`) VALUES ('9', 'morteza', '4', '435', 'kashmar');
INSERT INTO `project`.`customer` (`cid`, `name`, `marketer_employee_eid`, `phone`, `address`) VALUES ('10', 'karim', '4', '435', 'sadat');
INSERT INTO `project`.`customer` (`cid`, `name`, `marketer_employee_eid`, `phone`, `address`) VALUES ('11', 'arad', '4', '435', 'neishabour');
INSERT INTO `project`.`customer` (`cid`, `name`, `marketer_employee_eid`, `phone`, `address`) VALUES ('12', 'nazi', '5', '435', 'tabriz');
INSERT INTO `project`.`customer` (`cid`, `name`, `marketer_employee_eid`, `phone`, `address`) VALUES ('13', 'behnam', '5', '435', 'mashhad');
INSERT INTO `project`.`customer` (`cid`, `name`, `marketer_employee_eid`, `phone`, `address`) VALUES ('14', 'sahar', '5', '435', 'mashhad');
INSERT INTO `project`.`customer` (`cid`, `name`, `marketer_employee_eid`, `phone`, `address`) VALUES ('15', 'sajjad', '6', '435', 'rey');

COMMIT;

START TRANSACTION;
INSERT INTO `project`.`item` (`iid`, `name`) VALUES ('5', 'Iphone 12');
INSERT INTO `project`.`item` (`iid`, `name`) VALUES ('6', 'Iphone 12 pro');
INSERT INTO `project`.`item` (`iid`, `name`) VALUES ('7', 'Iphone 13');
INSERT INTO `project`.`item` (`iid`, `name`) VALUES ('8', 'Iphone 14');
INSERT INTO `project`.`item` (`iid`, `name`) VALUES ('9', 'Iphone 11');
INSERT INTO `project`.`item` (`iid`, `name`) VALUES ('10', 'hedphone');
INSERT INTO `project`.`item` (`iid`, `name`) VALUES ('11', 'cabel');
INSERT INTO `project`.`item` (`iid`, `name`) VALUES ('12', 'Buds');
INSERT INTO `project`.`item` (`iid`, `name`) VALUES ('13', 'tablet');
INSERT INTO `project`.`item` (`iid`, `name`) VALUES ('14', 'S22');
INSERT INTO `project`.`item` (`iid`, `name`) VALUES ('15', 'PS4');
INSERT INTO `project`.`item` (`iid`, `name`) VALUES ('16', 'PS5');

COMMIT;

START TRANSACTION;
INSERT INTO `project`.`item_has_order` (`item_iid`, `order_oid`) VALUES ('5', '01');
INSERT INTO `project`.`item_has_order` (`item_iid`, `order_oid`) VALUES ('6', '01');
INSERT INTO `project`.`item_has_order` (`item_iid`, `order_oid`) VALUES ('6', '02');
INSERT INTO `project`.`item_has_order` (`item_iid`, `order_oid`) VALUES ('7', '03');
INSERT INTO `project`.`item_has_order` (`item_iid`, `order_oid`) VALUES ('5', '04');
INSERT INTO `project`.`item_has_order` (`item_iid`, `order_oid`) VALUES ('8', '05');
INSERT INTO `project`.`item_has_order` (`item_iid`, `order_oid`) VALUES ('9', '05');
INSERT INTO `project`.`item_has_order` (`item_iid`, `order_oid`) VALUES ('10', '05');
INSERT INTO `project`.`item_has_order` (`item_iid`, `order_oid`) VALUES ('11', '06');
INSERT INTO `project`.`item_has_order` (`item_iid`, `order_oid`) VALUES ('12', '07');
INSERT INTO `project`.`item_has_order` (`item_iid`, `order_oid`) VALUES ('15', '07');
INSERT INTO `project`.`item_has_order` (`item_iid`, `order_oid`) VALUES ('16', '09');
INSERT INTO `project`.`item_has_order` (`item_iid`, `order_oid`) VALUES ('16', '010');
INSERT INTO `project`.`item_has_order` (`item_iid`, `order_oid`) VALUES ('16', '011');
INSERT INTO `project`.`item_has_order` (`item_iid`, `order_oid`) VALUES ('16', '012');
INSERT INTO `project`.`item_has_order` (`item_iid`, `order_oid`) VALUES ('16', '013');



COMMIT;
START TRANSACTION;
INSERT INTO `project`.`item_has_part` (`item_iid`, `part_pid`) VALUES ('5', '3');
INSERT INTO `project`.`item_has_part` (`item_iid`, `part_pid`) VALUES ('5', '4');
INSERT INTO `project`.`item_has_part` (`item_iid`, `part_pid`) VALUES ('6', '4');
INSERT INTO `project`.`item_has_part` (`item_iid`, `part_pid`) VALUES ('6', '3');
INSERT INTO `project`.`item_has_part` (`item_iid`, `part_pid`) VALUES ('7', '3');
INSERT INTO `project`.`item_has_part` (`item_iid`, `part_pid`) VALUES ('7', '4');
INSERT INTO `project`.`item_has_part` (`item_iid`, `part_pid`) VALUES ('8', '3');
INSERT INTO `project`.`item_has_part` (`item_iid`, `part_pid`) VALUES ('8', '4');
INSERT INTO `project`.`item_has_part` (`item_iid`, `part_pid`) VALUES ('9', '3');
INSERT INTO `project`.`item_has_part` (`item_iid`, `part_pid`) VALUES ('10', '6');
INSERT INTO `project`.`item_has_part` (`item_iid`, `part_pid`) VALUES ('10', '4');
INSERT INTO `project`.`item_has_part` (`item_iid`, `part_pid`) VALUES ('11', '7');
INSERT INTO `project`.`item_has_part` (`item_iid`, `part_pid`) VALUES ('12', '8');
INSERT INTO `project`.`item_has_part` (`item_iid`, `part_pid`) VALUES ('12', '7');
INSERT INTO `project`.`item_has_part` (`item_iid`, `part_pid`) VALUES ('13', '8');
INSERT INTO `project`.`item_has_part` (`item_iid`, `part_pid`) VALUES ('14', '9');
INSERT INTO `project`.`item_has_part` (`item_iid`, `part_pid`) VALUES ('15', '10');
INSERT INTO `project`.`item_has_part` (`item_iid`, `part_pid`) VALUES ('15', '11');
INSERT INTO `project`.`item_has_part` (`item_iid`, `part_pid`) VALUES ('16', '10');
INSERT INTO `project`.`item_has_part` (`item_iid`, `part_pid`) VALUES ('16', '11');
INSERT INTO `project`.`item_has_part` (`item_iid`, `part_pid`) VALUES ('16', '12');

COMMIT;

START TRANSACTION;
INSERT INTO `project`.`order` (`oid`, `customer_cid`, `date`) VALUES ('01', '7', '20:18, 1401/11/14');
INSERT INTO `project`.`order` (`oid`, `customer_cid`, `date`) VALUES ('02', '8', '20:18, 1401/02/14');
INSERT INTO `project`.`order` (`oid`, `customer_cid`, `date`) VALUES ('03', '8', '20:18, 1401/03/14');
INSERT INTO `project`.`order` (`oid`, `customer_cid`, `date`) VALUES ('04', '9', '20:18, 1401/03/16');
INSERT INTO `project`.`order` (`oid`, `customer_cid`, `date`) VALUES ('05', '10', '20:18, 1401/11/4');
INSERT INTO `project`.`order` (`oid`, `customer_cid`, `date`) VALUES ('06', '10', '20:18, 1401/10/4');
INSERT INTO `project`.`order` (`oid`, `customer_cid`, `date`) VALUES ('07', '11', '20:18, 1401/05/16');
INSERT INTO `project`.`order` (`oid`, `customer_cid`, `date`) VALUES ('08', '12', '20:18, 1401/01/14');
INSERT INTO `project`.`order` (`oid`, `customer_cid`, `date`) VALUES ('09', '13', '20:18, 1401/11/02');
INSERT INTO `project`.`order` (`oid`, `customer_cid`, `date`) VALUES ('010', '13', '20:18, 1401/06/7');
INSERT INTO `project`.`order` (`oid`, `customer_cid`, `date`) VALUES ('011', '13', '20:18, 1401/06/9');
INSERT INTO `project`.`order` (`oid`, `customer_cid`, `date`) VALUES ('012', '14', '20:18, 1401/07/4');
INSERT INTO `project`.`order` (`oid`, `customer_cid`, `date`) VALUES ('013', '15', '20:18, 1401/01/14');

COMMIT;

START TRANSACTION;
UPDATE `project`.`part` SET `name` = 'panel' WHERE (`pid` = '5');
UPDATE `project`.`part` SET `name` = 'karnel' WHERE (`pid` = '6');
UPDATE `project`.`part` SET `name` = 'screen' WHERE (`pid` = '8');
UPDATE `project`.`part` SET `name` = 'battery' WHERE (`pid` = '9');
UPDATE `project`.`part` SET `name` = 'micro' WHERE (`pid` = '10');
UPDATE `project`.`part` SET `name` = 'lqmp' WHERE (`pid` = '11');
UPDATE `project`.`part` SET `name` = 'transisitor' WHERE (`pid` = '12');
UPDATE `project`.`part` SET `name` = 'lc' WHERE (`pid` = '13');
UPDATE `project`.`part` SET `name` = 'pc' WHERE (`pid` = '14');

COMMIT;

START TRANSACTION;
UPDATE `project`.`suplire_has_part` SET `suplire_sid` = 's1' WHERE (`suplire_sid` = '1') and (`part_pid` = '1');
UPDATE `project`.`suplire_has_part` SET `suplire_sid` = 's2' WHERE (`suplire_sid` = '2') and (`part_pid` = '1');
UPDATE `project`.`suplire_has_part` SET `suplire_sid` = 's1' WHERE (`suplire_sid` = '1') and (`part_pid` = '2');
UPDATE `project`.`suplire_has_part` SET `suplire_sid` = 's1' WHERE (`suplire_sid` = '1') and (`part_pid` = '3');
UPDATE `project`.`suplire_has_part` SET `suplire_sid` = 's1' WHERE (`suplire_sid` = '1') and (`part_pid` = '4');
UPDATE `project`.`suplire_has_part` SET `suplire_sid` = 's2' WHERE (`suplire_sid` = '2') and (`part_pid` = '4');
UPDATE `project`.`suplire_has_part` SET `suplire_sid` = 's3' WHERE (`suplire_sid` = '3') and (`part_pid` = '4');
UPDATE `project`.`suplire_has_part` SET `suplire_sid` = 's1' WHERE (`suplire_sid` = '1') and (`part_pid` = '5');
UPDATE `project`.`suplire_has_part` SET `suplire_sid` = 's1' WHERE (`suplire_sid` = '1') and (`part_pid` = '6');
UPDATE `project`.`suplire_has_part` SET `suplire_sid` = 's2' WHERE (`suplire_sid` = '2') and (`part_pid` = '6');
UPDATE `project`.`suplire_has_part` SET `suplire_sid` = 's1' WHERE (`suplire_sid` = '1') and (`part_pid` = '7');
UPDATE `project`.`suplire_has_part` SET `suplire_sid` = 's3' WHERE (`suplire_sid` = '3') and (`part_pid` = '7');
UPDATE `project`.`suplire_has_part` SET `suplire_sid` = 's6' WHERE (`suplire_sid` = '1') and (`part_pid` = '8');
UPDATE `project`.`suplire_has_part` SET `suplire_sid` = 's5' WHERE (`suplire_sid` = '3') and (`part_pid` = '8');
UPDATE `project`.`suplire_has_part` SET `suplire_sid` = 's5' WHERE (`suplire_sid` = '1') and (`part_pid` = '9');
UPDATE `project`.`suplire_has_part` SET `suplire_sid` = 's4' WHERE (`suplire_sid` = '2') and (`part_pid` = '9');
UPDATE `project`.`suplire_has_part` SET `suplire_sid` = 's4' WHERE (`suplire_sid` = '2') and (`part_pid` = '10');
UPDATE `project`.`suplire_has_part` SET `suplire_sid` = 's6' WHERE (`suplire_sid` = '2') and (`part_pid` = '11');
UPDATE `project`.`suplire_has_part` SET `suplire_sid` = 's7' WHERE (`suplire_sid` = '2') and (`part_pid` = '12');
UPDATE `project`.`suplire_has_part` SET `suplire_sid` = 's8' WHERE (`suplire_sid` = '3') and (`part_pid` = '12');
UPDATE `project`.`suplire_has_part` SET `suplire_sid` = 's8' WHERE (`suplire_sid` = '1') and (`part_pid` = '13');
UPDATE `project`.`suplire_has_part` SET `suplire_sid` = 's8' WHERE (`suplire_sid` = '1') and (`part_pid` = '14');
UPDATE `project`.`suplire_has_part` SET `suplire_sid` = 's9' WHERE (`suplire_sid` = '2') and (`part_pid` = '14');
UPDATE `project`.`suplire_has_part` SET `suplire_sid` = 's9' WHERE (`suplire_sid` = '3') and (`part_pid` = '14');

COMMIT;

START TRANSACTION;
UPDATE `project`.`suplire` SET `sid` = 's1' WHERE (`sid` = '1');
UPDATE `project`.`suplire` SET `sid` = 's2' WHERE (`sid` = '2');
UPDATE `project`.`suplire` SET `sid` = 's3' WHERE (`sid` = '3');
INSERT INTO `project`.`suplire` (`sid`, `name`) VALUES ('s4', 'ت4');
INSERT INTO `project`.`suplire` (`sid`, `name`) VALUES ('s5', 'ت5');
INSERT INTO `project`.`suplire` (`sid`, `name`) VALUES ('s6', 'ت6');
INSERT INTO `project`.`suplire` (`sid`, `name`) VALUES ('s7', 'ت7');
INSERT INTO `project`.`suplire` (`sid`, `name`) VALUES ('s8', 'ت8');
INSERT INTO `project`.`suplire` (`sid`, `name`) VALUES ('s9', 'ت9');

COMMIT;

START TRANSACTION;
INSERT INTO `project`.`worker` (`name`, `employee_eid`) VALUES ('ahmad', '981019');
INSERT INTO `project`.`worker` (`name`, `employee_eid`) VALUES ('ali', '981013');
INSERT INTO `project`.`worker` (`name`, `employee_eid`) VALUES ('ahad', '981056');
INSERT INTO `project`.`worker` (`name`, `employee_eid`) VALUES ('sadegh', '981010');
INSERT INTO `project`.`worker` (`name`, `employee_eid`) VALUES ('reza', '981020');
INSERT INTO `project`.`worker` (`name`, `employee_eid`) VALUES ('taha', '981024');
INSERT INTO `project`.`worker` (`name`, `employee_eid`) VALUES ('david', '981025');
INSERT INTO `project`.`worker` (`name`, `employee_eid`) VALUES ('karim', '981026');
INSERT INTO `project`.`worker` (`name`, `employee_eid`) VALUES ('naeim', '9810127');

COMMIT;
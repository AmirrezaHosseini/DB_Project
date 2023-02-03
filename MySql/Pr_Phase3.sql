-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema final_project
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema final_project
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `final_project` DEFAULT CHARACTER SET utf8 ;
USE `final_project` ;

-- -----------------------------------------------------
-- Table `final_project`.`Customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `final_project`.`Customer` (
  `cid` INT NOT NULL,
  `cname` VARCHAR(45) NULL,
  PRIMARY KEY (`cid`))
ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS `final_project`.`User` (
  `uid` INT NOT NULL auto_increment,
  `username` VARCHAR(45) not NULL,
  password varchar(45) not null,
  isAdmin boolean null,
  city varchar(100),
  PRIMARY KEY (`uid`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `final_project`.`Profile`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `final_project`.`Profile` (
  `pid` INT NOT NULL AUTO_INCREMENT,
  `Customer_cid` INT NOT NULL,
  `username` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `phone` VARCHAR(45) NULL,
  `gender` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  PRIMARY KEY (`pid`),
  INDEX `fk_Profile_Customer1_idx` (`Customer_cid` ASC) VISIBLE,
  CONSTRAINT `fk_Profile_Customer1`
    FOREIGN KEY (`Customer_cid`)
    REFERENCES `final_project`.`Customer` (`cid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `final_project`.`Cart`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `final_project`.`Cart` (
  `cartid` INT NOT NULL,
  `Customer_cid` INT NOT NULL,
  `status` VARCHAR(45) NULL,
  `total_cost` DECIMAL(20) NULL,
  PRIMARY KEY (`cartid`),
  INDEX `fk_Cart_Customer1_idx` (`Customer_cid` ASC) VISIBLE,
  CONSTRAINT `fk_Cart_Customer1`
    FOREIGN KEY (`Customer_cid`)
    REFERENCES `final_project`.`Customer` (`cid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `final_project`.`Invoice`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `final_project`.`Invoice` (
  `Cart_cartid` INT NOT NULL,
  `total_cost` DECIMAL(20) NULL,
  `date` DATE NULL,
  PRIMARY KEY (`Cart_cartid`),
  CONSTRAINT `fk_Invoice_Cart1`
    FOREIGN KEY (`Cart_cartid`)
    REFERENCES `final_project`.`Cart` (`cartid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `final_project`.`Product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `final_project`.`Product` (
  `pid` INT NOT NULL,
  `pname` VARCHAR(45) NULL,
  `available_amount` INT NULL,
  `discount_percent` INT NULL,
  `pruduce_date` DATE NULL,
  `expire_date` DATE NULL,
  `price` DECIMAL(20) NULL,
  `category` VARCHAR(45) NULL,
  PRIMARY KEY (`pid`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `final_project`.`Cart_has_Product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `final_project`.`Cart_has_Product` (
  `Cart_cartid` INT NOT NULL,
  `Product_pid` INT NOT NULL,
  `amount` INT NULL,
  `unit_price` DECIMAL(20) NULL,
  `total_price` DECIMAL(20) NULL,
  PRIMARY KEY (`Cart_cartid`, `Product_pid`),
  INDEX `fk_Cart_has_Product_Product1_idx` (`Product_pid` ASC) VISIBLE,
  INDEX `fk_Cart_has_Product_Cart1_idx` (`Cart_cartid` ASC) VISIBLE,
  CONSTRAINT `fk_Cart_has_Product_Cart1`
    FOREIGN KEY (`Cart_cartid`)
    REFERENCES `final_project`.`Cart` (`cartid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cart_has_Product_Product1`
    FOREIGN KEY (`Product_pid`)
    REFERENCES `final_project`.`Product` (`pid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `final_project`.`DiscountCode`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `final_project`.`DiscountCode` (
  `discount_code` VARCHAR(20) NOT NULL,
  `discount_percent` INT NULL,
  `expire_date` DATE NULL,
  PRIMARY KEY (`discount_code`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `final_project`.`Customer_has_DiscountCode`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `final_project`.`Customer_has_DiscountCode` (
  `Customer_cid` INT NOT NULL,
  `DiscountCode_discount_code` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`Customer_cid`, `DiscountCode_discount_code`),
  INDEX `fk_Customer_has_DiscountCode_DiscountCode1_idx` (`DiscountCode_discount_code` ASC) VISIBLE,
  INDEX `fk_Customer_has_DiscountCode_Customer1_idx` (`Customer_cid` ASC) VISIBLE,
  CONSTRAINT `fk_Customer_has_DiscountCode_Customer1`
    FOREIGN KEY (`Customer_cid`)
    REFERENCES `final_project`.`Customer` (`cid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Customer_has_DiscountCode_DiscountCode1`
    FOREIGN KEY (`DiscountCode_discount_code`)
    REFERENCES `final_project`.`DiscountCode` (`discount_code`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `final_project`.`Suplier`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `final_project`.`Suplier` (
  `contract_num` INT NOT NULL,
  `sname` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `phone` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  PRIMARY KEY (`contract_num`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `final_project`.`Product_has_Suplier`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `final_project`.`Product_has_Suplier` (
  `Product_pid` INT NOT NULL,
  `Suplier_contract_num` INT NOT NULL,
  `amount` DECIMAL(20) NULL,
  `price` DECIMAL(20) NULL,
  PRIMARY KEY (`Product_pid`, `Suplier_contract_num`),
  INDEX `fk_Product_has_Suplier_Suplier1_idx` (`Suplier_contract_num` ASC) VISIBLE,
  INDEX `fk_Product_has_Suplier_Product1_idx` (`Product_pid` ASC) VISIBLE,
  CONSTRAINT `fk_Product_has_Suplier_Product1`
    FOREIGN KEY (`Product_pid`)
    REFERENCES `final_project`.`Product` (`pid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Product_has_Suplier_Suplier1`
    FOREIGN KEY (`Suplier_contract_num`)
    REFERENCES `final_project`.`Suplier` (`contract_num`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `final_project`.`PriceHistory`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `final_project`.`PriceHistory` (
  `Product_pid` INT NOT NULL,
  `date` DATE NOT NULL,
  `price` DECIMAL(20) NULL,
  PRIMARY KEY (`Product_pid`, `date`),
  INDEX `fk_PriceHistory_Product1_idx` (`Product_pid` ASC) VISIBLE,
  CONSTRAINT `fk_PriceHistory_Product1`
    FOREIGN KEY (`Product_pid`)
    REFERENCES `final_project`.`Product` (`pid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `final_project`.`Store`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `final_project`.`Store` (
  `brandname` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`brandname`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `final_project`.`Branch`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `final_project`.`Branch` (
  `bid` INT NOT NULL,
  `Store_brandname` VARCHAR(50) NOT NULL,
  `baddress` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `phone` VARCHAR(45) NULL,
  PRIMARY KEY (`bid`),
  INDEX `fk_Branch_Store1_idx` (`Store_brandname` ASC) VISIBLE,
  CONSTRAINT `fk_Branch_Store1`
    FOREIGN KEY (`Store_brandname`)
    REFERENCES `final_project`.`Store` (`brandname`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `final_project`.`Employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `final_project`.`Employee` (
  `eid` INT NOT NULL,
  `Branch_bid` INT NULL,
  `ename` VARCHAR(45) NULL,
  `phone` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `salary` DECIMAL(20) NULL,
  `Warehouse_wid` INT NULL,
  PRIMARY KEY (`eid`),
  INDEX `fk_Employee_Branch1_idx` (`Branch_bid` ASC) VISIBLE,
  INDEX `fk_Employee_Warehouse1_idx` (`Warehouse_wid` ASC) VISIBLE,
  CONSTRAINT `fk_Employee_Branch1`
    FOREIGN KEY (`Branch_bid`)
    REFERENCES `final_project`.`Branch` (`bid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Employee_Warehouse1`
    FOREIGN KEY (`Warehouse_wid`)
    REFERENCES `final_project`.`Warehouse` (`wid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `final_project`.`Warehouse`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `final_project`.`Warehouse` (
  `wid` INT NOT NULL,
  `warehouse_keeper _id` INT NOT NULL,
  `waddress` VARCHAR(45) NULL,
  `wcapacity` VARCHAR(45) NULL,
  PRIMARY KEY (`wid`),
  INDEX `fk_Warehouse_Employee1_idx` (`warehouse_keeper _id` ASC) VISIBLE,
  CONSTRAINT `fk_Warehouse_Employee1`
    FOREIGN KEY (`warehouse_keeper _id`)
    REFERENCES `final_project`.`Employee` (`eid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `final_project`.`Warehouse_has_Product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `final_project`.`Warehouse_has_Product` (
  `Warehouse_wid` INT NOT NULL,
  `Product_pid` INT NOT NULL,
  `quantity` DECIMAL(20) NOT NULL,
  PRIMARY KEY (`Warehouse_wid`, `Product_pid`),
  INDEX `fk_Warehouse_has_Product_Product1_idx` (`Product_pid` ASC) VISIBLE,
  INDEX `fk_Warehouse_has_Product_Warehouse1_idx` (`Warehouse_wid` ASC) VISIBLE,
  CONSTRAINT `fk_Warehouse_has_Product_Warehouse1`
    FOREIGN KEY (`Warehouse_wid`)
    REFERENCES `final_project`.`Warehouse` (`wid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Warehouse_has_Product_Product1`
    FOREIGN KEY (`Product_pid`)
    REFERENCES `final_project`.`Product` (`pid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `final_project`.`Customer_has_Branch`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `final_project`.`Customer_has_Branch` (
  `Customer_cid` INT NOT NULL,
  `Branch_bid` INT NOT NULL,
  `total_cost` DECIMAL NULL,
  PRIMARY KEY (`Customer_cid`, `Branch_bid`),
  INDEX `fk_Customer_has_Branch_Branch1_idx` (`Branch_bid` ASC) VISIBLE,
  INDEX `fk_Customer_has_Branch_Customer1_idx` (`Customer_cid` ASC) VISIBLE,
  CONSTRAINT `fk_Customer_has_Branch_Customer1`
    FOREIGN KEY (`Customer_cid`)
    REFERENCES `final_project`.`Customer` (`cid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Customer_has_Branch_Branch1`
    FOREIGN KEY (`Branch_bid`)
    REFERENCES `final_project`.`Branch` (`bid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `final_project`.`Shareholder`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `final_project`.`Shareholder` (
  `shid` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `phone` VARCHAR(45) NOT NULL,
  `address` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`shid`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `final_project`.`Shareholder_has_Store`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `final_project`.`Shareholder_has_Store` (
  `Shareholder_shid` INT NOT NULL,
  `Store_brandname` VARCHAR(50) NOT NULL,
  `percent` DECIMAL(20) NOT NULL,
  PRIMARY KEY (`Shareholder_shid`, `Store_brandname`),
  INDEX `fk_Shareholder_has_Store_Store1_idx` (`Store_brandname` ASC) VISIBLE,
  INDEX `fk_Shareholder_has_Store_Shareholder1_idx` (`Shareholder_shid` ASC) VISIBLE,
  CONSTRAINT `fk_Shareholder_has_Store_Shareholder1`
    FOREIGN KEY (`Shareholder_shid`)
    REFERENCES `final_project`.`Shareholder` (`shid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Shareholder_has_Store_Store1`
    FOREIGN KEY (`Store_brandname`)
    REFERENCES `final_project`.`Store` (`brandname`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `final_project`.`Board_of_directors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `final_project`.`Board_of_directors` (
  `director_id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `phone` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `age` VARCHAR(45) NULL,
  `gender` VARCHAR(45) NULL,
  `is_CEO` TINYINT NULL,
  PRIMARY KEY (`director_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `final_project`.`Board_of_directors_has_Store`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `final_project`.`Board_of_directors_has_Store` (
  `Board_of_directors_director_id` INT NOT NULL,
  `Store_brandname` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`Board_of_directors_director_id`, `Store_brandname`),
  INDEX `fk_Board_of_directors_has_Store_Store1_idx` (`Store_brandname` ASC) VISIBLE,
  INDEX `fk_Board_of_directors_has_Store_Board_of_directors1_idx` (`Board_of_directors_director_id` ASC) VISIBLE,
  CONSTRAINT `fk_Board_of_directors_has_Store_Board_of_directors1`
    FOREIGN KEY (`Board_of_directors_director_id`)
    REFERENCES `final_project`.`Board_of_directors` (`director_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Board_of_directors_has_Store_Store1`
    FOREIGN KEY (`Store_brandname`)
    REFERENCES `final_project`.`Store` (`brandname`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `final_project`.`Branch_has_Product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `final_project`.`Branch_has_Product` (
  `Branch_bid` INT NOT NULL,
  `Product_pid` INT NOT NULL,
  `quantity` DECIMAL(20) NULL,
  PRIMARY KEY (`Branch_bid`, `Product_pid`),
  INDEX `fk_Branch_has_Product_Product1_idx` (`Product_pid` ASC) VISIBLE,
  INDEX `fk_Branch_has_Product_Branch1_idx` (`Branch_bid` ASC) VISIBLE,
  CONSTRAINT `fk_Branch_has_Product_Branch1`
    FOREIGN KEY (`Branch_bid`)
    REFERENCES `final_project`.`Branch` (`bid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Branch_has_Product_Product1`
    FOREIGN KEY (`Product_pid`)
    REFERENCES `final_project`.`Product` (`pid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `final_project`.`Transaction_history`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `final_project`.`Transaction_history` (
  `id` INT NOT NULL,
  `date` DATE NULL,
  `value` DECIMAL(20) NULL,
  `Customer_cid` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Transaction_history_Customer1_idx` (`Customer_cid` ASC) VISIBLE,
  CONSTRAINT `fk_Transaction_history_Customer1`
    FOREIGN KEY (`Customer_cid`)
    REFERENCES `final_project`.`Customer` (`cid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `final_project`.`CEO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `final_project`.`CEO` (
  `name` VARCHAR(50) NOT NULL,
  `Store_brandname` VARCHAR(50) NOT NULL,
  `phone` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  PRIMARY KEY (`name`),
  INDEX `fk_CEO_Store1_idx` (`Store_brandname` ASC) VISIBLE,
  CONSTRAINT `fk_CEO_Store1`
    FOREIGN KEY (`Store_brandname`)
    REFERENCES `final_project`.`Store` (`brandname`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


create table Comment(
id integer auto_increment,
pid integer,
content varchar(1000),
point integer,
primary key(id, pid),
foreign key(pid) references Product(pid)
);

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

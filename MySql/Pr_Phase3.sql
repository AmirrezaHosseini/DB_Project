-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema project
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema project
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `project` DEFAULT CHARACTER SET utf8mb3 ;
USE `project` ;

-- -----------------------------------------------------
-- Table `project`.`manager`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `project`.`manager` (
  `mid` INT NOT NULL,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`mid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `project`.`workhouse`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `project`.`workhouse` (
  `wid` INT NOT NULL,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `address` VARCHAR(45) NULL DEFAULT NULL,
  `telephone` VARCHAR(45) NULL DEFAULT NULL,
  `manager_mid` INT NOT NULL,
  PRIMARY KEY (`wid`),
  INDEX `fk_workhouse_manager1_idx` (`manager_mid` ASC) VISIBLE,
  CONSTRAINT `fk_workhouse_manager1`
    FOREIGN KEY (`manager_mid`)
    REFERENCES `project`.`manager` (`mid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `project`.`employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `project`.`employee` (
  `eid` INT NOT NULL,
  `nmae` VARCHAR(45) NULL DEFAULT NULL,
  `workhouse_wid` INT NOT NULL,
  `manager_mid` INT NOT NULL,
  PRIMARY KEY (`eid`),
  INDEX `fk_employee_workhouse1_idx` (`workhouse_wid` ASC) VISIBLE,
  INDEX `fk_employee_manager1_idx` (`manager_mid` ASC) VISIBLE,
  CONSTRAINT `fk_employee_manager1`
    FOREIGN KEY (`manager_mid`)
    REFERENCES `project`.`manager` (`mid`),
  CONSTRAINT `fk_employee_workhouse1`
    FOREIGN KEY (`workhouse_wid`)
    REFERENCES `project`.`workhouse` (`wid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `project`.`staff`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `project`.`staff` (
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `employee_eid` INT NOT NULL,
  PRIMARY KEY (`employee_eid`),
  CONSTRAINT `fk_staff_employee1`
    FOREIGN KEY (`employee_eid`)
    REFERENCES `project`.`employee` (`eid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `project`.`commercialstaff`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `project`.`commercialstaff` (
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `staff_employee_eid` INT NOT NULL,
  PRIMARY KEY (`staff_employee_eid`),
  CONSTRAINT `fk_commercialstaff_staff1`
    FOREIGN KEY (`staff_employee_eid`)
    REFERENCES `project`.`staff` (`employee_eid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `project`.`suplire`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `project`.`suplire` (
  `sid` INT NOT NULL,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`sid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `project`.`bill`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `project`.`bill` (
  `bid` INT NOT NULL,
  `date` VARCHAR(50) NULL DEFAULT NULL,
  `suplire_sid` INT NOT NULL,
  `commercialstaff_staff_employee_eid` INT NULL DEFAULT NULL,
  PRIMARY KEY (`bid`),
  INDEX `fk_bill_suplire1_idx` (`suplire_sid` ASC) VISIBLE,
  INDEX `fk_bill_commercialstaff1_idx` (`commercialstaff_staff_employee_eid` ASC) VISIBLE,
  CONSTRAINT `fk_bill_commercialstaff1`
    FOREIGN KEY (`commercialstaff_staff_employee_eid`)
    REFERENCES `project`.`commercialstaff` (`staff_employee_eid`),
  CONSTRAINT `fk_bill_suplire1`
    FOREIGN KEY (`suplire_sid`)
    REFERENCES `project`.`suplire` (`sid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `project`.`part`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `project`.`part` (
  `pid` INT NOT NULL,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`pid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `project`.`bill_has_part`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `project`.`bill_has_part` (
  `bill_bid` INT NOT NULL,
  `part_pid` INT NOT NULL,
  `quantity` INT NULL DEFAULT NULL,
  `price` DECIMAL(10,0) NULL DEFAULT NULL,
  PRIMARY KEY (`bill_bid`, `part_pid`),
  INDEX `fk_bill_has_part_part1_idx` (`part_pid` ASC) VISIBLE,
  INDEX `fk_bill_has_part_bill1_idx` (`bill_bid` ASC) VISIBLE,
  CONSTRAINT `fk_bill_has_part_bill1`
    FOREIGN KEY (`bill_bid`)
    REFERENCES `project`.`bill` (`bid`),
  CONSTRAINT `fk_bill_has_part_part1`
    FOREIGN KEY (`part_pid`)
    REFERENCES `project`.`part` (`pid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `project`.`marketer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `project`.`marketer` (
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `employee_eid` INT NOT NULL,
  `marketer_employee_eid` INT NULL DEFAULT NULL,
  PRIMARY KEY (`employee_eid`),
  INDEX `fk_marketer_marketer1_idx` (`marketer_employee_eid` ASC) VISIBLE,
  CONSTRAINT `fk_marketer_employee1`
    FOREIGN KEY (`employee_eid`)
    REFERENCES `project`.`employee` (`eid`),
  CONSTRAINT `fk_marketer_marketer1`
    FOREIGN KEY (`marketer_employee_eid`)
    REFERENCES `project`.`marketer` (`employee_eid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `project`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `project`.`customer` (
  `cid` INT NOT NULL,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `marketer_employee_eid` INT NOT NULL,
  `phone` VARCHAR(45) NULL DEFAULT NULL,
  `address` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`cid`),
  INDEX `fk_customer_marketer1_idx` (`marketer_employee_eid` ASC) VISIBLE,
  CONSTRAINT `fk_customer_marketer1`
    FOREIGN KEY (`marketer_employee_eid`)
    REFERENCES `project`.`marketer` (`employee_eid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `project`.`item`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `project`.`item` (
  `iid` INT NOT NULL,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`iid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `project`.`order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `project`.`order` (
  `oid` INT NOT NULL,
  `customer_cid` INT NOT NULL,
  `date` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`oid`),
  INDEX `fk_order_customer1_idx` (`customer_cid` ASC) VISIBLE,
  CONSTRAINT `fk_order_customer1`
    FOREIGN KEY (`customer_cid`)
    REFERENCES `project`.`customer` (`cid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `project`.`item_has_order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `project`.`item_has_order` (
  `item_iid` INT NOT NULL,
  `order_oid` INT NOT NULL,
  PRIMARY KEY (`item_iid`, `order_oid`),
  INDEX `fk_item_has_order_order1_idx` (`order_oid` ASC) VISIBLE,
  INDEX `fk_item_has_order_item1_idx` (`item_iid` ASC) VISIBLE,
  CONSTRAINT `fk_item_has_order_item1`
    FOREIGN KEY (`item_iid`)
    REFERENCES `project`.`item` (`iid`),
  CONSTRAINT `fk_item_has_order_order1`
    FOREIGN KEY (`order_oid`)
    REFERENCES `project`.`order` (`oid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `project`.`item_has_part`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `project`.`item_has_part` (
  `item_iid` INT NOT NULL,
  `part_pid` INT NOT NULL,
  PRIMARY KEY (`item_iid`, `part_pid`),
  INDEX `fk_item_has_part_part1_idx` (`part_pid` ASC) VISIBLE,
  INDEX `fk_item_has_part_item1_idx` (`item_iid` ASC) VISIBLE,
  CONSTRAINT `fk_item_has_part_item1`
    FOREIGN KEY (`item_iid`)
    REFERENCES `project`.`item` (`iid`),
  CONSTRAINT `fk_item_has_part_part1`
    FOREIGN KEY (`part_pid`)
    REFERENCES `project`.`part` (`pid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `project`.`suplire_has_part`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `project`.`suplire_has_part` (
  `suplire_sid` INT NOT NULL,
  `part_pid` INT NOT NULL,
  PRIMARY KEY (`suplire_sid`, `part_pid`),
  INDEX `fk_suplire_has_part_part1_idx` (`part_pid` ASC) VISIBLE,
  INDEX `fk_suplire_has_part_suplire1_idx` (`suplire_sid` ASC) VISIBLE,
  CONSTRAINT `fk_suplire_has_part_part1`
    FOREIGN KEY (`part_pid`)
    REFERENCES `project`.`part` (`pid`),
  CONSTRAINT `fk_suplire_has_part_suplire1`
    FOREIGN KEY (`suplire_sid`)
    REFERENCES `project`.`suplire` (`sid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `project`.`worker`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `project`.`worker` (
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `employee_eid` INT NOT NULL,
  PRIMARY KEY (`employee_eid`),
  CONSTRAINT `fk_worker_employee1`
    FOREIGN KEY (`employee_eid`)
    REFERENCES `project`.`employee` (`eid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

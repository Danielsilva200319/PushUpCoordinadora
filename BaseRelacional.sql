CREATE DATABASE coordinadora;
USE coordinadora;

CREATE TABLE `Pay`(
    `Id` INT NOT NULL AUTO_INCREMENT,
    `Pay` DOUBLE NOT NULL,
    `IdProductFk` INT NOT NULL,
    `IdPayType` INT NOT NULL
);
ALTER TABLE
    `Pay` ADD PRIMARY KEY `pay_id_primary`(`Id`);

CREATE TABLE `Route`(
    `Id` INT NOT NULL AUTO_INCREMENT,
    `OriginPoint` VARCHAR(255) NOT NULL,
    `DestinationPoint` VARCHAR(255) NOT NULL,
    `IdPedidoFk` INT NOT NULL
);
ALTER TABLE
    `Route` ADD PRIMARY KEY `route_id_primary`(`Id`);

CREATE TABLE `Shipment`(
    `Id` INT NOT NULL AUTO_INCREMENT,
    `Description` VARCHAR(255) NOT NULL,
    `Duraction` TIME NOT NULL,
    `ShipmentTypeFk` INT NOT NULL
);
ALTER TABLE
    `Shipment` ADD PRIMARY KEY `shipment_id_primary`(`Id`);

CREATE TABLE `Country`(
    `Id` INT NOT NULL AUTO_INCREMENT,
    `Name` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `Country` ADD PRIMARY KEY `country_id_primary`(`Id`);

CREATE TABLE `PayType`(
    `Id` INT NOT NULL AUTO_INCREMENT,
    `PayType` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `PayType` ADD PRIMARY KEY `paytype_id_primary`(`Id`);

CREATE TABLE `Client`(
    `Id` INT NOT NULL AUTO_INCREMENT,
    `Name` VARCHAR(255) NOT NULL,
    `LastName` VARCHAR(255) NOT NULL,
    `Email` VARCHAR(255) NOT NULL,
    `Address` VARCHAR(255) NOT NULL,
    `Phone` VARCHAR(255) NOT NULL,
    `IdCityFk` INT NOT NULL
);
ALTER TABLE
    `Client` ADD PRIMARY KEY `client_id_primary`(`Id`);

CREATE TABLE `Department`(
    `Id` INT NOT NULL AUTO_INCREMENT,
    `NameDepar` VARCHAR(255) NOT NULL,
    `IdCountryFk` INT NOT NULL
);
ALTER TABLE
    `Department` ADD PRIMARY KEY `department_id_primary`(`Id`);

CREATE TABLE `ShipmentType`(
    `Id` INT NOT NULL AUTO_INCREMENT,
    `ShipmentType` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `ShipmentType` ADD PRIMARY KEY `shipmenttype_id_primary`(`Id`);

CREATE TABLE `Employee`(
    `Id` INT NOT NULL AUTO_INCREMENT,
    `Name` VARCHAR(255) NOT NULL,
    `LastName` VARCHAR(255) NOT NULL,
    `Email` VARCHAR(255) NOT NULL,
    `Phone` VARCHAR(255) NOT NULL,
    `Position` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `Employee` ADD PRIMARY KEY `employee_id_primary`(`Id`);

CREATE TABLE `Product`(
    `Id` INT NOT NULL AUTO_INCREMENT,
    `Name` VARCHAR(255) NOT NULL,
    `Description` VARCHAR(255) NOT NULL,
    `Supplier` VARCHAR(255) NOT NULL,
    `BuyPrice` DOUBLE NOT NULL,
    `AmountStock` INT NOT NULL,
    `IdPedidoFk` BIGINT NOT NULL
);
ALTER TABLE
    `Product` ADD PRIMARY KEY `product_id_primary`(`Id`);

CREATE TABLE `Order`(
    `id` INT NOT NULL AUTO_INCREMENT,
    `Description` VARCHAR(255) NOT NULL,
    `OrderDate` DATE NOT NULL,
    `DeliveryDate` DATE NOT NULL,
    `ExpectedDate` DATE NOT NULL,
    `IdShipment` INT NOT NULL,
    `IdClientFk` INT NOT NULL
);
ALTER TABLE
    `Order` ADD PRIMARY KEY `order_id_primary`(`id`);

CREATE TABLE `City`(
    `Id` INT NOT NULL AUTO_INCREMENT,
    `Name` VARCHAR(255) NOT NULL,
    `IdDepartmentFk` INT NOT NULL,
    `IdEmployeeFk` INT NOT NULL
);
ALTER TABLE
    `City` ADD PRIMARY KEY `city_id_primary`(`Id`);

CREATE TABLE `OrderType`(
    `Id` INT NOT NULL AUTO_INCREMENT,
    `Amount` INT NOT NULL,
    `UnitPrice` DOUBLE NOT NULL,
    `IdOrderFk` INT NOT NULL,
    `IdProductFk` INT NOT NULL
);
ALTER TABLE
    `OrderType` ADD PRIMARY KEY `ordertype_id_primary`(`Id`);



ALTER TABLE
    `Order` ADD CONSTRAINT `order_idshipment_foreign` FOREIGN KEY(`IdShipment`) REFERENCES `Shipment`(`Id`);
ALTER TABLE
    `Department` ADD CONSTRAINT `department_idcountryfk_foreign` FOREIGN KEY(`IdCountryFk`) REFERENCES `Country`(`Id`);
ALTER TABLE
    `Route` ADD CONSTRAINT `route_idpedidofk_foreign` FOREIGN KEY(`IdPedidoFk`) REFERENCES `Order`(`id`);
ALTER TABLE
    `City` ADD CONSTRAINT `city_iddepartmentfk_foreign` FOREIGN KEY(`IdDepartmentFk`) REFERENCES `Department`(`Id`);
ALTER TABLE
    `Product` ADD CONSTRAINT `product_idpedidofk_foreign` FOREIGN KEY(`IdPedidoFk`) REFERENCES `Order`(`id`);
ALTER TABLE
    `Pay` ADD CONSTRAINT `pay_idproductfk_foreign` FOREIGN KEY(`IdProductFk`) REFERENCES `Product`(`Id`);
ALTER TABLE
    `Pay` ADD CONSTRAINT `pay_idpaytype_foreign` FOREIGN KEY(`IdPayType`) REFERENCES `PayType`(`Id`);
ALTER TABLE
    `OrderType` ADD CONSTRAINT `ordertype_idproductfk_foreign` FOREIGN KEY(`IdProductFk`) REFERENCES `Product`(`Id`);
ALTER TABLE
    `Product` ADD CONSTRAINT `product_idpedidofk_foreign` FOREIGN KEY(`IdPedidoFk`) REFERENCES `OrderType`(`Id`);
ALTER TABLE
    `OrderType` ADD CONSTRAINT `ordertype_idorderfk_foreign` FOREIGN KEY(`IdOrderFk`) REFERENCES `Order`(`id`);
ALTER TABLE
    `City` ADD CONSTRAINT `city_idemployeefk_foreign` FOREIGN KEY(`IdEmployeeFk`) REFERENCES `Employee`(`Id`);
ALTER TABLE
    `Shipment` ADD CONSTRAINT `shipment_shipmenttypefk_foreign` FOREIGN KEY(`ShipmentTypeFk`) REFERENCES `ShipmentType`(`Id`);
ALTER TABLE
    `Order` ADD CONSTRAINT `order_idclientfk_foreign` FOREIGN KEY(`IdClientFk`) REFERENCES `Client`(`Id`);
ALTER TABLE
    `Client` ADD CONSTRAINT `client_idcityfk_foreign` FOREIGN KEY(`IdCityFk`) REFERENCES `City`(`Id`);
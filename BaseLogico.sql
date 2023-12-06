CREATE DATABASE coordinadora;
USE coordinadora;

CREATE TABLE `Pay`(
    `Id` INT NOT NULL ,
    `Pay` DOUBLE NOT NULL,
    `IdProductFk` INT NOT NULL,
    `IdPayType` INT NOT NULL
);

CREATE TABLE `Route`(
    `Id` INT NOT NULL,
    `OriginPoint` VARCHAR(255) NOT NULL,
    `DestinationPoint` VARCHAR(255) NOT NULL,
    `IdPedidoFk` INT NOT NULL
);

CREATE TABLE `Shipment`(
    `Id` INT NOT NULL,
    `Description` VARCHAR(255) NOT NULL,
    `Duraction` TIME NOT NULL,
    `ShipmentTypeFk` INT NOT NULL
);

CREATE TABLE `Country`(
    `Id` INT NOT NULL,
    `Name` VARCHAR(255) NOT NULL
);

CREATE TABLE `PayType`(
    `Id` INT NOT NULL,
    `PayType` VARCHAR(255) NOT NULL 
);

CREATE TABLE `Client`(
    `Id` INT NOT NULL,
    `Name` VARCHAR(255) NOT NULL,
    `LastName` VARCHAR(255) NOT NULL,
    `Email` VARCHAR(255) NOT NULL,
    `Address` VARCHAR(255) NOT NULL,
    `Phone` VARCHAR(255) NOT NULL,
    `IdCityFk` INT NOT NULL
);

CREATE TABLE `Department`(
    `Id` INT NOT NULL,
    `NameDepar` VARCHAR(255) NOT NULL,
    `IdCountryFk` INT NOT NULL
);

CREATE TABLE `ShipmentType`(
    `Id` INT NOT NULL,
    `ShipmentType` VARCHAR(255) NOT NULL
);

CREATE TABLE `Employee`(
    `Id` INT NOT NULL,
    `Name` VARCHAR(255) NOT NULL,
    `LastName` VARCHAR(255) NOT NULL,
    `Email` VARCHAR(255) NOT NULL,
    `Phone` VARCHAR(255) NOT NULL,
    `Position` VARCHAR(255) NOT NULL
);

CREATE TABLE `Product`(
    `Id` INT NOT NULL,
    `Name` VARCHAR(255) NOT NULL,
    `Description` VARCHAR(255) NOT NULL,
    `Supplier` VARCHAR(255) NOT NULL,
    `BuyPrice` DOUBLE NOT NULL,
    `AmountStock` INT NOT NULL,
    `IdPedidoFk` BIGINT NOT NULL
);

CREATE TABLE `Order`(
    `id` INT NOT NULL,
    `Description` VARCHAR(255) NOT NULL,
    `OrderDate` DATE NOT NULL,
    `DeliveryDate` DATE NOT NULL,
    `ExpectedDate` DATE NOT NULL,
    `IdShipment` INT NOT NULL,
    `IdClientFk` INT NOT NULL
);

CREATE TABLE `City`(
    `Id`,
    `Name`,
    `IdDepartmentFk`,
    `IdEmployeeFk`
);

CREATE TABLE `OrderType`(
    `Id`,
    `Amount`,
    `UnitPrice`,
    `IdOrderFk`,
    `IdProductFk`
);

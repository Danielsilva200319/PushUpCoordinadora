CREATE DATABASE coordinadora;
USE coordinadora;

CREATE TABLE `Pay`(
    `Id`,
    `Pay`,
    `IdProductFk`,
    `IdPayType`
);

CREATE TABLE `Route`(
    `Id`,
    `OriginPoint`,
    `DestinationPoint`,
    `IdPedidoFk`
);

CREATE TABLE `Shipment`(
    `Id`T,
    `Description`,
    `Duraction`,
    `ShipmentTypeFk`
);

CREATE TABLE `Country`(
    `Id`,
    `Name`
);

CREATE TABLE `PayType`(
    `Id`,
    `PayType`
);

CREATE TABLE `Client`(
    `Id`,
    `Name`,
    `LastName`,
    `Email`,
    `Address`,
    `Phone`,
    `IdCityFk`
);

CREATE TABLE `Department`(
    `Id`,
    `NameDepar`,
    `IdCountryFk`
);

CREATE TABLE `ShipmentType`(
    `Id`,
    `ShipmentType`
);

CREATE TABLE `Employee`(
    `Id`,
    `Name`,
    `LastName`,
    `Email`,
    `Phone`,
    `Position`
);

CREATE TABLE `Product`(
    `Id`,
    `Name`,
    `Description`,
    `Supplier`,
    `BuyPrice`,
    `AmountStock`,
    `IdPedidoFk`
);

CREATE TABLE `Order`(
    `id`,
    `Description`,
    `OrderDate`,
    `DeliveryDate`,
    `ExpectedDate`,
    `IdShipment`,
    `IdClientFk`
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

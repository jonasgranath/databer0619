USE lab_mysql;

CREATE TABLE car (Manufacturer VARCHAR(50), Model VARCHAR(20), Year INT(10), VIN VARCHAR(50));

CREATE TABLE Invoices  (InvoiceNumber INT(50), Date DATE, CarVIN VARCHAR(50), SalesPerson VARCHAR(25));

CREATE TABLE Customers (Name VARCHAR(50), Customer_ID VARCHAR(50), Phone BIGINT(50), Email VARCHAR(50), Adress VARCHAR(50));

CREATE TABLE SalesPerson (Name VARCHAR(50), Sale_ID VARCHAR(50), Location_Shop VARCHAR(55));
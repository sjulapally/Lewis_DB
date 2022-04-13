CREATE DATABASE Grocery;
USE Grocery;

CREATE TABLE Brand (
    Brand_ID int NOT NULL,
    Name varchar(255) NOT NULL,
    Total_Products int NOT NULL,
    CONSTRAINT Brand_pk PRIMARY KEY (Brand_ID)
);

-- Table: Customer
CREATE TABLE Customer (
    Customer_ID int NOT NULL,
    Name varchar(255) NOT NULL,
    Email varchar(255) NOT NULL,
    Password varchar(255) NOT NULL,
    CONSTRAINT Customer_pk PRIMARY KEY (Customer_ID)
);

-- Table: Payment
CREATE TABLE Payment (
    Payment_ID int NOT NULL,
    Customer_ID int NOT NULL,
    Total_Payment decimal(8,2) NOT NULL,
    Date date NOT NULL,
    CONSTRAINT Payment_pk PRIMARY KEY (Payment_ID)
);

-- Table: Product
CREATE TABLE Product (
    Product_ID int NOT NULL,
    Brand_ID int NOT NULL,
    Name varchar(255) NOT NULL,
    Price decimal(8,2) NOT NULL,
    CONSTRAINT Product_pk PRIMARY KEY (Product_ID)
);

-- Table: Sale
CREATE TABLE Sale (
    Sale_ID int NOT NULL,
    Product_ID int NOT NULL,
    Customer_ID int NOT NULL,
    Total_Price decimal(8,2) NOT NULL,
    CONSTRAINT Sale_pk PRIMARY KEY (Sale_ID)
);

-- foreign keys
-- Reference: Payment_Customer (table: Payment)
ALTER TABLE Payment ADD CONSTRAINT Payment_Customer FOREIGN KEY Payment_Customer (Customer_ID)
    REFERENCES Customer (Customer_ID);

-- Reference: Product_Brand (table: Product)
ALTER TABLE Product ADD CONSTRAINT Product_Brand FOREIGN KEY Product_Brand (Brand_ID)
    REFERENCES Brand (Brand_ID);

-- Reference: Sale_Customer (table: Sale)
ALTER TABLE Sale ADD CONSTRAINT Sale_Customer FOREIGN KEY Sale_Customer (Customer_ID)
    REFERENCES Customer (Customer_ID);

-- Reference: Sale_Product (table: Sale)
ALTER TABLE Sale ADD CONSTRAINT Sale_Product FOREIGN KEY Sale_Product (Product_ID)
    REFERENCES Product (Product_ID);


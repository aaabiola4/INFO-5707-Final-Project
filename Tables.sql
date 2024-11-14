CREATE TABLE retail.Customers (
    Customer_ID INT PRIMARY KEY AUTO_INCREMENT,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Phone VARCHAR(15),
    Loyalty_Points INT DEFAULT 0,
    Created_Date DATE NOT NULL
);

CREATE TABLE retail.Products (
    Product_ID INT PRIMARY KEY AUTO_INCREMENT,
    Product_Name VARCHAR(100) NOT NULL,
    Description TEXT,
    Price DECIMAL(10, 2) NOT NULL CHECK (Price > 0),
    Stock_Level INT DEFAULT 0,
    Low_Stock_Threshold INT DEFAULT 5,
    Created_Date DATE NOT NULL
);

CREATE TABLE retail.Sales (
    Sale_ID INT PRIMARY KEY AUTO_INCREMENT,
    Customer_ID INT,
    Sale_Date DATETIME NOT NULL,
    Total_Amount DECIMAL(10, 2) NOT NULL CHECK (Total_Amount > 0),
    Payment_Method VARCHAR(20) NOT NULL,
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID)
);

CREATE TABLE retail.Sales_Items (
    Sale_Item_ID INT PRIMARY KEY AUTO_INCREMENT,
    Sale_ID INT,
    Product_ID INT,
    Quantity INT NOT NULL CHECK (Quantity > 0),
    Item_Total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (Sale_ID) REFERENCES Sales(Sale_ID),
    FOREIGN KEY (Product_ID) REFERENCES Products(Product_ID)
);

CREATE TABLE retail.Suppliers (
    Supplier_ID INT PRIMARY KEY AUTO_INCREMENT,
    Supplier_Name VARCHAR(100) NOT NULL,
    Contact_Name VARCHAR(50),
    Phone VARCHAR(15),
    Email VARCHAR(100)
);

CREATE TABLE retail.Purchase_Orders (
    PO_ID INT PRIMARY KEY AUTO_INCREMENT,
    Supplier_ID INT,
    Order_Date DATE NOT NULL,
    Status VARCHAR(20) NOT NULL,
    FOREIGN KEY (Supplier_ID) REFERENCES Suppliers(Supplier_ID)
);

CREATE TABLE reatil.PO_Items (
    PO_Item_ID INT PRIMARY KEY AUTO_INCREMENT,
    PO_ID INT,
    Product_ID INT,
    Quantity INT NOT NULL CHECK (Quantity > 0),
    Item_Cost DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (PO_ID) REFERENCES Purchase_Orders(PO_ID),
    FOREIGN KEY (Product_ID) REFERENCES Products(Product_ID)
);

CREATE TABLE retail.Inventory_Logs (
    Log_ID INT PRIMARY KEY AUTO_INCREMENT,
    Product_ID INT,
    Change_Type VARCHAR(20) NOT NULL,
    Quantity_Changed INT NOT NULL,
    Date DATETIME NOT NULL,
    User_ID INT,
    FOREIGN KEY (Product_ID) REFERENCES Products(Product_ID)
);

CREATE TABLE retail.Users (
    User_ID INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(50) UNIQUE NOT NULL,
    Password_Hash VARCHAR(255) NOT NULL,
    Role VARCHAR(20) NOT NULL
);






CREATE TABLE retail.Customers (
    Customer_ID INT PRIMARY KEY AUTO_INCREMENT,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Phone VARCHAR(25),
    Loyalty_Points INT DEFAULT 0 NOT NULL,
    Created_Date DATE NOT NULL
);

CREATE TABLE retail.Products (
    Product_ID INT PRIMARY KEY AUTO_INCREMENT,
    Product_Name VARCHAR(100) NOT NULL,
    Description TEXT,
    Price DECIMAL(10, 2) NOT NULL CHECK (Price > 0),
    Stock_Level INT DEFAULT 0 NOT NULL,
    Low_Stock_Threshold INT DEFAULT 5 NOT NULL,
    Created_Date DATE NOT NULL
);

CREATE TABLE retail.Sales (
    Sales_ID INT PRIMARY KEY AUTO_INCREMENT,
    Customer_ID INT,
    Sale_Date DATETIME NOT NULL,
    Total_Amount DECIMAL(10, 2) NOT NULL CHECK (Total_Amount > 0),
    Payment_Method VARCHAR(20) NOT NULL,
    FOREIGN KEY (Customer_ID) REFERENCES retail.Customers(Customer_ID)
);

CREATE TABLE retail.Sales_Items (
    Sale_Item_ID INT PRIMARY KEY AUTO_INCREMENT,
    Sales_ID INT,
    Product_ID INT,
    Quantity INT NOT NULL CHECK (Quantity > 0),
    Item_Total DECIMAL(10, 2) NOT NULL CHECK (Item_Total >= 0),
    FOREIGN KEY (Sales_ID) REFERENCES retail.Sales(Sales_ID),
    FOREIGN KEY (Product_ID) REFERENCES retail.Products(Product_ID)
);

CREATE TABLE retail.Suppliers (
    Supplier_ID INT PRIMARY KEY AUTO_INCREMENT,
    Supplier_Name VARCHAR(100) NOT NULL,
    Contact_Name VARCHAR(50),
    Phone VARCHAR(25),
    Email VARCHAR(100)
);

CREATE TABLE retail.Purchase_Orders (
    PO_ID INT PRIMARY KEY AUTO_INCREMENT,
    Supplier_ID INT,
    Order_Date DATE NOT NULL,
    Status VARCHAR(20) NOT NULL,
    FOREIGN KEY (Supplier_ID) REFERENCES retail.Suppliers(Supplier_ID)
);

CREATE TABLE retail.PO_Items (
    PO_Item_ID INT PRIMARY KEY AUTO_INCREMENT,
    PO_ID INT,
    Product_ID INT,
    Quantity INT NOT NULL CHECK (Quantity > 0),
    Item_Cost DECIMAL(10, 2) NOT NULL CHECK (Item_Cost >= 0),
    FOREIGN KEY (PO_ID) REFERENCES retail.Purchase_Orders(PO_ID),
    FOREIGN KEY (Product_ID) REFERENCES retail.Products(Product_ID)
);

CREATE TABLE retail.Inventory_Logs (
    Log_ID INT PRIMARY KEY AUTO_INCREMENT,
    Product_ID INT,
    Change_Type VARCHAR(20) NOT NULL,
    Quantity_Changed INT NOT NULL CHECK (Quantity_Changed >= 0),
    Date DATETIME NOT NULL,
    User_ID INT,
    FOREIGN KEY (Product_ID) REFERENCES retail.Products(Product_ID)
);

CREATE TABLE retail.Users (
    User_ID INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(50) UNIQUE NOT NULL,
    Password_Hash VARCHAR(255) NOT NULL,
    Role VARCHAR(20) NOT NULL
);

ALTER TABLE retail.Customers AUTO_INCREMENT = 1027;

-- Set AUTO_INCREMENT for Customers Table
ALTER TABLE retail.Customers AUTO_INCREMENT = 1027;

-- Insert data into Customers table
INSERT INTO retail.Customers (Customer_ID, First_Name, Last_Name, Email, Phone, Loyalty_Points, Created_Date)
VALUES 
(1000, 'John', 'Matthews', 'johnmatthews@gmail.com', '328321098', 100, '2020-11-15'),
(1001, 'Jane', 'Roberts', 'janeroberts@yahoo.com', '322321178', 200, '2022-09-15'),
(1002, 'Peter', 'Marks', 'petermarks@gmail.com', '4680117832', 400, '2024-11-20'),
(1003, 'Wesley', 'Johns', 'wesleyjohns@gmail.com', '7239560890', 100, '2023-11-03'),
(1004, 'Timothy', 'Dutton', 'timdutt@yahoo.com', '2234567441', 200, '2022-11-08'),
(1005, 'Tracy', 'Smith', 'smithracy@aol.com', '3239937132', 300, '2021-04-12'),
(1006, 'Sarah', 'Dole', 'sdole@gmail.com', '2149972312', 200, '2022-08-05'),
(1007, 'Peter', 'Roney', 'roneypete@yahoo.com', '3984110932', 400, '2023-03-15'),
(1008, 'Ronald', 'Oneal', 'ronyneal@yahoo.com', '2148732311', 600, '2023-05-15'),
(1009, 'Rachel', 'Harris', 'harrrah@gmail.com', '4692149720', 200, '2022-06-15'),
(1010, 'Ross', 'Clinton', 'rosston@yahoo.com', '9720730011', 500, '2024-01-15'),
(1011, 'Monica', 'Hiwatt', 'monicahi@gmail.com', '5635129912', 300, '2024-01-15'),
(1012, 'Ed', 'Munoz', 'munze@aol.com', '7222540321', 100, '2023-12-15'),
(1013, 'Matt', 'Rogers', 'rogersmat@gmail.com', '4709827321', 300, '2022-11-15'),
(1014, 'Kyle', 'Baxter', 'baxterky@ymail.com', '6452319832', 100, '2023-03-15'),
(1015, 'Mandy', 'Galleher', 'mandygell@gmail.com', '3342310932', 600, '2024-09-15'),
(1016, 'Charles', 'Bobby', 'bobbych@hotmail.com', '2153356789', 100, '2022-10-15'),
(1017, 'John', 'Carlton', 'jocarlton@gmail.com', '21355678980', 400, '2024-07-15'),
(1018, 'Carlos', 'Hernadez', 'carlozez@yahoo.com', '4883217211', 200, '2023-11-15'),
(1019, 'Stephen', 'Diaz', 'diazstev@yahoo.com', '21476272311', 500, '2024-11-15'),
(1020, 'Patrick', 'Martins', 'patmartins@gmail.com', '9543528753', 700, '2022-11-15'),
(1021, 'Jane', 'Underhill', 'underhillJ@gmail.com', '4698724422', 300, '2023-11-15'),
(1022, 'Roger', 'Usher', 'usherrg@yahoo.com', '4529827612', 100, '2024-11-15'),
(1023, 'Hillary', 'Josh', 'joshary@hotmail.com', '9729729800', 600, '2021-11-15'),
(1024, 'Bill', 'Yu', 'billyu@gmail.com', '4708738723', 700, '2021-11-15'),
(1025, 'Gladys', 'Lee', 'leeglady@yahoo.com', '2149428823', 100, '2022-03-15'),
(1026, 'Peter', 'Walsh', 'walshpet@aol.com', '4694567770', 500, '2021-01-11');

-- Set AUTO_INCREMENT for Products Table
ALTER TABLE retail.Products AUTO_INCREMENT = 1024;

-- Insert data into Products table
INSERT INTO retail.Products (Product_ID, Product_Name, Description, Price, Stock_Level, Low_Stock_Threshold, Created_Date)
VALUES
(1000, 'Classic Blue Jeans', 'Durable and stylish blue denim jeans', 49.99, 100, 20, '2022-11-15'),
(1001, 'Cotton T-Shirt', 'Soft and breathable cotton t-shirt', 19.99, 150, 30, '2022-01-15'),
(1002, 'Hooded Sweatshirt', 'Comfortable hoodie with front pocket', 39.99, 75, 15, '2024-01-11'),
(1003, 'Leather Jacket', 'Genuine leather jacket with zipper closure', 199.99, 25, 5, '2023-12-02'),
(1004, 'Formal Dress Shirt', 'Slim-fit, wrinkle-free dress shirt', 34.99, 80, 10, '2024-03-15'),
(1005, 'Athletic Shorts', 'Lightweight shorts for sports and leisure', 24.99, 120, 25, '2024-07-25'),
(1006, 'Flannel Shirt', 'Warm and cozy flannel button-up', 29.99, 60, 10, '2022-12-15'),
(1007, 'Denim Jacket', 'Classic denim jacket with button closure', 59.99, 50, 10, '2024-11-08'),
(1008, 'Maxi Dress', 'Elegant and flowy full-length dress', 74.99, 40, 8, '2024-05-18'),
(1009, 'Cargo Pants', 'Functional pants with multiple pockets', 44.99, 90, 20, '2024-01-22'),
(1010, 'Wool Sweater', 'Soft wool sweater for winter', 69.99, 30, 5, '2022-04-25'),
(1011, 'Polo Shirt', 'Casual polo shirt with collar and buttons', 29.99, 100, 20, '2024-02-13'),
(1012, 'Winter Coat', 'Thick coat for cold weather', 149.99, 20, 5, '2024-03-03'),
(1013, 'Leggings', 'Comfortable stretchable leggings', 19.99, 150, 30, '2022-08-25'),
(1014, 'Sports Bra', 'Supportive and breathable sports bra', 29.99, 110, 25, '2024-02-11'),
(1015, 'Skater Skirt', 'Trendy A-line mini skirt', 34.99, 60, 10, '2022-10-07'),
(1016, 'Blazer', 'Tailored blazer for formal occasions', 89.99, 40, 8, '2024-04-02'),
(1017, 'Graphic T-Shirt', 'T-shirt with trendy graphic design', 24.99, 130, 25, '2024-11-17'),
(1018, 'Raincoat', 'Waterproof and lightweight raincoat', 79.99, 30, 5, '2023-04-15'),
(1019, 'Joggers', 'Comfortable jogger pants with elastic waist', 39.99, 100, 20, '2022-04-25'),
(1020, 'Sun Hat', 'Wide-brimmed hat for sun protection', 19.99, 80, 15, '2023-03-12'),
(1021, 'Denim Shorts', 'Casual denim shorts with rolled hems', 34.99, 120, 25, '2024-02-11'),
(1022, 'Slip Dress', 'Sleek and simple slip dress', 49.99, 50, 10, '2023-08-10'),
(1023, 'Canvas Sneakers', 'Lightweight sneakers for everyday wear', 59.99, 70, 15, '2023-10-05');

-- Set AUTO_INCREMENT for Sales Table
ALTER TABLE retail.Sales AUTO_INCREMENT = 121;

-- Insert data into Sales table
INSERT INTO retail.Sales (Sales_ID, Customer_ID, Sale_Date, Total_Amount, Payment_Method)
VALUES
(100, 1001, '2024-11-01', 250.00, 'Credit Card'),
(101, 1002, '2023-11-01', 300.75, 'Debit Card'),
(102, 1003, '2024-11-02', 150.20, 'Cash'),
(103, 1004, '2022-11-07', 275.00, 'PayPal'),
(104, 1005, '2024-02-03', 100.50, 'Credit Card'),
(105, 1006, '2022-04-03', 400.00, 'Debit Card'),
(106, 1007, '2024-08-04', 350.00, 'Credit Card'),
(107, 1008, '2024-11-04', 90.00, 'Cash'),
(108, 1009, '2023-10-25', 500.00, 'PayPal'),
(109, 1010, '2024-08-17', 50.25, 'Debit Card'),
(110, 1011, '2024-06-06', 600.75, 'Credit Card'),
(111, 1012, '2024-03-16', 45.00, 'Cash'),
(112, 1013, '2023-07-07', 300.00, 'PayPal'),
(113, 1014, '2024-04-07', 120.25, 'Credit Card'),
(114, 1015, '2024-06-08', 250.50, 'Debit Card'),
(115, 1016, '2024-05-08', 135.75, 'Cash'),
(116, 1017, '2024-04-09', 400.00, 'PayPal'),
(117, 1018, '2024-10-09', 200.50, 'Credit Card'),
(118, 1019, '2023-11-10', 350.75, 'Debit Card'),
(119, 1020, '2024-01-10', 45.00, 'Cash'),
(120, 1021, '2022-12-11', 100.00, 'Credit Card');

-- Set AUTO_INCREMENT for Sales_Items Table
ALTER TABLE retail.Sales_Items AUTO_INCREMENT = 23;

-- Insert data into Sales_Items table
INSERT INTO retail.Sales_Items (Sale_Item_ID, Sales_ID, Product_ID, Quantity, Item_Total)
VALUES
(1, 100, 1000, 2, 99.98),
(2, 101, 1001, 1, 19.99),
(3, 102, 1002, 3, 45.75),
(4, 103, 1003, 1, 199.99),
(5, 104, 1004, 4, 139.96),
(6, 105, 1005, 5, 124.95),
(7, 106, 1006, 2, 59.98),
(8, 107, 1007, 1, 59.99),
(9, 108, 1008, 1, 74.99),
(10, 109, 1009, 3, 134.97),
(11, 110, 1010, 2, 139.98),
(12, 111, 1011, 1, 29.99),
(13, 112, 1012, 1, 149.99),
(14, 113, 1013, 4, 79.96),
(15, 114, 1014, 3, 89.97),
(16, 115, 1015, 2, 69.98),
(17, 116, 1016, 1, 89.99),
(18, 117, 1017, 3, 74.97),
(19, 118, 1018, 1, 79.99),
(20, 119, 1019, 2, 79.98),
(21, 120, 1020, 3, 59.97),
(22, 120, 1021, 1, 34.99);

-- Set AUTO_INCREMENT for Suppliers Table
ALTER TABLE retail.Suppliers AUTO_INCREMENT = 23;

-- Insert data into Suppliers table
INSERT INTO retail.Suppliers (Supplier_ID, Supplier_Name, Contact_Name, Phone, Email)
VALUES
(1, 'Apparel Group', 'John Smith', '123-456-7890', 'john.smith@apparelgroup.com'),
(2, 'Urban Threads', 'Emily Davis', '234-567-8901', 'emily.davis@urbanthreads.com'),
(3, 'Fashion Forward', 'Michael Brown', '345-678-9012', 'michael.brown@fashionforward.com'),
(4, 'Trendsetters Inc.', 'Laura Wilson', '456-789-0123', 'laura.wilson@trendsetters.com'),
(5, 'Style Supply Co.', 'David Johnson', '567-890-1234', 'david.johnson@stylesupply.com'),
(6, 'Global Garments', 'Sophia Martinez', '678-901-2345', 'sophia.martinez@globalgarments.com'),
(7, 'Modern Vogue', 'James Lee', '789-012-3456', 'james.lee@modernvogue.com'),
(8, 'Premium Textiles', 'Olivia Taylor', '890-123-4567', 'olivia.taylor@premiumtextiles.com'),
(9, 'Elite Wearhouse', 'Ethan White', '901-234-5678', 'ethan.white@elitewearhouse.com'),
(10, 'Fashion Essentials', 'Emma Harris', '012-345-6789', 'emma.harris@fashionessentials.com'),
(11, 'Clothier Collective', 'Noah Walker', '123-456-7891', 'noah.walker@clothiercollective.com'),
(12, 'Wardrobe World', 'Isabella Young', '234-567-8902', 'isabella.young@wardrobeworld.com'),
(13, 'Style Hub', 'Liam King', '345-678-9013', 'liam.king@stylehub.com'),
(14, 'Trend Supply', 'Ava Wright', '456-789-0124', 'ava.wright@trendsupply.com'),
(15, 'Global Apparel Co.', 'Lucas Hall', '567-890-1235', 'lucas.hall@globalapparel.com'),
(16, 'New Age Fashion', 'Mia Adams', '678-901-2346', 'mia.adams@newagefashion.com'),
(17, 'Chic Suppliers', 'Charlotte Nelson', '789-012-3457', 'charlotte.nelson@chicsuppliers.com'),
(18, 'NextGen Wear', 'Jack Carter', '890-123-4568', 'jack.carter@nextgenwear.com'),
(19, 'Modern Looks', 'Amelia Mitchell', '901-234-5679', 'amelia.mitchell@modernlooks.com'),
(20, 'Premium Apparel', 'Benjamin Perez', '012-345-6780', 'benjamin.perez@premiumapparel.com'),
(21, 'The Style Source', 'Harper Scott', '123-456-7892', 'harper.scott@stylesource.com'),
(22, 'Urban Outfitters', 'Alexander Morris', '234-567-8903', 'alexander.morris@urbanoutfitters.com');

-- Set AUTO_INCREMENT for Purchase Orders Table
ALTER TABLE retail.Purchase_Orders AUTO_INCREMENT = 23;

-- Insert data into Purchase_Orders table
INSERT INTO retail.Purchase_Orders (PO_ID, Supplier_ID, Order_Date, Status)
VALUES
(1, 1, '2024-11-01', 'Pending'),
(2, 2, '2024-11-02', 'Shipped'),
(3, 3, '2024-11-03', 'Delivered'),
(4, 4, '2024-11-04', 'Pending'),
(5, 5, '2024-11-05', 'Cancelled'),
(6, 6, '2024-11-06', 'Pending'),
(7, 7, '2024-11-07', 'Shipped'),
(8, 8, '2024-11-08', 'Delivered'),
(9, 9, '2024-11-09', 'Pending'),
(10, 10, '2024-11-10', 'Shipped'),
(11, 11, '2024-11-11', 'Delivered'),
(12, 12, '2024-11-12', 'Cancelled'),
(13, 13, '2024-11-13', 'Pending'),
(14, 14, '2024-11-14', 'Shipped'),
(15, 15, '2024-11-15', 'Delivered'),
(16, 16, '2024-11-16', 'Pending'),
(17, 17, '2024-11-17', 'Cancelled'),
(18, 18, '2024-11-18', 'Pending'),
(19, 19, '2024-11-19', 'Shipped'),
(20, 20, '2024-11-20', 'Delivered'),
(21, 21, '2024-11-21', 'Pending'),
(22, 22, '2024-11-22', 'Shipped');

-- Set AUTO_INCREMENT for PO_Items Table
ALTER TABLE retail.PO_Items AUTO_INCREMENT = 23;

-- Insert data into PO_Items table
INSERT INTO retail.PO_Items (PO_Item_ID, PO_ID, Product_ID, Quantity, Item_Cost)
VALUES
(1, 1, 1000, 10, 49.99),
(2, 1, 1001, 15, 19.99),
(3, 1, 1002, 8, 39.99),
(4, 2, 1003, 5, 199.99),
(5, 2, 1004, 12, 34.99),
(6, 2, 1005, 20, 24.99),
(7, 3, 1006, 7, 29.99),
(8, 3, 1007, 6, 59.99),
(9, 3, 1008, 4, 74.99),
(10, 4, 1009, 10, 44.99),
(11, 4, 1010, 5, 69.99),
(12, 4, 1011, 14, 29.99),
(13, 5, 1012, 3, 149.99),
(14, 5, 1013, 18, 19.99),
(15, 5, 1014, 22, 29.99),
(16, 6, 1015, 9, 34.99),
(17, 6, 1016, 8, 89.99),
(18, 6, 1017, 25, 24.99),
(19, 7, 1018, 4, 79.99),
(20, 7, 1019, 15, 39.99),
(21, 7, 1020, 10, 19.99),
(22, 8, 1021, 12, 34.99);

-- Set AUTO_INCREMENT for Inventory_Logs Table
ALTER TABLE retail.Inventory_Logs AUTO_INCREMENT = 23;

-- Insert data into Inventory_Logs table
INSERT INTO retail.Inventory_Logs (Log_ID, Product_ID, Change_Type, Quantity_Changed, Date, User_ID)
VALUES
(1, 1000, 'Stock Increase', 50, '2024-01-01 10:00:00', 101),
(2, 1001, 'Stock Decrease', 20, '2024-01-02 11:30:00', 102),
(3, 1002, 'Stock Adjustment', 10, '2024-01-03 14:15:00', 103),
(4, 1003, 'Stock Increase', 25, '2024-01-04 09:45:00', 104),
(5, 1004, 'Stock Decrease', 15, '2024-01-05 12:00:00', 105),
(6, 1005, 'Stock Adjustment', 5, '2024-01-06 16:20:00', 106),
(7, 1006, 'Stock Increase', 40, '2024-01-07 08:30:00', 107),
(8, 1007, 'Stock Decrease', 30, '2024-01-08 17:10:00', 108),
(9, 1008, 'Stock Adjustment', 8, '2024-01-09 13:50:00', 109),
(10, 1009, 'Stock Increase', 60, '2024-01-10 07:00:00', 110),
(11, 1010, 'Stock Decrease', 25, '2024-01-11 18:00:00', 101),
(12, 1011, 'Stock Adjustment', 12, '2024-01-12 15:40:00', 102),
(13, 1012, 'Stock Increase', 30, '2024-01-13 11:25:00', 103),
(14, 1013, 'Stock Decrease', 20, '2024-01-14 10:10:00', 104),
(15, 1014, 'Stock Adjustment', 7, '2024-01-15 09:30:00', 105),
(16, 1015, 'Stock Increase', 45, '2024-01-16 14:00:00', 106),
(17, 1016, 'Stock Decrease', 10, '2024-01-17 12:15:00', 107),
(18, 1017, 'Stock Adjustment', 3, '2024-01-18 16:50:00', 108),
(19, 1018, 'Stock Increase', 50, '2024-01-19 08:00:00', 109),
(20, 1019, 'Stock Decrease', 35, '2024-01-20 17:30:00', 110),
(21, 1020, 'Stock Adjustment', 6, '2024-01-21 15:15:00', 101),
(22, 1021, 'Stock Increase', 55, '2024-01-22 09:45:00', 102);

-- Set AUTO_INCREMENT for Users Table
ALTER TABLE retail.Users AUTO_INCREMENT = 23;

-- Insert data into Users table
INSERT INTO retail.Users (User_ID, Username, Password_Hash, Role)
VALUES
(1, 'johnmatthews', 'hash_1a2b3c4d5e', 'Admin'),
(2, 'janeroberts', 'hash_2b3c4d5e6f', 'Manager'),
(3, 'petermarks', 'hash_3c4d5e6f7g', 'Clerk'),
(4, 'wesleyjohns', 'hash_4d5e6f7g8h', 'Admin'),
(5, 'timothydutton', 'hash_5e6f7g8h9i', 'Manager'),
(6, 'tracysmith', 'hash_6f7g8h9i0j', 'Clerk'),
(7, 'sarahdole', 'hash_7g8h9i0j1k', 'Manager'),
(8, 'peterroney', 'hash_8h9i0j1k2l', 'Clerk'),
(9, 'ronaldoneal', 'hash_9i0j1k2l3m', 'Admin'),
(10, 'rachelharris', 'hash_0j1k2l3m4n', 'Manager'),
(11, 'rossclinton', 'hash_1k2l3m4n5o', 'Clerk'),
(12, 'monicahiwatt', 'hash_2l3m4n5o6p', 'Admin'),
(13, 'edmunoz', 'hash_3m4n5o6p7q', 'Clerk'),
(14, 'mattrogers', 'hash_4n5o6p7q8r', 'Manager'),
(15, 'kylebaxter', 'hash_5o6p7q8r9s', 'Admin'),
(16, 'mandygalleher', 'hash_6p7q8r9s0t', 'Clerk'),
(17, 'charlesbobby', 'hash_7q8r9s0t1u', 'Manager'),
(18, 'johncarlton', 'hash_8r9s0t1u2v', 'Admin'),
(19, 'carloshernandez', 'hash_9s0t1u2v3w', 'Clerk'),
(20, 'stephendiaz', 'hash_0t1u2v3w4x', 'Manager'),
(21, 'patrickmartins', 'hash_1u2v3w4x5y', 'Admin'),
(22, 'janeunderhill', 'hash_2v3w4x5y6z', 'Manager');




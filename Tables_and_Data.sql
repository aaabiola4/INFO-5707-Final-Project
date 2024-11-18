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
(1027, 'Alice', 'Morgan', 'alice.morgan@example.com', '9876543210', 150, '2023-10-01'),
(1028, 'Brian', 'Adams', 'brian.adams@example.com', '1234567890', 250, '2024-02-14'),
(1029, 'Catherine', 'Taylor', 'cat.taylor@example.com', '1122334455', 300, '2024-03-20'),
(1030, 'Derek', 'Wilson', 'derek.wilson@example.com', '6677889900', 400, '2022-08-12'),
(1031, 'Emily', 'Clark', 'emily.clark@example.com', '9988776655', 500, '2021-07-19'),
(1032, 'Frank', 'Green', 'frank.green@example.com', '5544332211', 600, '2023-05-23');

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
(1024, 'Cotton T-Shirt', 'High-quality cotton T-shirt available in multiple sizes.', 12.99, 500, 50, '2023-10-01'),
(1025, 'Running Shoes', 'Lightweight running shoes with superior grip and comfort.', 49.99, 200, 20, '2023-09-15'),
(1026, 'Backpack', 'Durable and spacious backpack suitable for travel and work.', 34.99, 150, 10, '2023-08-20'),
(1027, 'Sunglasses', 'UV-protection polarized sunglasses with stylish frames.', 19.99, 300, 25, '2023-07-10'),
(1028, 'Reusable Water Bottle', 'Eco-friendly stainless steel water bottle, 1L capacity.', 14.99, 400, 30, '2023-06-05'),
(1029, 'Yoga Mat', 'Non-slip yoga mat with extra cushioning for comfort.', 25.99, 100, 15, '2023-05-12'),
(1030, 'Desk Organizer', 'Compact and modern desk organizer with multiple compartments.', 18.99, 250, 20, '2023-04-18'),
(1031, 'Wireless Earbuds', 'Compact Bluetooth earbuds with noise cancellation.', 59.99, 120, 10, '2023-03-25'),
(1032, 'Laptop Stand', 'Adjustable aluminum laptop stand for better ergonomics.', 29.99, 80, 5, '2023-02-15'),
(1033, 'Smartwatch', 'Water-resistant smartwatch with fitness tracking features.', 99.99, 60, 10, '2023-01-30');

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
(121, 1022, '2023-11-05', 150.75, 'Credit Card'),
(122, 1023, '2024-01-15', 300.50, 'Debit Card'),
(123, 1024, '2023-12-20', 120.00, 'PayPal'),
(124, 1025, '2023-11-10', 450.25, 'Cash'),
(125, 1026, '2024-02-09', 90.00, 'Credit Card'),
(126, 1027, '2023-08-15', 220.99, 'Debit Card'),
(127, 1028, '2023-09-25', 310.40, 'PayPal'),
(128, 1029, '2024-03-11', 125.00, 'Cash'),
(129, 1030, '2023-10-19', 175.50, 'Credit Card'),
(130, 1031, '2023-07-04', 250.00, 'Debit Card');

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
(23, 121, 1022, 5, 149.95),
(24, 121, 1023, 2, 99.98),
(25, 122, 1024, 1, 329.99),
(26, 122, 1025, 4, 59.96),
(27, 123, 1026, 3, 89.97),
(28, 123, 1027, 2, 139.98),
(29, 124, 1028, 1, 400.00),
(30, 124, 1029, 2, 59.98),
(31, 125, 1030, 6, 239.94),
(32, 125, 1031, 3, 74.97),
(33, 126, 1032, 2, 179.98),

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
(23, 'Elegant Threads', 'Ella Baker', '345-678-9014', 'ella.baker@elegantthreads.com'),
(24, 'Fashion Unlimited', 'Henry Turner', '456-789-0125', 'henry.turner@fashionunlimited.com'),
(25, 'Top Tier Wear', 'Sofia Rivera', '567-890-1236', 'sofia.rivera@toptierwear.com'),
(26, 'Global Outfitters', 'Matthew Lopez', '678-901-2347', 'matthew.lopez@globaloutfitters.com'),
(27, 'The Wardrobe Co.', 'Emily Morgan', '789-012-3458', 'emily.morgan@wardrobeco.com'),
(28, 'Style Depot', 'Andrew Reed', '890-123-4569', 'andrew.reed@styledepot.com'),
(29, 'Textile Innovations', 'Victoria Powell', '901-234-5670', 'victoria.powell@textileinnovations.com'),
(30, 'Metro Fashions', 'Evelyn Torres', '012-345-6781', 'evelyn.torres@metrofashions.com'),
(31, 'Clothing Solutions', 'Daniel Sanders', '123-456-7893', 'daniel.sanders@clothingsolutions.com'),
(32, 'Luxury Line', 'Zoey Wood', '234-567-8904', 'zoey.wood@luxuryline.com'),
(33, 'TrendShapers', 'Joseph Brooks', '345-678-9015', 'joseph.brooks@trendshapers.com'),
(34, 'Style Networks', 'Abigail Jenkins', '456-789-0126', 'abigail.jenkins@stylenetworks.com'),

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
(23, 23, '2024-11-23', 'Delivered'),
(24, 24, '2024-11-24', 'Cancelled'),
(25, 25, '2024-11-25', 'Pending'),
(26, 26, '2024-11-26', 'Shipped'),
(27, 27, '2024-11-27', 'Delivered'),
(28, 28, '2024-11-28', 'Cancelled'),
(29, 29, '2024-11-29', 'Pending'),
(30, 30, '2024-11-30', 'Shipped'),
(31, 31, '2024-12-01', 'Delivered'),
(32, 32, '2024-12-02', 'Cancelled'),
(33, 33, '2024-12-03', 'Pending'),
(34, 34, '2024-12-04', 'Shipped'),
(35, 35, '2024-12-05', 'Delivered'),

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
(23, 8, 1022, 10, 49.99),
(24, 8, 1023, 15, 19.99),
(25, 9, 1023, 8, 39.99),
(26, 9, 1024, 5, 199.99),
(27, 9, 1025, 12, 34.99),
(28, 10, 1026, 20, 24.99),
(29, 10, 1027, 7, 29.99),
(30, 11, 1028, 6, 59.99),
(31, 11, 1029, 4, 74.99),
(32, 12, 1030, 10, 44.99),
(33, 12, 1031, 5, 69.99),
(34, 13, 1032, 14, 29.99),
(35, 13, 1033, 3, 149.99),
(36, 14, 1034, 18, 19.99),

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
(23, 1022, 'Stock Decrease', 28, '2024-01-23 10:30:00', 103),
(24, 1023, 'Stock Adjustment', 9, '2024-01-24 13:00:00', 104),
(25, 1024, 'Stock Increase', 35, '2024-01-25 08:15:00', 105),
(26, 1000, 'Stock Decrease', 18, '2024-01-26 11:45:00', 106),
(27, 1001, 'Stock Adjustment', 11, '2024-01-27 14:30:00', 107),
(28, 1002, 'Stock Increase', 40, '2024-01-28 09:50:00', 108),
(29, 1003, 'Stock Decrease', 22, '2024-01-29 12:10:00', 109),
(30, 1004, 'Stock Adjustment', 5, '2024-01-30 16:20:00', 110),
(31, 1005, 'Stock Increase', 30, '2024-01-31 07:30:00', 101),
(32, 1006, 'Stock Decrease', 16, '2024-02-01 18:00:00', 102),
(33, 1007, 'Stock Adjustment', 14, '2024-02-02 15:30:00', 103),
(34, 1008, 'Stock Increase', 50, '2024-02-03 09:00:00', 104),
(35, 1009, 'Stock Decrease', 20, '2024-02-04 13:45:00', 105),
(36, 1010, 'Stock Adjustment', 4, '2024-02-05 17:10:00', 106),

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
(23, 'rogerusher', 'hash_3v4w5x6y7a', 'Clerk'),
(24, 'hillaryjosh', 'hash_4w5x6y7a8b', 'Admin'),
(25, 'billyu', 'hash_5x6y7a8b9c', 'Manager'),
(26, 'gladyslee', 'hash_6y7a8b9c0d', 'Clerk'),
(27, 'walshpet', 'hash_7a8b9c0d1e', 'Admin'),
(28, 'sharonwade', 'hash_8b9c0d1e2f', 'Manager'),
(29, 'tomrichards', 'hash_9c0d1e2f3g', 'Clerk'),
(30, 'susanmiller', 'hash_0d1e2f3g4h', 'Admin'),
(31, 'lindarichards', 'hash_1e2f3g4h5i', 'Manager'),
(32, 'michaelsmith', 'hash_2f3g4h5i6j', 'Clerk'),
(33, 'brianscott', 'hash_3g4h5i6j7k', 'Admin'),
(34, 'danieljohnson', 'hash_4h5i6j7k8l', 'Manager'),
(35, 'rebeccawilson', 'hash_5i6j7k8l9m', 'Clerk'),
(36, 'alexandermorris', 'hash_6j7k8l9m0n', 'Admin'),



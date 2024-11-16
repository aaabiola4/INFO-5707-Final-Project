AUTO_INCREMENT value for Customers table
ALTER TABLE retail.Customers AUTO_INCREMENT = 1000;

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

ALTER TABLE retail.Products AUTO_INCREMENT = 1000;

INSERT INTO retail.Products (Product_ID, Product_Name, Description, Price, Stock_Level, Low_Stock_Threshold, Created_Date)
VALUES
(1000, 'Classic Blue Jeans', 'Durable and stylish blue denim jeans', 49.99, 100, 20, '2022-11-15'),
(1001, 'Cotton T-Shirt', 'Soft and breathable cotton t-shirt', 19.99, 150, 30, '2022-01-15'),
(1002, 'Hooded Sweatshirt', 'Comfortable hoodie with front pocket', 39.99, 75, 15, '2024-01-11'),
(1003, 'Leather Jacket', 'Genuine leather jacket with zipper closure', 199.99, 25, 5, '2023-12-02'),
(1004, 'Formal Dress Shirt', 'Slim-fit, wrinkle-free dress shirt', 34.99, 80, 10, '2024-03-15'),
(1005, 'Athletic Shorts', 'Lightweight shorts for sports and leisure', 24.99, 120, 25, '2024-07-25'),
(1006, 'Flannel Shirt', 'Warm and cozy flannel button-up', 29.99, 60, 10, '2022-12-15),
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
(1017, 'Graphic T-Shirt', 'T-shirt with trendy graphic design', 24.99, 130, 25, NOW()),
(1018, 'Raincoat', 'Waterproof and lightweight raincoat', 79.99, 30, 5, '2023-04-15'),
(1019, 'Joggers', 'Comfortable jogger pants with elastic waist', 39.99, 100, 20, '2022-04-25'),
(1020, 'Sun Hat', 'Wide-brimmed hat for sun protection', 19.99, 80, 15, '2023-03-12'),
(1021, 'Denim Shorts', 'Casual denim shorts with rolled hems', 34.99, 120, 25, '2024-02-11'),
(1022, 'Slip Dress', 'Sleek and simple slip dress', 49.99, 50, 10, '2023-08-10'),
(1023, 'Canvas Sneakers', 'Lightweight sneakers for everyday wear', 59.99, 70, 15, '2023-10-05');
   
ALTER TABLE retail.Sales AUTO_INCREMENT = 100;

INSERT INTO retail.Sales (Sales_ID, Customer_ID, Sale_Date, Total_Amount, Payment_Method)
VALUES

(100, 1001, '2024-11-01', 250.00, 'Credit Card'),
    (101, 1002, '2023-11-01', 300.75, 'Debit Card'),
    (102, 1003, '2024-11-02', 150.20, 'Cash'),
    (103, 1004, '2022-11-07', 275.00, 'PayPal'),
    (104, 1005, '2024-02-03', 100.50, 'Credit Card'),
    (105, 1006, '2022-04-03', 400.00, 'Debit Card'),
    (105, 1007, '2024-08-04', 350.00, 'Credit Card'),
    (106, 1008, '2024-11-04', 90.00, 'Cash'),
    (107, 1009, '2023-10-25', 500.00, 'PayPal'),
    (108, 1010, '2024-08-17', 50.25, 'Debit Card'),
    (109, 1011, '2024-06-06', 600.75, 'Credit Card'),
    (110, 1012, '2024-03-16', 45.00, 'Cash'),
    (111, 1013, '2023-07-07', 300.00, 'PayPal'),
    (112, 1014, '2024-04-07', 120.25, 'Credit Card'),
    (113, 1015, '2024-06-08', 250.50, 'Debit Card'),
    (114, 1016, '2024-05-08', 135.75, 'Cash'),
    (115, 1017, '2024-04-09', 400.00, 'PayPal'),
    (116, 1018, '2024-10-09', 200.50, 'Credit Card'),
    (117, 1019, '2023-11-10', 350.75, 'Debit Card'),
    (118, 1020, '2024-01-10', 45.00, 'Cash'),
    (119, 1021, '2022-12-11', 100.00, 'Credit Card'),
    (120, 1022, '2024-10-01', 300.00, 'PayPal');

   INSERT INTO retail.Sales_Items (Sale_Item_ID, Sale_ID, Product_ID, Quantity, Item_Total)
VALUES
(1, 1, 1000, 2, 99.98), -- Sale 1, Product 1000, 2 items
(2, 2, 1001, 1, 19.99), -- Sale 2, Product 1001, 1 item
(3, 3, 1002, 3, 45.75), -- Sale 3, Product 1002, 3 items
(4, 4, 1003, 1, 199.99), -- Sale 4, Product 1003, 1 item
(5, 5, 1004, 4, 139.96), -- Sale 5, Product 1004, 4 items
(6, 6, 1005, 5, 124.95), -- Sale 6, Product 1005, 5 items
(7, 7, 1006, 2, 59.98), -- Sale 7, Product 1006, 2 items
(8, 8, 1007, 1, 59.99), -- Sale 8, Product 1007, 1 item
(9, 9, 1008, 1, 74.99), -- Sale 9, Product 1008, 1 item
(10, 10, 1009, 3, 134.97), -- Sale 10, Product 1009, 3 items
(11, 11, 1010, 2, 139.98), -- Sale 11, Product 1010, 2 items
(12, 12, 1011, 1, 29.99), -- Sale 12, Product 1011, 1 item
(13, 13, 1012, 1, 149.99), -- Sale 13, Product 1012, 1 item
(14, 14, 1013, 4, 79.96), -- Sale 14, Product 1013, 4 items
(15, 15, 1014, 3, 89.97), -- Sale 15, Product 1014, 3 items
(16, 16, 1015, 2, 69.98), -- Sale 16, Product 1015, 2 items
(17, 17, 1016, 1, 89.99), -- Sale 17, Product 1016, 1 item
(18, 18, 1017, 3, 74.97), -- Sale 18, Product 1017, 3 items
(19, 19, 1018, 1, 79.99), -- Sale 19, Product 1018, 1 item
(20, 20, 1019, 2, 79.98), -- Sale 20, Product 1019, 2 items
(21, 21, 1020, 3, 59.97), -- Sale 21, Product 1020, 3 items
(22, 22, 1021, 1, 34.99); -- Sale 22, Product 1021, 1 item


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

INSERT INTO retail.PO_Items (PO_ID, Product_ID, Quantity, Item_Cost)
VALUES
(1, 1000, 10, 49.99),
(1, 1001, 15, 19.99),
(1, 1002, 8, 39.99),
(2, 1003, 5, 199.99),
(2, 1004, 12, 34.99),
(2, 1005, 20, 24.99),
(3, 1006, 7, 29.99),
(3, 1007, 6, 59.99),
(3, 1008, 4, 74.99),
(4, 1009, 10, 44.99),
(4, 1010, 5, 69.99),
(4, 1011, 14, 29.99),
(5, 1012, 3, 149.99),
(5, 1013, 18, 19.99),
(5, 1014, 22, 29.99),
(6, 1015, 9, 34.99),
(6, 1016, 8, 89.99),
(6, 1017, 25, 24.99),
(7, 1018, 4, 79.99),
(7, 1019, 15, 39.99),
(7, 1020, 10, 19.99),
(8, 1021, 12, 34.99);

INSERT INTO retail.Inventory_Logs (Product_ID, Change_Type, Quantity_Changed, Date, User_ID)
VALUES
(1000, 'Stock Increase', 50, '2024-01-01 10:00:00', 101),
(1001, 'Stock Decrease', 20, '2024-01-02 11:30:00', 102),
(1002, 'Stock Adjustment', 10, '2024-01-03 14:15:00', 103),
(1003, 'Stock Increase', 25, '2024-01-04 09:45:00', 104),
(1004, 'Stock Decrease', 15, '2024-01-05 12:00:00', 105),
(1005, 'Stock Adjustment', 5, '2024-01-06 16:20:00', 106),
(1006, 'Stock Increase', 40, '2024-01-07 08:30:00', 107),
(1007, 'Stock Decrease', 30, '2024-01-08 17:10:00', 108),
(1008, 'Stock Adjustment', 8, '2024-01-09 13:50:00', 109),
(1009, 'Stock Increase', 60, '2024-01-10 07:00:00', 110),
(1010, 'Stock Decrease', 25, '2024-01-11 18:00:00', 101),
(1011, 'Stock Adjustment', 12, '2024-01-12 15:40:00', 102),
(1012, 'Stock Increase', 30, '2024-01-13 11:25:00', 103),
(1013, 'Stock Decrease', 20, '2024-01-14 10:10:00', 104),
(1014, 'Stock Adjustment', 7, '2024-01-15 09:30:00', 105),
(1015, 'Stock Increase', 45, '2024-01-16 14:00:00', 106),
(1016, 'Stock Decrease', 10, '2024-01-17 12:15:00', 107),
(1017, 'Stock Adjustment', 3, '2024-01-18 16:50:00', 108),
(1018, 'Stock Increase', 50, '2024-01-19 08:00:00', 109),
(1019, 'Stock Decrease', 35, '2024-01-20 17:30:00', 110),
(1020, 'Stock Adjustment', 6, '2024-01-21 15:15:00', 101),
(1021, 'Stock Increase', 55, '2024-01-22 09:45:00', 102),
(1022, 'Stock Decrease', 12, '2024-01-23 18:10:00', 103);



   
    
    
    

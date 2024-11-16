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
    
    
    

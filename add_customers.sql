AUTO_INCREMENT value for Customers table
ALTER TABLE retail.Customers AUTO_INCREMENT = 10000;

-- Insert records into Customers table
INSERT INTO retail.Customers (Customer_ID, First_Name, Last_Name, Email, Phone, Loyalty_Points, Created_Date)
VALUES 
    (NULL, 'John', 'Matthews', 'johnmatthews@gmail.com', '328321098', 100, '2020-11-15'),
    (NULL, 'Jane', 'Roberts', 'janeroberts@yahoo.com', '322321178', 200, '2022-09-15'),
    (NULL, 'Peter', 'Marks', 'petermarks@gmail.com', '4680117832', 400, '2024-11-20'),
    (NULL, 'Wesley', 'Johns', 'wesleyjohns@gmail.com', '7239560890', 100, '2023-11-03'),
    (NULL, 'Timothy', 'Dutton', 'timdutt@yahoo.com', '2234567441', 200, '2022-11-08'),
    (NULL, 'Tracy', 'Smith', 'smithracy@aol.com', '3239937132', 300, '2021-04-12'),
    (NULL, 'Sarah', 'Dole', 'sdole@gmail.com', '2149972312', 200, '2022-08-05'),
    (NULL, 'Peter', 'Roney', 'roneypete@yahoo.com', '3984110932', 400, '2023-03-15'),
    (NULL, 'Ronald', 'Oneal', 'ronyneal@yahoo.com', '2148732311', 600, '2023-05-15'),
    (NULL, 'Rachel', 'Harris', 'harrrah@gmail.com', '4692149720', 200, '2022-06-15'),
    (NULL, 'Ross', 'Clinton', 'rosston@yahoo.com', '9720730011', 500, '2024-01-15'),
    (NULL, 'Monica', 'Hiwatt', 'monicahi@gmail.com', '5635129912', 300, '2024-01-15'),
    (NULL, 'Ed', 'Munoz', 'munze@aol.com', '7222540321', 100, '2023-12-15'),
    (NULL, 'Matt', 'Rogers', 'rogersmat@gmail.com', '4709827321', 300, '2022-11-15'),
    (NULL, 'Kyle', 'Baxter', 'baxterky@ymail.com', '6452319832', 100, '2023-03-15'),
    (NULL, 'Mandy', 'Galleher', 'mandygell@gmail.com', '3342310932', 600, '2024-09-15'),
    (NULL, 'Charles', 'Bobby', 'bobbych@hotmail.com', '2153356789', 100, '2022-10-15'),
    (NULL, 'John', 'Carlton', 'jocarlton@gmail.com', '21355678980', 400, '2024-07-15'),
    (NULL, 'Carlos', 'Hernadez', 'carlozez@yahoo.com', '4883217211', 200, '2023-11-15'),
    (NULL, 'Stephen', 'Diaz', 'diazstev@yahoo.com', '21476272311', 500, '2024-11-15'),
    (NULL, 'Patrick', 'Martins', 'patmartins@gmail.com', '9543528753', 700, '2022-11-15'),
    (NULL, 'Jane', 'Underhill', 'underhillJ@gmail.com', '4698724422', 300, '2023-11-15'),
    (NULL, 'Roger', 'Usher', 'usherrg@yahoo.com', '4529827612', 100, '2024-11-15'),
    (NULL, 'Hillary', 'Josh', 'joshary@hotmail.com', '9729729800', 600, '2021-11-15'),
    (NULL, 'Bill', 'Yu', 'billyu@gmail.com', '4708738723', 700, '2021-11-15'),
    (NULL, 'Gladys', 'Lee', 'leeglady@yahoo.com', '2149428823', 100, '2022-03-15'),
    (NULL, 'Peter', 'Walsh', 'walshpet@aol.com', '4694567770', 500, '2021-01-11');

-- Reset AUTO_INCREMENT value for Products table
ALTER TABLE retail.Products AUTO_INCREMENT = 1000;

-- Insert records into Products table
INSERT INTO retail.Products (Product_ID, Product_Name, Description, Price, Stock_Level, Low_Stock_Threshold, Created_Date)
VALUES
    (NULL, 'Formal Shirt', 'Slim-fit formal shirt for men, 100% cotton', 29.99, 30, 8, '2022-11-15'),
    (NULL, 'Women\'s Dress', 'Elegant evening dress with lace details', 79.99, 20, 5, '2022-01-15'),
    (NULL, 'Kids\' Sneakers', 'Lightweight sneakers for kids, available in sizes 5-12', 24.99, 40, 10, '2024-01-11'),
    (NULL, 'Blazer Jacket', 'Waterproof winter jacket with thermal lining', 99.99, 15, 3, '2023-12-02'),
    (NULL, 'Hood', 'Adjustable cap with embroidered logo', 9.99, 100, 20, '2024-03-15'),
    (NULL, 'Casual Shirt', 'Slim-fit formal shirt for men, 100% cotton', 29.99, 30, 8, '2024-07-25'),
    (NULL, 'Girls Dress', 'Elegant evening dress with lace details', 79.99, 20, 5, '2022-12-15'),
    (NULL, 'Kids\' Sneakers', 'Lightweight sneakers for kids, available in sizes 5-12', 24.99, 40, 10, '2024-10-15'),
    (NULL, 'Summer Jacket', 'Waterproof winter jacket with thermal lining', 99.99, 15, 3, '2024-11-08'),
    (NULL, 'Cap', 'Adjustable cap with embroidered logo', 9.99, 100, 20, '2024-07-05'),
    (NULL, 'Men\'s Polo Shirt', 'Classic fit polo shirt with short sleeves', 25.99, 40, 5, '2023-11-22'),
    (NULL, 'Women\'s Blouse', 'Chiffon blouse with ruffled sleeves, available in pastel colors', 34.99, 25, 5, '2024-05-18'),
    (NULL, 'Kids\' Pajamas', 'Cotton pajamas set with cartoon print', 19.99, 60, 10, '2024-01-22'),
    (NULL, 'Denim Jacket', 'Unisex denim jacket with vintage wash', 59.99, 15, 3, '2022-04-25'),
    (NULL, 'Sports Leggings', 'High-waisted leggings with moisture-wicking fabric', 29.99, 50, 8, '2024-02-13'),
    (NULL, 'Women\'s Sandals', 'Comfortable flat sandals with cushioned sole', 39.99, 30, 5, '2022-07-02'),
    (NULL, 'Men\'s Sneakers', 'Running shoes with lightweight and breathable material', 79.99, 20, 5, '2023-03-12'),
    (NULL, 'Graphic T-Shirt', 'Unisex cotton T-shirt with trendy graphic print', 19.99, 70, 15, '2024-02-11'),
    (NULL, 'Formal Trousers', 'Tailored fit trousers for office wear', 49.99, 25, 5, '2023-08-10'),
    (NULL, 'Winter Scarf', 'Knitted wool scarf, available in assorted colors', 14.99, 80, 10, '2023-10-05');

-- Reset AUTO_INCREMENT value for Sales table
ALTER TABLE retail.Sales AUTO_INCREMENT = 100;

-- Insert records into Sales table
INSERT INTO retail.Sales (Sales_ID, Customer_ID, Sale_Date, Total_Amount, Payment_Method)
VALUES
    (NULL, 1, '2024-11-01 10:30:00', 120.50, 'Credit Card'),
    (NULL, 2, '2024-11-02 12:45:00', 89.99, 'Cash'),
    (NULL, 3, '2024-11-03 15:10:00', 150.75, 'Debit Card'),
    (NULL, 4, '2024-11-04 09:20:00', 200.00, 'Credit Card'),
    (NULL, 5, '2024-11-05 16:00:00', 75.50, 'Cash'),
    (NULL, 6, '2024-11-06 11:30:00', 45.30, 'Debit Card'),
    (NULL, 7, '2024-11-07 14:10:00', 98.60, 'Credit Card'),
    (NULL, 8, '2024-11-08 13:50:00', 120.20, 'Cash'),
    (NULL, 9, '2024-11-09 17:15:00', 60.00, 'Debit Card'),
    (NULL, 10, '2024-11-10 18:20:00', 175.90, 'Credit Card');

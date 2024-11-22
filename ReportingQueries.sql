-- Inventory Procurement Report
SELECT 
    po.PO_ID,
    s.Supplier_Name,
    po.Order_Date,
    po.Status,
    SUM(pi.Quantity * pi.Item_Cost) AS Total_Cost
FROM 
    retail.Purchase_Orders po
JOIN 
    retail.Suppliers s ON po.Supplier_ID = s.Supplier_ID
JOIN 
    retail.PO_Items pi ON po.PO_ID = pi.PO_ID
GROUP BY 
    po.PO_ID, s.Supplier_Name, po.Order_Date, po.Status
ORDER BY 
    po.Order_Date DESC;
    
-- Order Details
SELECT 
   CONCAT(c.First_Name, ' ', c.Last_Name) AS Customer_Name,
   c.Email AS Email,
   c.Phone AS Phone,
   SUM(s.Total_Amount) AS Total_Amount_Spent,
   SUM(si.Quantity) AS Total_Items_Purchased
FROM 
   retail.Customers c
JOIN 
   retail.Sales s ON c.Customer_ID = s.Customer_ID
JOIN 
   retail.Sales_Items si ON s.Sales_ID = si.Sales_ID
GROUP BY 
   c.First_Name, c.Last_Name, c.Email, c.Phone
ORDER BY 
   Total_Amount_Spent DESC;
   
-- Top 10 Customers Orders
SELECT 
    c.Customer_ID,
    CONCAT(c.First_Name, ' ', c.Last_Name) AS Customer_Name,
    c.Email,
    c.Phone,
    COUNT(s.Sales_ID) AS Total_Orders, 
    SUM(s.Total_Amount)
FROM 
    retail.Customers c
JOIN 
    retail.Sales s ON c.Customer_ID = s.Customer_ID
GROUP BY 
    c.Customer_ID, c.First_Name, c.Last_Name, c.Email, c.Phone, s.Total_Amount
ORDER BY 
    Total_Amount DESC
LIMIT 10;

-- Product Sale Order Amount
SELECT 
	p.Product_ID,
    p.Product_Name,
    SUM(si.Quantity) AS Total_Units_Sold,
    COUNT(DISTINCT si.Sales_ID) AS Total_Sales
FROM 
    retail.Products p
JOIN 
    retail.Sales_Items si ON p.Product_ID = si.Product_ID
GROUP BY 
    p.Product_ID, p.Product_Name
ORDER BY 
    Total_Units_Sold DESC;

-- Total Orders Placed
SELECT 
    COUNT(Sales_ID) AS Total_Orders
FROM 
    retail.Sales;
    
-- Customer Contact Information
SELECT 
    CONCAT(c.First_Name, ' ', c.Last_Name) AS Customer_Name,
    c.Email
FROM 
    retail.Customers c;
    
-- Sale Order Average
SELECT 
    AVG(Total_Amount) AS Average_Order_Value
FROM 
	retail.Sales

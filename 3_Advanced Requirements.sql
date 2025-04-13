-- In your database, create a stored procedure and demonstrate how it runs
-- Submission: Stored procedure to see the qty of items sold within a given time frame. 
 
DELIMITER //
CREATE PROCEDURE ProductSoldBetween (IN start_date DATE, IN end_date DATE)
BEGIN
	SELECT Product_ID, SUM(Qty) AS Total_Qty
	FROM Sales
    WHERE Order_Date >= start_date AND Order_Date <= end_date
    GROUP BY Product_ID
    ORDER BY Total_Qty;
END//
DELIMITER ;

CALL ProductSoldBetween('2024-05-01', '2024-06-01');

SELECT * FROM SALES;

-- updated date TYPE (and format) in DB creation to enable this to work 



-- In your database, create a trigger and demonstrate how it runs
-- Submission: Log table relating to product table to keep track of changes eg. pricing information. 

DROP TABLE ProductLogs;

CREATE TABLE ProductLogs (											-- new table to store log entries
    LogID INT PRIMARY KEY AUTO_INCREMENT,
    LogMessage VARCHAR(255),
    LogDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- INSERT Trigger on Product
DELIMITER //								
CREATE TRIGGER trg_after_product_insert
AFTER INSERT ON Product
FOR EACH ROW
BEGIN
    INSERT INTO ProductLogs (LogMessage)
    VALUES (CONCAT('New product added: ', NEW.Product_Name));
END//

DELIMITER ;

-- Example entries: 

INSERT INTO Product (Product_ID, Supplier_ID, Product_Name, Weight_kg, Purchase_Price, Sales_Price) VALUES (12368, 3009, "Tuna Pasta", 0.3, 2.1, 3.5);
INSERT INTO Product (Product_ID, Supplier_ID, Product_Name, Weight_kg, Purchase_Price, Sales_Price) VALUES (12369, 3006, "Lentil Curry", 0.3, 1.75, 3.1);
INSERT INTO Product VALUES (12370, 3005, "Plain Pasta", 0.3, 0.75, 1);
-- INSERT INTO Product VALUES (12367,3007,'Cherry Energy Gel ',0.060,0.40,0.85);  -- (Can re-add if deleted below) 

SELECT * FROM ProductLogs;

-- UPDATE Trigger on Product 
DELIMITER //
CREATE TRIGGER trg_after_product_update						
AFTER UPDATE ON Product
FOR EACH ROW
BEGIN
    INSERT INTO ProductLogs (LogMessage)
    VALUES (CONCAT('Product Info Updated: ', NEW.Product_Name));
END//

DELIMITER ;
-- Example Entry: 

UPDATE Product SET Sales_Price = 3.5 WHERE Product_ID = 12355;
-- UPDATE Product SET Product_Name = Mixed Bean Stew WHERE Product_ID = 12360);
SELECT * FROM ProductLogs;

-- DELETE Trigger on Product
DELIMITER //
CREATE TRIGGER trg_after_product_delete						
AFTER DELETE ON Product
FOR EACH ROW
BEGIN
    INSERT INTO ProductLogs (LogMessage)
    VALUES (CONCAT('Product Info Deleted: ', OLD.Product_Name));
END//

DELIMITER ;

-- Example Entry: 
DELETE FROM Product WHERE Product_ID = 12367; 				-- Had to have ON DELETE CASCADE on the FK constraint for this to work

SELECT * FROM ProductLogs;

SELECT * FROM Product;


-- In your database, create an event and demonstrate how it runs
-- Submission: One time event showing the tally of sales for specific product (could be adapted to be recurring or emcompass other items...)

SET GLOBAL event_scheduler = ON;

-- DROP TABLE MuesliTally;

CREATE TABLE MuesliTally
	(ID INT NOT NULL AUTO_INCREMENT,
    last_update TIMESTAMP,
    QtySold INT,
    PRIMARY KEY(ID));

SELECT * FROM MuesliTally;

DELIMITER //

CREATE EVENT QTYSOLD
ON SCHEDULE AT NOW() + INTERVAL 5 SECOND  			-- could make this a daily tally (ON SCHEDULE EVERY 1 DAY) 
DO BEGIN
	INSERT INTO MuesliTally (last_update, QtySold)
		SELECT NOW(), SUM(Qty)
        FROM SALES
        WHERE Product_ID = 12347;
END//

DELIMITER ;

SELECT * FROM  MuesliTally;


-- Create a view that uses at least 3-4 base tables; prepare and demonstrate a query that uses the view to produce a logically arranged result set for analysis.
-- Submission 1: vw_product_Info created below with details from the Supplier, Product, and Product details table 

CREATE OR REPLACE VIEW vw_Product_Info 
AS
SELECT
	Product.Product_ID,
	Product.Product_Name, 
    Product.Weight_kg,
	Product.Sales_Price, 
	Supplier.Supplier_Name, 
	Supplier.Inbound_Lead_Time_days,
    Product_details.Meal_type,
    Product_details.Main_Protein,
    Product_details.Allergens
FROM 
	Product

INNER JOIN Supplier 								
ON Product.Supplier_ID = Supplier.Supplier_ID

INNER JOIN Product_details
ON Product.Product_ID = Product_details.Product_ID;

SELECT * FROM vw_Product_Info;							-- This could be used by a sales person when discussing customer requirments/preferences 

-- For example: 										

SELECT * FROM vw_product_Info
WHERE Main_protein = "Chicken";

SELECT * FROM vw_product_Info
WHERE inbound_lead_time_days < 20;

SELECT Product_Name, Sales_price 
FROM vw_product_info 
WHERE sales_price < 3 AND Main_protein = 'none';


-- Submission 2: vw_sales_data view created using Sales, Product, Customers, Delivery_Location, Freight_cost & Freight_provider tables

CREATE OR REPLACE VIEW vw_Sales_Data
AS
SELECT
	Sales.Order_Date,
    Sales.Qty,
    Product.product_Name, 					
    Customers.Customer_name,
    Delivery_Location.Country,
    Freight_cost.Price_per_kg AS Freight_Cost_Per_KG,
    Freight_cost.Lead_Time_days,
    Freight_provider.Freight_Provider_name,
    Sales.Total_Freight_Cost,
    Sales.Total_Goods_cost, 
    Sales.TotalSalesAmount
 
FROM 
	Sales

JOIN Customers 								
ON sales.CustomerID = customers.CustomerID

JOIN Delivery_Location
ON customers.Location_ID = Delivery_Location.Location_ID

JOIN Freight_cost 
ON sales.FreightcostID = Freight_Cost.Freight_cost_ID

JOIN Freight_Provider
ON Freight_cost.Freight_Provider_ID = Freight_Provider.Freight_Provider_ID

JOIN Product
ON sales.Product_ID = Product.Product_ID;

SELECT * FROM vw_sales_data; 													-- Can be used for analysis of past sales


-- Prepare an example query with group by and having to demonstrate how to extract data from your DB for analysis 
-- Submission 1: Finding the total sales per customer ID greater than a given value (eg. £400). 

SELECT 
	s.customerID, 
	ROUND(SUM(s.TotalSalesAmount),2) AS Total_Sales
FROM Sales AS s
GROUP BY s.CustomerID 
HAVING SUM(s.TotalSalesAmount) > 400; 								-- can amend this value as required

-- Submission 2: Finding the total number of sales per customer ID, where there have been more than 3 sales. 
SELECT 
	s.customerID, 
    COUNT(s.TotalSalesAmount) AS Total_Orders
FROM Sales AS s
GROUP BY s.CustomerID 
HAVING COUNT(s.TotalSalesAmount) > 3;
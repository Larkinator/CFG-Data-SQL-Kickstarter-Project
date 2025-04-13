-- Using any type of the joins create a view that combines multiple tables in a logical way
-- Submission: Joining Supplier & Product tables, only showing relevant columns

CREATE OR REPLACE VIEW vw_procurement 
AS
SELECT
	Product.Product_ID,
	Product.Product_Name, 
	Product.Purchase_Price, 
	Supplier.Supplier_Name, 
	Supplier.Location,
	Supplier.Inbound_Lead_Time_days
FROM 
	Product

JOIN Supplier 								
ON Product.Supplier_ID = Supplier.Supplier_ID
WHERE 
	supplier.Location = 'UK';

SELECT * FROM vw_procurement;



-- Requirement: In your database, create a stored function that can be applied to a query in your DB
-- Submission 1: Function to see if customer is eligible for a discount based on total sales Amount of each order

DELIMITER //

CREATE FUNCTION is_eligible(
    TotalSalesAmount INT
) 
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    DECLARE customer_status VARCHAR(20);

    IF TotalSalesAmount > 500 THEN
        SET customer_status = 'YES';
    ELSEIF TotalSalesAmount >= 250 AND TotalSalesAmount <= 500 THEN
        SET customer_status = 'MAYBE';
    ELSEIF TotalSalesAmount < 250 THEN
        SET customer_status = 'NO';
    END IF;

    RETURN customer_status;
END//
  
  DELIMITER ;

SELECT 
    OrderID,
    CustomerID,
    TotalSalesAmount,
    is_eligible(TotalSalesAmount) AS Eligible 
FROM
    sales;


-- Submission 2: Function to show what discount % an order can have based on the order value. 

 DELIMITER // 
 CREATE FUNCTION Discount(
 TotalSalesAmount FLOAT
 )
 RETURNS VARCHAR(30) 
 DETERMINISTIC
  
 BEGIN
	DECLARE Discount_applied VARCHAR(30);
    
    IF TotalSalesAmount >= 500 THEN
		SET Discount_applied = '25%';
	ELSEIF totalsalesamount >= 400 AND totalsalesamount < 500 THEN
		SET Discount_applied = '10%';
	ELSEIF totalsalesamount >=300 AND totalsalesamount < 400 THEN
		SET Discount_applied = '5%';
    END IF;
    
	RETURN Discount_applied;
    
END//

DELIMITER ; 

SELECT 
	customerID, 
    TotalSalesAmount, 
    discount(TotalSalesAmount)	AS DiscountPercent			-- Displaying the results from this function, passing the TotalSalesamount column to the discount function
FROM sales;


-- Submission 3: Same principle as above but this function applies the relevant discount amount. 
 
 DELIMITER // 
 CREATE FUNCTION DiscountAmount(
 TotalSalesAmount FLOAT
 )
 RETURNS FLOAT 
 DETERMINISTIC
  
 BEGIN
	DECLARE Discount_amount FLOAT;
    
    IF TotalSalesAmount >= 500 THEN
		SET Discount_amount = TotalSalesAmount * 0.25;
	ELSEIF totalsalesamount >= 400 AND totalsalesamount < 500 THEN
		SET Discount_amount = TotalSalesAmount * 0.1;
	ELSEIF totalsalesamount >=300 AND totalsalesamount < 400 THEN
		SET Discount_amount = TotalSalesAmount * 0.05;
	ELSE
		SET Discount_amount = 0; 											-- To get the result of 0 rather than NULL in order to get the final sales amount later 
    END IF;
    
	RETURN Discount_amount;
    
END//

DELIMITER ; 

SELECT 
	customerID, 
	TotalSalesAmount, 
    discountAmount(TotalSalesAmount) AS DiscountAmount, 
    ROUND(TotalSalesAmount - discountAmount(TotalSalesAmount),2) AS FinalSalesAmount		-- New column of Final sales amount when the discount is deducted, rounded, and column renamed
FROM sales;


 
-- Prepare an example query with a subquery to demonstrate how to extract data from your DB for analysis 
-- Submission: Finding all customer names from customer table where the total sales amount is above average for this period.  

SELECT Customer_Name
FROM Customers
WHERE CustomerID IN (SELECT CustomerID
						FROM Sales
						WHERE TotalSalesAmount > (SELECT AVG(TotalSalesAmount) FROM Sales));
                        

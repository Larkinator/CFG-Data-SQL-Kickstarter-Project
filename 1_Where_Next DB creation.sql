-- Create relational  DB of your choice with minimum 8 tables 

CREATE DATABASE Where_Next; 

USE Where_Next;

CREATE TABLE Customers (
  CustomerID INT NOT NULL PRIMARY KEY,
  Customer_Name VARCHAR(255),
  Payment_Terms_Days INT,
  Address_Number INT,
  Address_Line_1 VARCHAR(255),
  City VARCHAR(255),
  Post_Code VARCHAR(255),
  Location_ID INT
);
INSERT INTO Customers
  (CustomerID,Customer_Name,Payment_Terms_Days,Address_Number,Address_Line_1,City,Post_Code,Location_ID)
VALUES
  (1001,'The National Three Peaks Challenge',30,12,'Primrose Lane','Cambridge','CB1 2AB',150),
  (1002,'The Ourea Events',30,22,'Mtaa wa Serengeti','Arusha','11101',49),
  (1003,'Adventure Racing',30,8,'Ashford Crescent','Manchester','M1 3ZD',150),
  (1004,'London Marathon Events',60,23,'Elm Street','Bristol','BS3 7HJ',150),
  (1005,'The Great Run Company',30,125,'Maplewood Drive','Springfield','IL 62704',170),
  (1006,'Rock ‘n’ Roll Marathon Series',30,32,'Birch Lane','Vancouver','BC V5K 1Z9',152),
  (1007,'Disney Sports',30,45,'Rue des Lilas','Paris','75012',118),
  (1008,'Spartan Race',30,15,'Rue des Palmiers','Marrakech','40000',35),
  (1009,'Tough Mudder',30,45,'Windmill Close','Birmingham','B5 4FS',150),
  (1010,'Xterra',30,34,'Safari Lane','Nairobi','10010',26),
  (1011,'Ultra Trail du Mont-Blanc (UTMB)',30,17,'Avenue de la Liberté','Lyon','69003',118),
  (1012,'Ironman',30,10,'Via delle Colline','Florence','50123',124),
  (1013,'Cycle Events',30,28,'Boulevard des Étoiles','Bordeaux','33000',118),
  (1014,'TransRockies',30,789,'Pinecrest Avenue','Dallas','TX 75201',170),
  (1015,'Cancer Research UK',30,99,'Rosewood Avenue','London','W1C 4QS',150),
  (1016,'British Heart Foundation',60,17,'Brookfield Drive','Edinburgh','EH2 4RD',150),
  (1017,'Oxfam',60,12,'Calle del Sol','Madrid','28013',145),
  (1018,'G Adventures',30,25,'Elmwood Road','London','SW3 4TD',150),
  (1019,'Intrepid Travel',30,45,'Soi Sukhumvit 21','BangKok','10110',97),
  (1020,'Explore Worldwide',30,32,'Mango Lane','Mumbai','400001',66),
  (1021,'The Duke of Edinburgh’s Award (DofE)',30,34,'Heather Road','Liverpool','L4 6BN',150),
  (1022,'The Scout Association',30,27,'Hilltop Gardens','Oxford','OX1 4AF',150),
  (1023,'Girlguiding UK',30,56,'Oakwood Crescent','Leeds','LS2 8HT',150),
  (1024,'Youth Adventure Trust',30,10,'Maple Street','Glasgow','G3 6DJ',150),
  (1025,'The National Trust',30,15,'Rosewood Avenue','London','W1C 3QS',150),
  (1026,'Camp America',30,742,'Evergreen Terrace','Springfield','IL 62701',170),
  (1027,'Wild Camping',60,18,'Rosebury Avenue','Manchester','M1 2AB',150),
  (1028,'Adventure Trust for Girls',30,8,'Avenida de la Rosa','Barcelona','8015',145);

CREATE TABLE Delivery_Location (		
  Location_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,				
  Country VARCHAR(255),
  Continent VARCHAR(255),
  Delivery_Lead_Time_days INT
);
INSERT INTO Delivery_Location
  (Country,Continent,Delivery_Lead_Time_days)
VALUES
  ('Algeria','Africa',90),
  ('Angola','Africa',90),
  ('Benin','Africa',90),
  ('Botswana','Africa',90),
  ('Burkina Faso','Africa',90),
  ('Burundi','Africa',90),
  ('Cabo Verde (Cape Verde)','Africa',90),
  ('Cameroon','Africa',90),
  ('Central African Republic','Africa',90),
  ('Chad','Africa',90),
  ('Comoros','Africa',90),
  ('Congo, Democratic Republic of the','Africa',90),
  ('Congo, Republic of the','Africa',90),
  ('Djibouti','Africa',90),
  ('Egypt','Africa',90),
  ('Equatorial Guinea','Africa',90),
  ('Eritrea','Africa',90),
  ('Eswatini (Swaziland)','Africa',90),
  ('Ethiopia','Africa',90),
  ('Gabon','Africa',90),
  ('Gambia','Africa',90),
  ('Ghana','Africa',90),
  ('Guinea','Africa',90),
  ('Guinea-Bissau','Africa',90),
  ('Ivory Coast (Côte d''Ivoire)','Africa',90),
  ('Kenya','Africa',90),
  ('Lesotho','Africa',90),
  ('Liberia','Africa',90),
  ('Libya','Africa',90),
  ('Madagascar','Africa',90),
  ('Malawi','Africa',90),
  ('Mali','Africa',90),
  ('Mauritania','Africa',90),
  ('Mauritius','Africa',90),
  ('Morocco','Africa',90),
  ('Mozambique','Africa',90),
  ('Namibia','Africa',90),
  ('Niger','Africa',90),
  ('Nigeria','Africa',90),
  ('Rwanda','Africa',90),
  ('São Tomé and Príncipe','Africa',90),
  ('Senegal','Africa',90),
  ('Seychelles','Africa',90),
  ('Sierra Leone','Africa',90),
  ('Somalia','Africa',90),
  ('South Africa','Africa',90),
  ('South Sudan','Africa',90),
  ('Sudan','Africa',90),
  ('Tanzania','Africa',90),
  ('Togo','Africa',90),
  ('Tunisia','Africa',90),
  ('Uganda','Africa',90),
  ('Zambia','Africa',90),
  ('Zimbabwe','Africa',90),
  ('Afghanistan','Asia',90),
  ('Armenia','Asia',90),
  ('Azerbaijan','Asia',90),
  ('Bahrain','Asia',90),
  ('Bangladesh','Asia',90),
  ('Bhutan','Asia',90),
  ('Brunei','Asia',90),
  ('Cambodia','Asia',90),
  ('China','Asia',90),
  ('Cyprus','Asia',90),
  ('Georgia','Asia',90),
  ('India','Asia',90),
  ('Indonesia','Asia',90),
  ('Iran','Asia',90),
  ('Iraq','Asia',90),
  ('Israel','Asia',90),
  ('Japan','Asia',90),
  ('Jordan','Asia',90),
  ('Kazakhstan','Asia',90),
  ('Kuwait','Asia',90),
  ('Kyrgyzstan','Asia',90),
  ('Laos','Asia',90),
  ('Lebanon','Asia',90),
  ('Malaysia','Asia',90),
  ('Maldives','Asia',90),
  ('Mongolia','Asia',90),
  ('Myanmar (Burma)','Asia',90),
  ('Nepal','Asia',90),
  ('North Korea','Asia',90),
  ('Oman','Asia',90),
  ('Pakistan','Asia',90),
  ('Palestine','Asia',90),
  ('Philippines','Asia',90),
  ('Qatar','Asia',90),
  ('Russia (partly in Asia)','Asia',90),
  ('Saudi Arabia','Asia',90),
  ('Singapore','Asia',90),
  ('South Korea','Asia',90),
  ('Sri Lanka','Asia',90),
  ('Syria','Asia',90),
  ('Taiwan','Asia',90),
  ('Tajikistan','Asia',90),
  ('Thailand','Asia',90),
  ('Timor-Leste (East Timor)','Asia',90),
  ('Turkey (partly in Asia)','Asia',90),
  ('Turkmenistan','Asia',90),
  ('United Arab Emirates','Asia',90),
  ('Uzbekistan','Asia',90),
  ('Vietnam','Asia',90),
  ('Yemen','Asia',90),
  ('Albania','Europe',14),
  ('Andorra','Europe',14),
  ('Austria','Europe',14),
  ('Belarus','Europe',14),
  ('Belgium','Europe',14),
  ('Bosnia and Herzegovina','Europe',14),
  ('Bulgaria','Europe',14),
  ('Croatia','Europe',14),
  ('Cyprus (also in Asia)','Europe',14),
  ('Czech Republic (Czechia)','Europe',14),
  ('Denmark','Europe',14),
  ('Estonia','Europe',14),
  ('Finland','Europe',14),
  ('France','Europe',14),
  ('Germany','Europe',14),
  ('Greece','Europe',14),
  ('Hungary','Europe',14),
  ('Iceland','Europe',14),
  ('Ireland','Europe',14),
  ('Italy','Europe',14),
  ('Kosovo','Europe',14),
  ('Latvia','Europe',14),
  ('Liechtenstein','Europe',14),
  ('Lithuania','Europe',14),
  ('Luxembourg','Europe',14),
  ('Malta','Europe',14),
  ('Moldova','Europe',14),
  ('Monaco','Europe',14),
  ('Montenegro','Europe',14),
  ('Netherlands','Europe',14),
  ('North Macedonia','Europe',14),
  ('Norway','Europe',14),
  ('Poland','Europe',14),
  ('Portugal','Europe',14),
  ('Romania','Europe',14),
  ('Russia (partly in Europe)','Europe',14),
  ('San Marino','Europe',14),
  ('Serbia','Europe',14),
  ('Slovakia','Europe',14),
  ('Slovenia','Europe',14),
  ('Spain','Europe',14),
  ('Sweden','Europe',14),
  ('Switzerland','Europe',14),
  ('Turkey (partly in Europe)','Europe',14),
  ('Ukraine','Europe',14),
  ('United Kingdom','Europe',5),
  ('Vatican City (Holy See)','Europe',14),
  ('Canada','North America',60),
  ('Costa Rica','North America',60),
  ('Cuba','North America',60),
  ('Dominica','North America',60),
  ('Dominican Republic','North America',60),
  ('El Salvador','North America',60),
  ('Grenada','North America',60),
  ('Guatemala','North America',60),
  ('Haiti','North America',60),
  ('Honduras','North America',60),
  ('Jamaica','North America',60),
  ('Mexico','North America',60),
  ('Nicaragua','North America',60),
  ('Panama','North America',60),
  ('Saint Kitts and Nevis','North America',60),
  ('Saint Lucia','North America',60),
  ('Saint Vincent and the Grenadines','North America',60),
  ('Trinidad and Tobago','North America',60),
  ('United States','North America',60),
  ('Argentina','South America',60),
  ('Bolivia','South America',60),
  ('Brazil','South America',60),
  ('Chile','South America',60),
  ('Colombia','South America',60),
  ('Ecuador','South America',60),
  ('Guyana','South America',60),
  ('Paraguay','South America',60),
  ('Peru','South America',60),
  ('Suriname','South America',60),
  ('Uruguay','South America',60),
  ('Venezuela','South America',60),
  ('Australia','Oceania',90),
  ('Fiji','Oceania',90),
  ('Kiribati','Oceania',90),
  ('Marshall Islands','Oceania',90),
  ('Micronesia (Federated States of)','Oceania',90),
  ('Nauru','Oceania',90),
  ('New Zealand','Oceania',90),
  ('Palau','Oceania',90),
  ('Papua New Guinea','Oceania',90),
  ('Samoa','Oceania',90),
  ('Solomon Islands','Oceania',90),
  ('Tonga','Oceania',90),
  ('Tuvalu','Oceania',90),
  ('Vanuatu','Oceania',90);

CREATE TABLE Product (
  Product_ID INT NOT NULL PRIMARY KEY,
  Supplier_ID INT,
  Product_Name VARCHAR(255),
  Weight_kg FLOAT,
  Purchase_Price FLOAT,
  Sales_Price FLOAT
);
INSERT INTO Product
  (Product_ID,Supplier_ID,Product_Name,Weight_kg,Purchase_Price,Sales_Price)
VALUES
  (12345,3001,'Porridge Oats',0.100,0.50,1.50),
  (12346,3001,'Coffee sachet',0.005,0.20,0.45),
  (12347,3001,'Muelsi',0.100,0.50,1.50),
  (12348,3001,'Teabag',0.005,0.20,0.45),
  (12349,3006,'Chicken Curry with Rice ',0.300,1.85,3.25),
  (12350,3006,'Plain Rice ',0.300,0.40,1.00),
  (12351,3006,'Thai Green Curry',0.300,1.25,3.35),
  (12352,3006,'Sweet and Sour Chicken',0.300,1.65,3.30),
  (12353,3006,'Veg Stir Fry',0.300,0.25,3.10),
  (12354,3009,'Mac & Cheese',0.300,0.75,2.50),
  (12355,3009,'Spagetti Bolognese ',0.300,1.50,3.25),
  (12356,3009,'Beef Stroganoff',0.300,1.25,3.15),
  (12357,3011,'Baked Beans',0.300,0.56,1.75),
  (12358,3011,'Baked Beans with Bacon',0.300,0.85,2.00),
  (12359,3012,'Chilli Con Carne',0.300,0.45,1.60),
  (12360,3012,'Black Bean Stew',0.300,0.35,1.50),
  (12361,3004,'Veg Stew',0.300,0.35,2.50),
  (12362,3004,'Chicken Stew',0.300,1.85,3.25),
  (12363,3004,'Sausage Stew',0.300,1.85,3.25),
  (12364,3007,'Fruit & Nut bar',0.050,0.30,0.85),
  (12365,3007,'Orange Electrolyte Powders',0.040,0.20,0.75),
  (12366,3007,'Lemon Electrolyte Powders',0.040,0.20,0.75),
  (12367,3007,'Cherry Energy Gel ',0.060,0.40,0.85);
		
CREATE TABLE Product_Details (
  Product_ID INT,
  Meal_Type VARCHAR(255),
  Main_Protein VARCHAR(255),
  Allergens VARCHAR(255)
);
INSERT INTO Product_Details
  (Product_ID,Meal_Type,Main_Protein,Allergens)
VALUES
  (12345,'Breakfast ','None','None'),
  (12346,'Drink','None','None'),
  (12347,'Breakfast ','None','Milk'),
  (12348,'Drink','None','None'),
  (12349,'Hot Meal ','Chicken','Nuts'),
  (12350,'Side','None','None'),
  (12351,'Hot Meal ','Chicken','Soya'),
  (12352,'Hot Meal ','Chicken','Nuts'),
  (12353,'Hot Meal ','None','None'),
  (12354,'Hot Meal ','None','Milk, gluten, egg'),
  (12355,'Hot Meal ','Beef','Gluten'),
  (12356,'Hot Meal ','Beef','Gluten, Celery'),
  (12357,'Breakfast ','None','None'),
  (12358,'Breakfast ','Pork ','None'),
  (12359,'Hot Meal ','Beef','None'),
  (12360,'Hot Meal ','None','None'),
  (12361,'Hot Meal ','None','Celery'),
  (12362,'Hot Meal ','Chicken','Celery'),
  (12363,'Hot Meal ','Pork','Milk'),
  (12364,'Snack','None','Nuts'),
  (12365,'Drink','None','None'),
  (12366,'Drink','None','None'),
  (12367,'Snack','None','None');

CREATE TABLE Supplier (
  Supplier_ID INT NOT NULL PRIMARY KEY,
  Supplier_Name VARCHAR(255),
  Location VARCHAR(255),
  Inbound_Lead_Time_days INT
);
INSERT INTO Supplier
  (Supplier_ID,Supplier_Name,Location,Inbound_Lead_Time_days)
VALUES
  (3001,'Nestlé Professional','UK',14),
  (3002,'Campbell''s Soup Company','USA',70),
  (3003,'Hormel Foods','UK',15),
  (3004,'ConAgra Brands','France',70),
  (3005,'Kraft Heinz','Spain',24),
  (3006,'Tasty Bite','India',55),
  (3007,'Mountain House','Lithuania',35),
  (3008,'Backpacker''s Pantry','Lithuania',30),
  (3009,'Chef’s Choice','UK',45),
  (3010,'Loma Linda','Thailand',70),
  (3011,'The Good Bean','UK',20),
  (3012,'Goya Foods','Brazil',45),
  (3013,'Luzianne','India',60);

CREATE TABLE Freight_Cost (
  Freight_Cost_ID INT NOT NULL PRIMARY KEY, 					
  Freight_Provider_ID INT,
  Continent VARCHAR(255),
  Price_per_kg FLOAT,
  Lead_Time_days INT
);
INSERT INTO Freight_cost
  (Freight_Cost_ID,Freight_Provider_ID,Continent,Price_per_kg,Lead_Time_days)
VALUES
  (1,2001,'Africa',20.00,2),
  (2,2001,'Asia',20.00,2),
  (3,2001,'Europe',20.00,2),
  (4,2001,'North America',20.00,2),
  (5,2001,'Oceania',20.00,2),
  (6,2002,'Africa',2.40,10),
  (7,2002,'Asia',2.30,12),
  (8,2002,'Europe',1.10,5),
  (9,2002,'North America',1.80,8),
  (10,2002,'Oceania',3.10,20),
  (11,2003,'Europe',10.00,2),
  (12,2003,'North America',10.00,2),
  (13,2004,'Africa',15.00,3),
  (14,2004,'Asia',15.00,3),
  (15,2004,'Europe',15.00,3),
  (16,2004,'North America',15.00,3),
  (17,2004,'Oceania',15.00,3),
  (18,2005,'Africa',8.00,20),
  (19,2005,'Asia',9.00,20),
  (20,2005,'Europe',5.00,10),
  (21,2005,'North America',7.00,15),
  (22,2005,'Oceania',10.00,30),
  (23,2006,'Africa',5.00,15),
  (24,2006,'Asia',5.00,15),
  (25,2007,'Oceania',6.00,12),
  (26,2008,'Europe',1.50,6),
  (27,2008,'North America',4.00,30),
  (28,2009,'Africa',4.00,10),
  (29,2009,'Asia',5.00,12),
  (30,2009,'Europe',3.00,4),
  (31,2009,'North America',5.00,20),
  (32,2009,'Oceania',7.00,25),
  (33,2010,'Africa',5.00,8),
  (34,2010,'Asia',5.00,10),
  (35,2010,'Europe',2.00,5),
  (36,2010,'North America',3.00,15),
  (37,2010,'Oceania',8.00,25),
  (38,2011,'Europe',2.00,6);

CREATE TABLE Freight_Provider (
  Freight_Provider_ID INT NOT NULL PRIMARY KEY,
  Freight_Provider_Name VARCHAR(255)
);
INSERT INTO Freight_Provider
  (Freight_Provider_ID,Freight_Provider_Name)
VALUES
  (2001,'DHL Supply Chain & Global Forwarding'),
  (2002,'Kuehne + Nagel'),
  (2003,'UPS Supply Chain Solutions'),
  (2004,'FedEx Logistics'),
  (2005,'C.H. Robinson'),
  (2006,'XPO Logistics'),
  (2007,'DB Schenker'),
  (2008,'GEODIS'),
  (2009,'DSV'),
  (2010,'Expeditors International'),
  (2011,'DPD');

CREATE TABLE Sales (
  OrderID INT NOT NULL PRIMARY KEY,
  CustomerID INT,
  Order_Date DATE,
  Product_ID INT,
  Qty INT,
  Total_Weight FLOAT,
  FreightCostID INT,											
  Total_Freight_Cost FLOAT,
  Total_goods_cost FLOAT,
  TotalSalesAmount FLOAT
);
INSERT INTO Sales
  (OrderID,CustomerID,Order_Date,Product_ID,Qty,Total_Weight,FreightCostID,Total_Freight_Cost,Total_goods_cost,TotalSalesAmount)
VALUES
  (10001,1019,'2024-01-20',12347,25,2.5,7,5.75,37.50,43.25),
  (10002,1028,'2024-01-15',12357,50,15,38,30.00,87.50,117.50),
  (10003,1010,'2024-02-16',12367,75,4.5,23,22.50,63.75,86.25),
  (10004,1019,'2024-02-25',12359,80,24,19,216.00,128.00,344.00),
  (10005,1017,'2024-03-14',12355,30,9,11,90.00,97.50,187.50),
  (10006,1008,'2024-03-15',12366,500,20,13,300.00,375.00,675.00),
  (10007,1023,'2024-03-20',12351,45,13.5,20,67.50,150.75,218.25),
  (10008,1027,'2024-04-01',12352,55,16.5,26,24.75,181.50,206.25),
  (10009,1006,'2024-04-05',12367,625,37.5,16,562.50,531.25,1093.75),
  (10010,1002,'2024-04-08',12363,35,10.5,28,42.00,113.75,155.75),
  (10011,1023,'2024-04-17',12347,300,30,26,45.00,450.00,495.00),
  (10012,1027,'2024-04-30',12361,15,4.5,35,9.00,37.50,46.50),
  (10013,1002,'2024-05-03',12360,25,7.5,1,150.00,37.50,187.50),
  (10014,1013,'2024-05-04',12366,325,13,8,14.30,243.75,258.05),
  (10015,1027,'2024-05-05',12360,5,1.5,20,7.50,7.50,15.00),
  (10016,1023,'2024-05-06',12356,50,15,8,16.50,157.50,174.00),
  (10017,1027,'2024-05-12',12346,90,0.45,26,0.68,40.50,41.18),
  (10018,1014,'2024-05-21',12353,45,13.5,21,94.50,139.50,234.00),
  (10019,1023,'2024-05-25',12354,100,30,26,45.00,250.00,295.00),
  (10020,1022,'2024-06-04',12358,30,9,11,90.00,60.00,150.00),
  (10021,1027,'2024-06-19',12347,60,6,20,30.00,90.00,120.00),
  (10022,1015,'2024-06-23',12363,50,15,35,30.00,162.50,192.50),
  (10023,1001,'2024-06-25',12349,50,15,15,225.00,162.50,387.50),
  (10024,1021,'2024-06-26',12362,600,180,8,198.00,1950.00,2148.00),
  (10025,1013,'2024-06-30',12364,68,3.4,15,51.00,57.80,108.80);
  
  
-- Set Primary and Foreign Key constraints to create relations between the tables 

ALTER TABLE customers
ADD CONSTRAINT fk_locations
FOREIGN KEY (Location_ID)
REFERENCES Delivery_Location (Location_ID)
ON DELETE CASCADE;								

ALTER TABLE Product
ADD CONSTRAINT FK_supplier
FOREIGN KEY (Supplier_ID)
REFERENCES Supplier (Supplier_ID)
ON DELETE CASCADE;

ALTER TABLE Product_Details
ADD CONSTRAINT fk_product_name
FOREIGN KEY (Product_ID) 
REFERENCES product (Product_ID)
ON DELETE CASCADE;

ALTER TABLE Freight_Cost
ADD CONSTRAINT fk_Freight_provider
FOREIGN KEY (Freight_Provider_ID)
REFERENCES Freight_Provider (Freight_Provider_ID)
ON DELETE CASCADE;

ALTER TABLE Sales
ADD CONSTRAINT fk_customer
FOREIGN KEY (CustomerID)
REFERENCES Customers (CustomerID)
ON DELETE CASCADE;

ALTER TABLE Sales
ADD CONSTRAINT fk_Product
FOREIGN KEY (Product_ID)
REFERENCES Product (Product_ID)
ON DELETE CASCADE;

ALTER TABLE Sales
ADD CONSTRAINT fk_Freight
FOREIGN KEY (FreightCostID)							
REFERENCES FREIGHT_COST (Freight_cost_ID)
ON DELETE CASCADE;
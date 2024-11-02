select* from dbo.superstore_cleaned

CREATE TABLE Customers (
    CustomerID NVARCHAR(10) PRIMARY KEY,
    CustomerName NVARCHAR(255),
    Segment NVARCHAR(50),
    Country NVARCHAR(50),
    City NVARCHAR(100),
    Region NVARCHAR(50),
    PostalCode NVARCHAR(20)
);

CREATE TABLE Orders (
    OrderID NVARCHAR(20) PRIMARY KEY,
    OrderDate DATE,
    ShipDate DATE,
    ShipMode NVARCHAR(50),
    CustomerID NVARCHAR(10),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Products (
    ProductID NVARCHAR(20) PRIMARY KEY,
    ProductName NVARCHAR(255),
    Category NVARCHAR(50),
    SubCategory NVARCHAR(50)
);

CREATE TABLE OrderDetails (
    RowID INT PRIMARY KEY,
    OrderID NVARCHAR(20),
    ProductID NVARCHAR(20),
    Sales DECIMAL(18, 2),
    Quantity INT,
    Discount DECIMAL(5, 2),
    Profit DECIMAL(18, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
INSERT INTO Customers (CustomerID, CustomerName, Segment, Country, City, Region, PostalCode)
SELECT DISTINCT
    Customer_ID,
    Customer_Name,
    Segment,
    Country,
    City,
    Region,
    ISNULL(Postal_Code, '00000') -- Ensure no NULLs in PostalCode
FROM superstore_cleaned;


INSERT INTO Orders (OrderID, OrderDate, ShipDate, ShipMode, CustomerID)
SELECT DISTINCT
    Order_ID,
    CAST(Order_Date AS DATE),
    CAST(Ship_Date AS DATE),
    Ship_Mode,
    Customer_ID
FROM superstore_cleaned;


INSERT INTO Products (ProductID, ProductName, Category, SubCategory)
SELECT DISTINCT
    Product_ID,
    Product_Name,
    Category,
    Sub_Category
FROM superstore_cleaned;


INSERT INTO OrderDetails (RowID, OrderID, ProductID, Sales, Quantity, Discount, Profit)
SELECT
    Row_ID,
    Order_ID,
    Product_ID,
    Sales,
    Quantity,
    Discount,
    Profit
FROM superstore_cleaned;


-- =========================
-- Customers table creation
-- =========================
-- This table stores customer data
CREATE TABLE dbo.Customers
(
    CustomerId   INT PRIMARY KEY,           -- Unique identifier for each customer
    FullName     VARCHAR(100) NOT NULL,      -- Customer full name (cannot be NULL)
    City         VARCHAR(50)  NOT NULL,      -- City where customer lives
    Segment      VARCHAR(20)  NOT NULL,      -- Customer type: Retail or Corporate
    IsActive     BIT          NOT NULL,      -- 1 = Active customer, 0 = Inactive
    CreatedOn    DATE         NOT NULL       -- Date when customer was created
);

-- =========================
-- Orders table creation
-- =========================
-- This table stores order transaction details
CREATE TABLE dbo.Orders
(
    OrderId      INT PRIMARY KEY,            -- Unique order number
    CustomerId   INT NOT NULL,               -- Customer who placed the order
    OrderDate    DATE NOT NULL,              -- Date of order
    Amount       DECIMAL(10,2) NOT NULL,     -- Order value
    Status       VARCHAR(20) NOT NULL,       -- Delivered / Cancelled / Pending
    PaymentMode  VARCHAR(20) NOT NULL,       -- UPI / Card / Cash

    -- Foreign key ensures order is linked to a valid customer
    CONSTRAINT FK_Orders_Customers
        FOREIGN KEY (CustomerId) REFERENCES dbo.Customers(CustomerId)
);

-- =========================
-- Insert customer records
-- =========================
-- Adding sample customers
INSERT INTO dbo.Customers (CustomerId, FullName, City, Segment, IsActive, CreatedOn) VALUES
(101, 'Gopi Suresh',   'Coimbatore', 'Retail',    1, '2025-11-12'),
(102, 'Anita Ravi',    'Chennai',    'Corporate', 1, '2025-10-05'), 
(103, 'Karthik Mohan', 'Bengaluru',  'Retail',    1, '2025-09-15'),
(104, 'Meena Kumar',   'Chennai',    'Retail',    0, '2024-12-20'),
(105, 'Suresh Babu',   'Hyderabad',  'Corporate', 1, '2025-01-10');

-- =========================
-- Insert order records
-- =========================
-- Adding sample orders placed by customers
INSERT INTO dbo.Orders (OrderId, CustomerId, OrderDate, Amount, Status, PaymentMode) VALUES
(5001, 101, '2026-01-10', 1200.00, 'Delivered', 'UPI'),
(5002, 101, '2026-01-15',  850.00, 'Pending',   'Card'),
(5003, 102, '2026-01-05', 5000.00, 'Delivered', 'Card'),
(5004, 103, '2025-12-30',  300.00, 'Cancelled', 'Cash'),
(5005, 105, '2026-01-18', 2500.00, 'Delivered', 'UPI'),
(5006, 102, '2026-01-20', 1500.00, 'Pending',   'UPI');

-- =========================
-- Select all customer data
-- =========================
-- Fetches every column and row from Customers table
SELECT *
FROM dbo.Customers;

-- =========================
-- Select specific columns
-- =========================
-- Retrieves only CustomerId, FullName, and City
SELECT CustomerId, FullName, City
FROM dbo.Customers;

-- =========================
-- Get unique cities
-- =========================
-- DISTINCT removes duplicate city names
SELECT DISTINCT City
FROM dbo.Customers;

-- =========================
-- Column aliasing
-- =========================
-- Renames columns in the output for better readability
SELECT FullName AS CustomerName, City AS CustomerCity
FROM dbo.Customers;

-- =========================
-- Filter customers by city
-- =========================
-- Returns customers who live in Chennai
SELECT *
FROM dbo.Customers
WHERE City = 'Chennai';

-- =========================
-- Filter orders using AND condition
-- =========================
-- Delivered orders paid using UPI
SELECT *
FROM dbo.Orders
WHERE Status = 'Delivered'
  AND PaymentMode = 'UPI';

-- =========================
-- Filter using IN operator
-- =========================
-- Customers from either Chennai or Coimbatore
SELECT *
FROM dbo.Customers
WHERE City IN ('Chennai', 'Coimbatore');

-- =========================
-- Find 2nd highest order amount
-- =========================
-- Inner query gets top 2 highest amounts
-- Outer query picks the smaller of those two (2nd highest)
SELECT TOP 1 *
FROM (
        SELECT TOP 2 *
        FROM dbo.Orders 
        ORDER BY Amount DESC
     ) TT
ORDER BY TT.Amount;

-- =========================
-- LIKE pattern matching
-- =========================
-- Names that:
-- end with 'a'
-- and have at least 2 characters before 'a'
SELECT *
FROM dbo.Customers
WHERE FullName LIKE '%a__';

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2),
    HireDate DATE
);


INSERT INTO Employee (EmployeeID ,FirstName, LastName, Email, Department, Salary, HireDate)
VALUES
(1,'Rahul', 'Sharma', 'rahul.sharma@example.com', 'IT', 55000.00, '2024-01-15'),
(2,'Anita', 'Verma', 'anita.verma@example.com', 'HR', 48000.00, '2023-08-10'),
(3,'Vikas', 'Mehta', 'vikas.mehta@example.com', 'Finance', 62000.00, '2022-11-05'),
(4, 'Priya', 'Singh', 'priya.singh@example.com', 'Marketing', 50000.00, '2024-03-20'),
(5, 'Amit', 'Patel', 'amit.patel@example.com', 'IT', 70000.00, '2021-06-12'),
(6, 'Neha', 'Gupta', 'neha.gupta@example.com', 'HR', 46000.00, '2023-02-18'),
(7, 'Suresh', 'Reddy', 'suresh.reddy@example.com', 'Operations', 52000.00, '2022-09-30'),
(8,'Kavita', 'Nair', 'kavita.nair@example.com', 'Finance', 58000.00, '2021-12-01'),
(9, 'Rohit', 'Agarwal', 'rohit.agarwal@example.com', 'IT', 65000.00, '2023-05-14'),
(10, 'Pooja', 'Mishra', 'pooja.mishra@example.com', 'Marketing', 49000.00, '2024-04-05'),
(11, 'Arjun', 'Kumar', 'arjun.kumar@example.com', 'IT', 72000.00, '2020-10-21'),
(12, 'Sneha', 'Iyer', 'sneha.iyer@example.com', 'HR', 51000.00, '2022-07-19'),
(13, 'Manish', 'Chopra', 'manish.chopra@example.com', 'Sales', 54000.00, '2023-01-11'),
(14,'Deepak', 'Yadav', 'deepak.yadav@example.com', 'Operations', 50000.00, '2024-02-08'),
(15, 'Ritu', 'Bansal', 'ritu.bansal@example.com', 'Finance', 60000.00, '2021-04-17');

SELECT * FROM Employee;
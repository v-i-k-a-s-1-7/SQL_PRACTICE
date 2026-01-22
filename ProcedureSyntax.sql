Create procedure MyPractice
-- Optional Parameters

as
Begin

-- Inside this we have to write all the queries we want to execute 
SELECT * from dbo.Customers;

End

go -- we write go to seperate these two the procedure and execution space 

-- here exec optional even without exec if we only write MyPractice it will work fine
exec MyPractice

--After creating a procedure if we want to change anything in the procedure we will use alter
Alter procedure MyPractice
-- this is the parameter we need to include everytime we run the procedue even if we are using it or not in our query
@City Varchar(50),
@IsActive Bit
as

Begin
-- Inside this we have to write all the queries we want to execute.
SELECT * from dbo.Customers Where City = @City AND IsActive = @IsActive;

End

go 
exec MyPractice 'Coimbatore', '1' -- This is how we pass a Parameter 
-- to pass two parameters we need to seperate them with a coma.
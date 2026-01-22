USE [AdventureWorks2025]

DECLARE @BusinessEntityID INT;

INSERT INTO Person.BusinessEntity
DEFAULT VALUES;

SET @BusinessEntityID = SCOPE_IDENTITY();

INSERT INTO [Person].[Person]
           ([BusinessEntityID]
           ,[PersonType]
           ,[NameStyle]
           ,[Title]
           ,[FirstName]
           ,[MiddleName]
           ,[LastName]
           ,[Suffix]
           ,[EmailPromotion]
           ,[AdditionalContactInfo]
           ,[Demographics]
           ,[rowguid]
           ,[ModifiedDate])
     VALUES
           (@BusinessEntityID
           ,'IN'
           ,0
           ,NULL
           ,'Vikas'
           ,NULL
           ,'Rajak'
           ,NULL
           ,0
           ,NULL
           ,NULL
           ,default
           ,default)
GO



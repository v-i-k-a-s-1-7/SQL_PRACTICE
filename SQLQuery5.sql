-- =============================================
-- Author:		Vikas Rajak
-- Create date: 22-01-2026
-- Description:	Get Customers by their name and city
-- =============================================
ALTER PROCEDURE [dbo].[SP_GetCustomerByNameAndCity] 
	-- Add the parameters for the stored procedure here
	@City Varchar(50),
	@Name Varchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	SELECT * FROM dbo.Customers WHERE FullName = @Name OR City = @City;
END
GO

exec [dbo].[SP_GetCustomerByNameAndCity] 'Chennai','Meena Kumar'
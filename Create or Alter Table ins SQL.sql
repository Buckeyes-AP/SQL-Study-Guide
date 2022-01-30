

CREATE OR ALTER Procedure AddOrderline
	@Product varchar(30) = null, 
	@Quantity int = 1, 
	@Price decimal(7,2) = 10, 
	@orderId int = null
AS 

IF @Product IS NULL 
BEGIN 
Print 'Product is required'; 
RETURN -1;
END
IF @OrderId IS NULL 
BEGIN 
	PRINT 'OrderId is required';
	RETURN -2;
END


INSERT INTO Orderlines
	(Product, Quantity, Price, OrderId) VALUES
	(@Product, @Quantity, @Price, @OrderId);
CREATE TRIGGER DescontarStock ON DetallesVentas
After INSERT 
AS
BEGIN
	
	BEGIN TRY
       
        DECLARE @IDProducto INT, @Cantidad INT;
        SELECT @IDProducto = IDProducto FROM inserted
		SELECT @Cantidad = CantidadVenta FROM inserted;
       
        UPDATE Productos
        SET Stock = Stock - @Cantidad
        WHERE IDProducto = @IDProducto;

	END TRY
	BEGIN CATCH
		IF (@@TRANCOUNT > 0)
		ROLLBACK TRANSACTION
	END CATCH

END
CREATE TRIGGER TR_DevolverStock_CalculoTotal ON DetallesVentas
AFTER DELETE
AS
BEGIN
BEGIN TRY
	 -- VARIABLES DELETED
    DECLARE 
        @IDVenta_Anterior INT,
        @IDProducto_Anterior INT,
        @Cantidad_Anterior INT,
        @Subtotal_Anterior DECIMAL(10,2)

		-- GUARDO LO ELIMINADO
    SELECT 
        @IDVenta_Anterior = deleted.IDVenta,
        @IDProducto_Anterior = deleted.IDProducto,
        @Cantidad_Anterior = deleted.CantidadVenta,
        @Subtotal_Anterior = deleted.SubTotalVenta
    FROM deleted 


  -- AJUSTE STOCK

	UPDATE Productos SET Stock = @StockActual + @Cantidad_Anterior WHERE IDProducto = @IDProducto_Anterior
    
	-- AJUSTE TOTAL VENTA

    UPDATE Ventas
    SET TotalVenta = TotalVenta - @Subtotal_Anterior
    WHERE IDVenta = @IDVenta_Anterior;


	END TRY
	BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION
END CATCH

END
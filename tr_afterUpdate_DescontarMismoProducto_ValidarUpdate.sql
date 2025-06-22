CREATE TRIGGER TR_DescontarStockMismoProducto_ValidarUpdate ON DetallesVentas
AFTER UPDATE
AS
BEGIN
BEGIN TRY

	 -- VARIABLES DELETED
    DECLARE 
        @IDVenta_Anterior INT,
        @IDProducto_Anterior INT,
        @PrecioUnitario_Anterior DECIMAL(10,2),
        @Cantidad_Anterior INT,
        @Subtotal_Anterior DECIMAL(10,2)

		--VARIABLES INSERTED
    DECLARE 
        @IDVenta_Nuevo INT,
        @IDProducto_Nuevo INT,
        @Cantidad_Nueva INT,
        @Subtotal_Nuevo DECIMAL(10,2),
		@PrecioUnitario_Nuevo DECIMAL (10,2)

		-- GUARDO LO ELIMINADO
    SELECT 
        @IDVenta_Anterior = deleted.IDVenta,
        @IDProducto_Anterior = deleted.IDProducto,
        @PrecioUnitario_Anterior = deleted.PrecioUnitario,
        @Cantidad_Anterior = deleted.CantidadVenta,
        @Subtotal_Anterior = deleted.SubTotalVenta
    FROM deleted 

	 -- GUARDO LO INGRESADO
    SELECT 
        @IDVenta_Nuevo = inserted.IDVenta,
        @IDProducto_Nuevo = inserted.IDProducto,
        @Cantidad_Nueva = inserted.CantidadVenta,
        @Subtotal_Nuevo = inserted.SubTotalVenta,
		@PrecioUnitario_Nuevo = inserted.PrecioUnitario
    FROM inserted

    -- Validaciones (SOLO PUEDO MODIFICAR LA CANTIDAD)
    IF @IDVenta_Anterior <> @IDVenta_Nuevo
        BEGIN
            RAISERROR('No se permite cambiar el IDVenta.', 16, 1);
            RETURN
        END

     IF @IDProducto_Anterior <> @IDProducto_Nuevo
        BEGIN
            RAISERROR('No se permite cambiar el IDProducto.', 16, 1);
            RETURN
        END

   IF @PrecioUnitario_Anterior <> @PrecioUnitario_Nuevo
        BEGIN
            RAISERROR('No se permite modificar el PrecioUnitario.', 16, 1);
            RETURN
        END

		IF @Subtotal_Nuevo <> (@Cantidad_Nueva * @PrecioUnitario_Nuevo)
		BEGIN
		  RAISERROR('No se permite modificar el SubTotal de forma manual.', 16, 1);
            RETURN
        END


		DECLARE @Diferencia INT;
    -- AJUSTE STOCK

    SET @Diferencia = @Cantidad_Anterior - @Cantidad_Nueva;


    UPDATE Productos
    SET Stock = Stock + @Diferencia
    WHERE IDProducto = @IDProducto_Anterior;
	END TRY
	BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION
END CATCH

END
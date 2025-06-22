Create PROCEDURE SP_AgregarVenta (
    @FECHA DATE,
    @IDCliente INT,
    @IDFormaDePago INT,
	@IDProducto INT,
	@Cantidad INT
)
AS
BEGIN
    -- Validación de fecha
    IF(@FECHA > GETDATE())  
    BEGIN
        RAISERROR('La fecha de venta no puede ser mayor al día de hoy.', 16, 1);
        RETURN
    END	

    -- Validación de existencia del cliente
    IF @IDCliente IS NOT NULL AND NOT EXISTS (SELECT 1 FROM Clientes WHERE IDCliente = @IDCliente) 
    BEGIN
        RAISERROR('Cliente ingresado inexistente.', 16, 1);
        RETURN
    END
	
    -- Validación de existencia de forma de pago
    IF NOT EXISTS (SELECT 1 FROM FormasDePagos WHERE IDFormaDePago = @IDFormaDePago) 
    BEGIN
        RAISERROR('Forma de pago ingresada inexistente.', 16, 1);
        RETURN
    END

	-- Validacion producto existente

    IF NOT EXISTS (SELECT 1 FROM Productos WHERE IDProducto = @IDProducto) 
    BEGIN
        RAISERROR('Producto ingresado inexistente.', 16, 1);
        RETURN
    END

	-- Validacion Cantidad ingresada
    IF (@Cantidad <= 0)
    BEGIN
        RAISERROR('Cantidad no puede ser 0 o menor', 16, 1);
        RETURN
    END

	DECLARE @StockDisponble INT

	SELECT @StockDisponble = Stock FROM Productos WHERE IDProducto = @IDProducto


	-- VALIDACION CANTIDAD MAYOR A STOCK DISPONIBLE
	IF (@Cantidad > @StockDisponble) 
	BEGIN
		RAISERROR('Cantidad mayor a stock disponible actual',16,1)
		RETURN
	END


       DECLARE @IDVenta INT
    -- Intento de inserción
        BEGIN TRY
	    Begin TRANSACTION
	        INSERT INTO Ventas (FechaVenta, IDCliente, IDFormaDePago, TotalVenta)
	        VALUES (@FECHA, @IDCliente, @IDFormaDePago,0);

		--DEVUELVE EL ULTIMO ID INSERTADO EN VENTA
		SET @IDVenta = SCOPE_IDENTITY()

		--SE AGREGA UN DETALLE 
		EXEC SP_AgregarDetalle @IDVenta,@IDProducto,@Cantidad

	   COMMIT TRANSACTION
    END TRY
   BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION
    RAISERROR('ERROR INESPERADO', 16,1);
   END CATCH

END

-- AGREGAR DETALLE

Create PROCEDURE SP_AgregarDetalle (@IDVenta int,
@IDProducto int,
@Cantidad int
)
AS 
BEGIN

--VALIDACION ID VENTA
IF NOT EXISTS (SELECT 1 FROM Ventas WHERE IDVenta = @IDVenta)
	BEGIN
		RAISERROR('No existe venta con ese id',16,1)
		RETURN
	END

	--VALIDACION ID PRODUCTO

	IF NOT EXISTS (SELECT 1 FROM Productos WHERE IDProducto = @IDProducto)
		BEGIN 
			RAISERROR('No existe producto con ese id',16,1)
			RETURN
		END


		--VALIDACION CANTIDAD
	IF (@Cantidad <= 0) 
	  BEGIN
		RAISERROR('Cantidad no puede ser 0 o negativo',16,1)
		RETURN
	  END

	DECLARE @StockDisponible INT

	SELECT @StockDisponible = Stock FROM Producto WHERE IDProducto = @IDProducto

	IF (@Cantidad > @StockDisponible)
	BEGIN
		RAISERROR('Cantidad mayor a stock disponible actual',16,1)
		RETURN
	END

	BEGIN TRY
		BEGIN TRANSACTION

	DECLARE @Precio DECIMAL(10,2)
	DECLARE @Subtotal Decimal(10,2)

	SELECT @Precio =  PrecioLista FROM Producto WHERE IDProducto = @IDProducto

	SET @Subtotal = @Cantidad * @Precio


	--VALIDACION SI EL PRODUCTO A INGRESAR YA ESTA EN EL DETALLE

	IF EXISTS (SELECT 1 FROM DetallesVentas WHERE IDVenta = @IDVenta AND IDProducto = @IDProducto)
	BEGIN
		Update Ventas
		SET TotalVenta = TotalVenta + @Subtotal
		WHERE IDVenta = @IDVenta

		UPDATE DetallesVentas
		SET CantidadVenta = CantidadVenta +  @Cantidad,
		SubTotalVenta = SubTotalVenta + @Subtotal
		WHERE IDVenta = @IDVenta  AND IDProducto = @IDProducto
		End

		ELSE BEGIN

		-- SI EL PRODUCTO NO ESTA EN EL DETALLE
		UPDATE Ventas 
	SET TotalVenta = TotalVenta + @Subtotal
	WHERE IDVenta = @IDVenta

	Insert INTO DetallesVentas(IDVenta,IDProducto,
	CantidadVenta,PrecioUnitario,SubTotalVenta)
	VALUES (@IDVenta,@IDProducto,@Cantidad,@Precio,@Subtotal)
	END

	COMMIT TRANSACTION
	END TRY
	BEGIN CATCH 

	 IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;
		RAISERROR('ERROR INESPERADO', 16, 1)
	END CATCH

	END

CREATE PROCEDURE SP_VerFacura_VerDetalles (@IDVenta INT)
AS 
BEGIN

	-- VALIDACION SI EXISTE LA VENTA
 IF NOT EXISTS (SELECT 1 FROM Ventas WHERE IDVenta = @IDVenta) 
	BEGIN
		RAISERROR('El ID ingresado no existe en la tabla Venta',16,1)
		RETURN
		END

		BEGIN TRY

	SELECT v.IDVenta, v.FechaVenta, v.IDCliente, f.Pago AS FormaPago, v.TotalVenta
FROM Ventas v
INNER JOIN FormasDePagos f ON v.IDFormaDePago = f.IDFormaDePago
WHERE v.IDVenta = @IDVenta;

-- Detalle de productos
SELECT d.IDProducto, p.NombreProducto, d.CantidadVenta, d.PrecioUnitario, d.SubTotalVenta
FROM DetallesVentas d
INNER JOIN Productos p ON d.IDProducto = p.IDProducto
WHERE d.IDVenta = @IDVenta
END TRY

BEGIN CATCH
	RAISERROR('Error inesperado',16,1)
END CATCH

END